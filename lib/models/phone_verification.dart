import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_verification.freezed.dart';

part 'phone_verification.g.dart';

@freezed
class PhoneVerificationToken with _$PhoneVerificationToken {
  const PhoneVerificationToken._();

  const factory PhoneVerificationToken({
    required int id,
    required String number,
    required DateTime expirationDate,
  }) = _PhoneVerificationToken;

  factory PhoneVerificationToken.fromJson(Map<String, dynamic> json) =>
      _$PhoneVerificationTokenFromJson(json);
}
