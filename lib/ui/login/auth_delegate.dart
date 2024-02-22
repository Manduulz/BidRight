import 'package:bid_right_mobile/repository/user_manager.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';

class FlutterLocalAuthDelegate extends LocalAuthDelegate {
  @override
  Future<AuthResult> authorize(LocalAuthReason reason) async {
    final localAuth = LocalAuthentication();

    bool canCheckBiometrics = await localAuth.canCheckBiometrics;
    if (!canCheckBiometrics) return AuthResult.impossible;

    final biometricTypes = await localAuth.getAvailableBiometrics();
    final reasonText = biometricTypes.contains(BiometricType.face)
        ? 'Face ID is used for quick authorization'
        : 'Fingerprint is used for quick authorization';

    try {
      return (await localAuth.authenticate(
        localizedReason: reasonText,
        authMessages: [_androidAuthMessages(reason)],
        options: AuthenticationOptions(
          biometricOnly: true,
          useErrorDialogs: reason == LocalAuthReason.saveCredentials,
        ),
      ))
          ? AuthResult.authorized
          : AuthResult.unauthorized;
    } on PlatformException {
      return AuthResult.unauthorized;
    }
  }

  AndroidAuthMessages _androidAuthMessages(LocalAuthReason reason) {
    switch(reason) {
      case LocalAuthReason.saveCredentials:
        return const AndroidAuthMessages(signInTitle: 'Save credentials');
      case LocalAuthReason.useCredentials:
        return const AndroidAuthMessages(signInTitle: 'Login with biometrics');
    }
  }
}