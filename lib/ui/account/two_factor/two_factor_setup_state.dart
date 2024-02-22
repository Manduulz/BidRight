import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/authenticator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'two_factor_setup_state.freezed.dart';

@freezed
class TwoFactorSetupState with _$TwoFactorSetupState {
  const TwoFactorSetupState._();

  const factory TwoFactorSetupState({
    @Default(Uninitialized()) LoadingState<bool> hasAuthenticator,
    @Default(Uninitialized()) LoadingState<Authenticator> authenticatorInfo,
    @Default(false) bool isRemoving,
  }) = _TwoFactorSetupState;
}
