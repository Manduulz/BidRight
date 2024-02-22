import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/phone_verification.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_verify_state.freezed.dart';

@freezed
class PhoneVerifyState with _$PhoneVerifyState {
  const PhoneVerifyState._();

  const factory PhoneVerifyState({
    @Default(Uninitialized()) LoadingState<PhoneVerificationToken> token,
    @Default('') String verificationCode,
    @Default(VerificationState.unverified()) VerificationState verificationState,
  }) = _PhoneVerifyState;

  bool get isVerifying => verificationState is _Verifying;
}

@freezed
class VerificationState with _$VerificationState {
  const VerificationState._();

  const factory VerificationState.unverified() = _Unverified;
  const factory VerificationState.verifying() = _Verifying;
  const factory VerificationState.verified() = _Verified;
  const factory VerificationState.error(String message) = _Error;

  bool get isVerified => this is _Verified;
  bool get isError => this is _Error;
}