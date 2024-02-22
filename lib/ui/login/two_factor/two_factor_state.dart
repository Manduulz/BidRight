import 'package:freezed_annotation/freezed_annotation.dart';

part 'two_factor_state.freezed.dart';

@freezed
class TwoFactorState with _$TwoFactorState {
  const TwoFactorState._();

  const factory TwoFactorState({
    @Default(TwoFactorMethod.sms) TwoFactorMethod currentMethod,
    required bool hasAuthenticator,
    @Default(false) bool isLoading,
  }) = _TwoFactorState;
}

enum TwoFactorMethod {
  authenticator,
  sms,
}
