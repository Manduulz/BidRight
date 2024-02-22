import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_verify.freezed.dart';

part 'account_verify.g.dart';

@freezed
class AccountVerifyResponse with _$AccountVerifyResponse {
  const AccountVerifyResponse._();

  const factory AccountVerifyResponse({
    @Default(false) bool isVerified,
    @Default([]) List<String> phones,
  }) = _AccountVerifyResponse;

  factory AccountVerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountVerifyResponseFromJson(json);
}
