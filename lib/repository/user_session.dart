import 'package:bid_right_mobile/models/login_result.dart';
import 'package:bid_right_mobile/models/phone_verification.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/repository/account_repository.dart';
import 'package:bid_right_mobile/repository/api/account_api.dart';
import 'package:bid_right_mobile/repository/api/auction_api.dart';
import 'package:bid_right_mobile/repository/api/dio_provider.dart';
import 'package:bid_right_mobile/repository/api/filter_api.dart';
import 'package:bid_right_mobile/repository/api/login_api.dart';
import 'package:bid_right_mobile/repository/api/token_supplier.dart';
import 'package:bid_right_mobile/repository/auction_repository.dart';
import 'package:bid_right_mobile/repository/filter_repository.dart';
import 'package:bid_right_mobile/repository/firebase_messaging_repository.dart';
import 'package:bid_right_mobile/repository/live_bid_repository.dart';
import 'package:bid_right_mobile/repository/purchase_profile_repository.dart';
import 'package:dio/dio.dart';

class UserSession {
  final Dio dio;
  final TokenSupplier tokenSupplier;

  UserSession._(this.dio, this.tokenSupplier);

  void initFirebase() {
    _firebaseMessagingRepository.init();
  }

  factory UserSession(
    Credentials credentials,
    LoginApi loginApi, {
    required void Function(String) updateRefreshToken,
  }) {
    final tokenSupplier =
        _createTokenSupplier(loginApi, credentials, updateRefreshToken);
    return UserSession._(_createDio(credentials, tokenSupplier), tokenSupplier);
  }

  static Dio _createDio(Credentials credentials, TokenSupplier tokenSupplier) {
    return createAuthenticatedDio(tokenSupplier: tokenSupplier);
  }

  static TokenSupplier _createTokenSupplier(
    LoginApi loginApi,
    Credentials credentials,
    void Function(String) updateRefreshToken,
  ) {
    String refreshToken = credentials.refreshToken!;
    return TokenSupplier(
      () async {
        final result = await loginApi.loginWithToken(refreshToken);
        return result.when(
          success: (credentials) {
            final newRefreshToken = credentials.refreshToken;
            if (newRefreshToken != null) {
              refreshToken = newRefreshToken;
              updateRefreshToken(newRefreshToken);
            }
            return credentials;
          },
          needs2FA: (_, __, ___) => throw 'The server is requiring 2FA for '
              'an existing connection.  This should never happen.',
          connectionFailure: (error) => throw error,
          badCredentials: (error) => throw error,
          otherError: (error) => throw error,
        );
      },
      initialToken: credentials.token,
    );
  }

  Future<Result<PhoneVerificationToken>> verifyPrimaryPhone() =>
      _accountApi.verifyPrimaryPhone();

  late final _auctionApi = AuctionApi(dio);

  late final auctionRepository = AuctionRepository(_auctionApi);

  late final _accountApi = AccountApi(dio);

  late final _filterApi = FilterApi(dio);

  late final accountRepository = AccountRepository(_accountApi);

  late final filterRepository = FilterRepository(_filterApi);

  late final purchaseProfileRepository = PurchaseProfileRepository(_accountApi);

  late final liveBiddingRepository = LiveBiddingRepository(tokenSupplier);

  late final _firebaseMessagingRepository = FirebaseMessagingRepository(accountRepository);

  void dispose() {
    dio.close();
    auctionRepository.dispose();
    accountRepository.dispose();
    filterRepository.dispose();
    purchaseProfileRepository.dispose();
    liveBiddingRepository.dispose();
    _firebaseMessagingRepository.dispose();
  }
}
