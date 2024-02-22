import 'package:bid_right_mobile/models/address.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_state.freezed.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const RegistrationState._();

  const factory RegistrationState({
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String email,
    @Default('') String phone,
    DateTime? dateOfBirth,
    @Default(_emptyAddress) Address address,
    @Default('') String username,
    @Default('') String password,
    @Default(false) bool isPasswordVisible,
    @Default('') String confirmPassword,
    @Default(LoadingState.uninitialized()) LoadingState<bool> isEmailAvailable,
    @Default(LoadingState.uninitialized())
    LoadingState<bool> isUsernameAvailable,
    @Default(false) isSubmitting,
  }) = _RegistrationState;
}

const _emptyAddress = Address(
  streetLine1: '',
  city: '',
  stateCode: '',
  zip: '',
);
