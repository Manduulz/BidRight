import 'dart:io';

import 'package:bid_right_mobile/models/account_verify.dart';
import 'package:bid_right_mobile/models/api/bidder.dart';
import 'package:bid_right_mobile/models/api/locked_funds.dart';
import 'package:bid_right_mobile/models/api/notification.dart';
import 'package:bid_right_mobile/models/api/purchase_profile.dart';
import 'package:bid_right_mobile/models/bidder.dart';
import 'package:bid_right_mobile/models/linked_account.dart';
import 'package:bid_right_mobile/models/locked_funds.dart';
import 'package:bid_right_mobile/models/notification_settings.dart';
import 'package:bid_right_mobile/models/phone_verification.dart';
import 'package:bid_right_mobile/models/purchase_profile.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/models/authenticator.dart';
import 'package:bid_right_mobile/repository/api/error_wrapper.dart';
import 'package:dio/dio.dart';

class AccountApi {
  final Dio _dio;

  AccountApi(this._dio);

  Future<Result<Bidder>> getBidderDetails() => wrapError(() async {
        final response = await _dio.get('/api/bidders');
        return BidderDto.fromJson(response.data).toDomain();
      });

  Future<Result<void>> updatePersonalInfo(PersonalInfo personalInfo) {
    return wrapError(() => _dio.put(
          '/api/bidders',
          data: personalInfo.toJson(),
        ));
  }

  Future<Result<AccountVerifyResponse>> getLinkedAccountPhones(int accountId) {
    return wrapError(() async {
      final response = await _dio.put('api/accounts/$accountId/verifybidder');
      return AccountVerifyResponse.fromJson(response.data);
    });
  }

  Future<Result<void>> setPrimaryPhone(String phoneNumber) {
    return wrapError(() => _dio.put('/api/bidderphones/$phoneNumber'));
  }

  Future<Result<PhoneVerificationToken>> getPhoneVerificationToken({
    int? accountId,
    required String phoneNumber,
  }) {
    return wrapError(() async {
      final response = await _dio.post('api/bidderphones/verification', data: {
        if (accountId != null) 'accountId': accountId,
        'number': phoneNumber,
      });
      return PhoneVerificationToken.fromJson(response.data);
    });
  }

  Future<Result<void>> addPhone(String phone) {
    return wrapError(() => _dio.post(
          'api/bidderphones',
          data: {'number': phone},
        ));
  }

  Future<Result<void>> removePhone(String phone) {
    return wrapError(() => _dio.delete('api/bidderphones/$phone'));
  }

  Future<Result<void>> verifyPhoneToken(
      {required int tokenId, required String code}) {
    return wrapError(() => _dio
        .post('api/bidderphones/verification/$tokenId', data: {'Code': code}));
  }

  Future<Result<PhoneVerificationToken>> verifyPrimaryPhone() =>
      wrapError(() async {
        final response = await _dio.get('api/bidderverify/sms');
        return PhoneVerificationToken.fromJson(response.data);
      });

  Future<Result<List<PurchaseProfile>>> getPurchaseProfiles() =>
      wrapError(() async {
        final response = await _dio.get<List>('api/purchaseprofiles');
        return response.data!
            .map((e) => PurchaseProfileDto.fromJson(e).toPurchaseProfile())
            .toList();
      });

  Future<Result<void>> addPurchaseProfile(PurchaseProfile profile) =>
      wrapError(() => _dio.post('api/purchaseprofiles',
          data:
              PurchaseProfileUpdateDto.fromPurchaseProfile(profile).toJson()));

  Future<Result<void>> updatePurchaseProfile(PurchaseProfile profile) =>
      wrapError(() => _dio.put('api/purchaseprofiles/${profile.id}',
          data:
              PurchaseProfileUpdateDto.fromPurchaseProfile(profile).toJson()));

  Future<Result<void>> deletePurchaseProfile({required int id}) =>
      wrapError(() => _dio.delete('api/purchaseprofiles/$id'));

  Future<Result<String>> createLinkToken() => wrapError(() async {
        final response = await _dio.post('/api/accounts/linktoken', data: {
          if (Platform.isAndroid) 'androidPackageName': 'com.tjsc.bidright',
        });
        return response.data['linkToken'];
      });

  Future<Result<List<AccountLink>>> getLinkedAccounts() => wrapError(() async {
        final response = await _dio.get<List>('/api/accounts/bidder');
        return response.data!.map((e) => AccountLink.fromJson(e)).toList();
      });

  Future<Result<List<AccountLink>>> linkAccounts({
    required String publicToken,
    required List<String> accountIds,
  }) =>
      wrapError(() async {
        final response = await _dio.post<List>('/api/accounts/bidder', data: {
          'publicToken': publicToken,
          'accountIds': accountIds,
        });
        return response.data!.map((e) => AccountLink.fromJson(e)).toList();
      });

  Future<Result<void>> unlinkAccount({
    required int bidderId,
    required int accountId,
  }) {
    return wrapError(() => _dio.put('/api/accounts/$accountId/$bidderId'));
  }

  Future<Result<void>> refreshLinkedAccountBalance() {
    return wrapError(() => _dio.get('/api/accounts/refreshaccounts'));
  }

  Future<Result<LockedFundsSummary>> getLockedFundsReasons() {
    return wrapError(() async {
      final response = await _dio.get('/api/bidders/lockedfunds');
      return LockedFundsSummaryDto.fromJson(response.data).toModel();
    });
  }

  Future<Result<void>> updateFirebaseToken(String token) {
    return wrapError(() =>
        _dio.put('updatepushnotificationkey/${Uri.encodeComponent(token)}'));
  }

  Future<Result<List<NotificationSetting>>> loadNotificationSettings() {
    return wrapError(() async {
      final response = await _dio.get<List>('/api/notifications/settings');
      return response.data!
          .map(
              (e) => NotificationSettingDto.fromJson(e).toNotificationSetting())
          .where((e) => e.notification != NotificationEventType.other)
          .toList();
    });
  }

  Future<Result<void>> updateSubscription({
    required FullNotificationType type,
    required bool isSubscribed,
  }) =>
      wrapError(() {
        final path = isSubscribed
            ? 'api/notifications/settings/subscribe'
            : 'api/notifications/settings/unsubscribe';
        return _dio.put(path, data: type.toJson());
      });

  Future<Result<Authenticator>> addAuthenticator() {
    return wrapError(() async {
      final result = await _dio.put('api/bidders/authenticator');
      return Authenticator.fromJson(result.data);
    });
  }

  Future<Result<void>> removeAuthenticator() {
    return wrapError(() => _dio.delete('api/bidders/authenticator'));
  }
}
