import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticator.freezed.dart';

part 'authenticator.g.dart';

@freezed
class Authenticator with _$Authenticator {
  const Authenticator._();

  const factory Authenticator({
    required String qrCodeImageUrl,
    required String manualEntrySetupCode,
  }) = _Authenticator;

  factory Authenticator.fromJson(Map<String, dynamic> json) =>
      _$AuthenticatorFromJson(json);
}
