import 'package:bid_right_mobile/models/login_result.dart';
import 'package:bid_right_mobile/repository/api/login_api.dart';
import 'package:bid_right_mobile/repository/login_persistence.dart';
import 'package:bid_right_mobile/repository/user_session.dart';
import 'package:flutter/foundation.dart';

class UserManager {
  final LoginApi _api;

  final LoginPersistence _loginPersistence;

  final LocalAuthDelegate _localAuthDelegate;

  final ValueNotifier<UserSession?> _userSession = ValueNotifier(null);

  UserManager(this._api, this._loginPersistence, this._localAuthDelegate);

  ValueListenable<UserSession?> get userSession => _userSession;

  Future<bool> hasSavedCredentials() => _loginPersistence.isLoggedIn();

  Future<LoginResult> login(
    String username,
    String password,
    bool rememberMe,
  ) async {
    final result = await _api.login(username: username, password: password);
    return result.maybeWhen(
        success: (credentials) async {
          final authResult = rememberMe
              ? await _localAuthDelegate
                  .authorize(LocalAuthReason.saveCredentials)
              : AuthResult.unauthorized;
          _initUserSession(
            credentials,
            saveCredentials: authResult == AuthResult.authorized,
          );
          return result.withoutCredentials();
        },
        needs2FA: (credentials, _, __) async {
          _initUserSession(
            credentials,
            saveCredentials: false,
            loginComplete: false,
          );
          return result;
        },
        orElse: () => result);
  }

  Future<AuthResult> loginWithSavedCredentials() async {
    final token = await _loginPersistence.getRefreshToken();
    if (token == null) return AuthResult.impossible;

    final shouldUseCredentials =
        await _localAuthDelegate.authorize(LocalAuthReason.useCredentials);
    if (shouldUseCredentials != AuthResult.authorized) {
      return shouldUseCredentials;
    }

    final result = await _api.loginWithToken(token);
    return result.maybeWhen(
      success: (credentials) {
        _initUserSession(credentials);
        return AuthResult.authorized;
      },
      orElse: () => AuthResult.unauthorized,
    );
  }

  Future<LoginResult> twoFactorLogin({
    required String refreshToken,
    int? verificationId,
    required String verificationCode,
    required bool rememberMe,
  }) async {
    final result = await _api.login2FA(
      refreshToken: refreshToken,
      verificationCode: verificationCode,
      verificationId: verificationId,
    );

    return result.maybeWhen(
        success: (credentials) async {
          final authResult = rememberMe
              ? await _localAuthDelegate
                  .authorize(LocalAuthReason.saveCredentials)
              : AuthResult.unauthorized;
          _initUserSession(credentials,
              saveCredentials: authResult == AuthResult.authorized);
          return result.withoutCredentials();
        },
        orElse: () => result);
  }

  void _initUserSession(
    Credentials credentials, {
    bool saveCredentials = true,
    bool loginComplete = true,
  }) {
    final session = UserSession(credentials, _api,
        updateRefreshToken:
            saveCredentials ? _loginPersistence.setRefreshToken : (_) {});

    if (loginComplete) {
      session.initFirebase();
    }

    _userSession.value = session;

    final token = credentials.refreshToken;
    if (saveCredentials && token != null) {
      _loginPersistence.setRefreshToken(token);
    }

    if (!saveCredentials) {
      _loginPersistence.logout();
    }
  }

  void logout() {
    _userSession.value?.dispose();
    _userSession.value = null;
  }
}

abstract class LocalAuthDelegate {
  Future<AuthResult> authorize(LocalAuthReason reason);
}

enum LocalAuthReason { saveCredentials, useCredentials }

enum AuthResult { impossible, unauthorized, authorized }
