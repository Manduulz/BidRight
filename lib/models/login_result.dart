import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_result.freezed.dart';

// ignore_for_file: invalid_annotation_target

@Freezed()
class LoginResult with _$LoginResult {
  const LoginResult._();

  const factory LoginResult.success({
    required Credentials credentials,
  }) = _LoginSuccess;

  const factory LoginResult.needs2FA({
    required Credentials credentials,
    required bool hasAuthenticator,
    required String phone,
  }) = _LoginNeeds2FA;

  const factory LoginResult.badCredentials(Object error) = _BadCredentials;

  const factory LoginResult.connectionFailure(Object error) =
      _ConnectionFailure;

  const factory LoginResult.otherError(Object error) = _OtherError;

  factory LoginResult.fromJson(Map<String, dynamic> json) {
    final credentials = Credentials.fromJson(json);

    if (json['required2FA'] == true) {
      return LoginResult.needs2FA(
        credentials: credentials,
        hasAuthenticator: json['configuredGoogleAuth'] ?? false,
        phone: json['phone'] as String,
      );
    } else {
      return LoginResult.success(credentials: credentials);
    }
  }

  bool get isSuccessful => this is _LoginSuccess;

  LoginResult withoutCredentials() => maybeMap(
      success: (_) =>
          const LoginResult.success(credentials: Credentials.empty()),
      needs2FA: (result) =>
          result.copyWith(credentials: const Credentials.empty()),
      orElse: () => this);
}

class Credentials {
  final String token;
  final String? refreshToken;

  const Credentials(this.token, this.refreshToken);

  const Credentials.empty()
      : token = '',
        refreshToken = null;

  Credentials.fromJson(Map<String, dynamic> json)
      : token = json['access_token'],
        refreshToken = json['refresh_token'];
}
