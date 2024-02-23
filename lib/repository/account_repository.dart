import 'dart:async';

import 'package:bid_right_mobile/models/account_verify.dart';
import 'package:bid_right_mobile/models/authenticator.dart';
import 'package:bid_right_mobile/models/bidder.dart';
import 'package:bid_right_mobile/models/linked_account.dart';
import 'package:bid_right_mobile/models/locked_funds.dart';
import 'package:bid_right_mobile/models/notification_settings.dart';
import 'package:bid_right_mobile/models/phone_verification.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/repository/api/account_api.dart';
import 'package:plaid_flutter/plaid_flutter.dart';
import 'package:rxdart/rxdart.dart';

class AccountRepository {
  final AccountApi _api;

  AccountRepository(this._api) {
    _plaidSubscription = PlaidLink.onSuccess.listen(_onLinkSuccess);
  }

  late final StreamSubscription _plaidSubscription;

  final _bidderDetailSubject = BehaviorSubject<Bidder>();

  ValueStream<Bidder> get bidderDetail => _bidderDetailSubject.stream;

  final _linkedAccountsSubject = BehaviorSubject<List<AccountLink>>();

  ValueStream<List<AccountLink>> get linkedAccounts =>
      _linkedAccountsSubject.stream;

  Future<void> loadBidderDetail() async {
    final result = await _api.getBidderDetails();
    result.join(
        onSuccess: _bidderDetailSubject.add,
        onFailure: (_) {
          // TODO: handle error
        });
  }

  Future<Result<void>> updatePersonalInfo(PersonalInfo personalInfo) async {
    final result = await _api.updatePersonalInfo(personalInfo);
    if (result is Success) {
      _bidderDetailSubject.value =
          _bidderDetailSubject.value.copyWith(personalInfo: personalInfo);
    }
    return result;
  }

  Future<void> refreshLinkedAccounts() async {
    final result = await _api.refreshLinkedAccountBalance();
    if (result is Success) {
      await loadBidderDetail();
    }
  }

  Future<Result<AccountVerifyResponse>> getLinkedAccountPhones(
      int accountId) async {
    final result = await _api.getLinkedAccountPhones(accountId);
    result.join(
        onSuccess: (value) {
          if (value.isVerified) {
            _bidderDetailSubject.value =
                _bidderDetailSubject.value.copyWith(isVerified: true);
          }
        },
        onFailure: (_) {});
    return result;
  }

  Future<void> setPrimaryPhone(String phoneNumber) async {
    final result = await _api.setPrimaryPhone(phoneNumber);
    if (result is Success) {
      final phones = _bidderDetailSubject.value.phones
          .map((e) => e.copyWith(isPrimary: e.number == phoneNumber))
          .toList();

      _bidderDetailSubject.value =
          _bidderDetailSubject.value.copyWith(phones: phones);
    }
  }

  Future<Result<void>> addPhone(String number) async {
    final result = await _api.addPhone(number);
    if (result is Success) {
      final phones = [
        ..._bidderDetailSubject.value.phones,
        Phone(number: number, isPrimary: false),
      ];

      _bidderDetailSubject.value =
          _bidderDetailSubject.value.copyWith(phones: phones);
    }

    return result;
  }

  Future<Result<void>> removePhone(String number) async {
    final result = await _api.removePhone(number);
    if (result is Success) {
      final phones = _bidderDetailSubject.value.phones
          .where((element) => element.number != number)
          .toList(growable: false);

      _bidderDetailSubject.value =
          _bidderDetailSubject.value.copyWith(phones: phones);
    }

    return result;
  }

  Future<Result<PhoneVerificationToken>> getPhoneVerificationToken(
      {int? accountId, required String phoneNumber}) async {
    return _api.getPhoneVerificationToken(
        accountId: accountId, phoneNumber: phoneNumber);
  }

  Future<Result<void>> verifyPhoneToken(
      {required PhoneVerificationToken token, required String code}) async {
    final result = await _api.verifyPhoneToken(tokenId: token.id, code: code);
    if (result is Success) {
      _bidderDetailSubject.value = _bidderDetailSubject.value.copyWith(phones: [
        for (final phone in _bidderDetailSubject.value.phones)
          phone.number == token.number
              ? phone.copyWith(verifiedDate: DateTime.now())
              : phone,
      ]);
    }
    return result;
  }

  Future<void> loadLinkedAccounts() async {
    final result = await _api.getLinkedAccounts();
    result.join(onSuccess: _linkedAccountsSubject.add, onFailure: (_) {});
  }

  Future<void> linkAccount() async {
    final tokenResult = await _api.createLinkToken();

    await tokenResult.join(
        onSuccess: (token) async {
          await PlaidLink.open(
            configuration: LinkTokenConfiguration(token: token),
          );
        },
        onFailure: (_) => null);
  }

  Future<void> _onLinkSuccess(LinkSuccess linkSuccess) async {
    final result = await _api.linkAccounts(
        publicToken: linkSuccess.publicToken,
        accountIds: linkSuccess.metadata.accounts.map((e) => e.id).toList());

    result.join(onSuccess: (accounts) {
      _linkedAccountsSubject.value = accounts;
      loadBidderDetail();
    }, onFailure: (_) {
      // TODO: handle error.
    });
  }

  Future<Result<void>> unlinkAccount(int id) async {
    final result = await _api.unlinkAccount(
      bidderId: bidderDetail.value.id,
      accountId: id,
    );
    loadLinkedAccounts();
    loadBidderDetail();
    return result;
  }

  Future<Result<LockedFundsSummary>> getLockedFundsReasons() {
    return _api.getLockedFundsReasons();
  }

  Future<Result<void>> updateFirebaseToken(String token) =>
      _api.updateFirebaseToken(token);

  Future<Result<List<NotificationSetting>>> loadNotificationSettings() =>
      _api.loadNotificationSettings();

  Future<Result<void>> updateNotificationSubscription({
    required FullNotificationType type,
    required bool isSubscribed,
  }) {
    return _api.updateSubscription(type: type, isSubscribed: isSubscribed);
  }

  Future<Result<Authenticator>> addAuthenticator() async {
    final result = await _api.addAuthenticator();
    if (result is Success && _bidderDetailSubject.hasValue) {
      _bidderDetailSubject.value =
          _bidderDetailSubject.value.copyWith(hasAuthenticator: true);
    }
    return result;
  }

  Future<Result<void>> removeAuthenticator() async {
    final result = await _api.removeAuthenticator();
    if (result is Success && _bidderDetailSubject.hasValue) {
      _bidderDetailSubject.value =
          _bidderDetailSubject.value.copyWith(hasAuthenticator: false);
    }
    return result;
  }

  void dispose() {
    _bidderDetailSubject.close();
    _linkedAccountsSubject.close();
    _plaidSubscription.cancel();
  }
}
