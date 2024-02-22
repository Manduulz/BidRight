import 'package:bid_right_mobile/models/phone_verification.dart';
import 'package:bid_right_mobile/models/registration.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/repository/api/login_api.dart';
import 'package:bid_right_mobile/ui/register/registration_state.dart';
import 'package:bid_right_mobile/ui/shared/address_input/address_input_delegate.dart';
import 'package:bid_right_mobile/ui/verification/phone_verify_cubit.dart';
import 'package:bid_right_mobile/util/string_extension.dart';
import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';

class RegistrationCubit extends Cubit<RegistrationState>
    implements AddressInputDelegate {
  final LoginApi _api;

  RegistrationCubit(this._api) : super(const RegistrationState());

  void setFirstName(String firstName) =>
      emit(state.copyWith(firstName: firstName));

  void setLastName(String lastName) => emit(state.copyWith(lastName: lastName));

  void setEmail(String email) {
    emit(state.copyWith(
        email: email, isEmailAvailable: const LoadingState.uninitialized()));
    checkEmailAvailability();
  }

  void setPhone(String phone) => emit(state.copyWith(phone: phone));

  DateTime? get getDateOfBirth => state.dateOfBirth;

  void setDateOfBirth(DateTime dateOfBirth) {
    emit(state.copyWith(
      dateOfBirth: DateTime.utc(
        dateOfBirth.year,
        dateOfBirth.month,
        dateOfBirth.day,
      ),
    ));
  }

  @override
  void setAddress1(String address1) {
    emit(state.copyWith.address(streetLine1: address1));
  }

  @override
  void setAddress2(String address2) {
    emit(state.copyWith
        .address(streetLine2: address2.isEmpty ? null : address2));
  }

  @override
  void setCity(String city) {
    emit(state.copyWith.address(city: city));
  }

  @override
  void setStateCode(String stateCode) {
    emit(state.copyWith.address(stateCode: stateCode));
  }

  @override
  void setZip(String zip) {
    emit(state.copyWith.address(zip: zip));
  }

  void setUsername(String username) {
    emit(state.copyWith(
        username: username,
        isUsernameAvailable: const LoadingState.uninitialized()));
    checkUsernameAvailability();
  }

  void setPassword(String password) => emit(state.copyWith(password: password));

  void setPasswordVisible(bool isVisible) => emit(state.copyWith(
        isPasswordVisible: isVisible,
      ));

  void setConfirmPassword(String password) =>
      emit(state.copyWith(confirmPassword: password));

  Future<void> checkEmailAvailability() async {
    final email = state.email;
    if (!EmailValidator.validate(email)) {
      return;
    }

    await Future.delayed(const Duration(milliseconds: 250));
    if (isClosed || email != state.email) {
      return;
    }

    emit(state.copyWith(isEmailAvailable: const LoadingState.loading()));
    final result = await _api.isEmailAvailable(email);
    if (isClosed || email != state.email) {
      return;
    }

    emit(state.copyWith(isEmailAvailable: LoadingState.fromResult(result)));
  }

  Future<void> checkUsernameAvailability() async {
    final username = state.username;
    if (username.isEmpty) {
      return;
    }

    await Future.delayed(const Duration(milliseconds: 250));
    if (isClosed || username != state.username) {
      return;
    }

    emit(state.copyWith(isUsernameAvailable: const LoadingState.loading()));
    final result = await _api.isUsernameAvailable(username);
    if (isClosed || username != state.username) {
      return;
    }

    emit(state.copyWith(isUsernameAvailable: LoadingState.fromResult(result)));
  }

  PhoneVerifyDelegate phoneVerificationDelegate() => RegistrationPhoneDelegate(
        phone: state.phone,
        api: _api,
        bloc: this,
      );

  Future<String?> register(
      {required PhoneVerificationToken token, required String code}) async {
    final dateOfBirth = state.dateOfBirth;
    if (dateOfBirth == null) {
      return 'Date of birth is required';
    }

    final result = await _api.register(NewBidderRequest(
      username: state.username,
      password: state.password,
      firstName: state.firstName,
      lastName: state.lastName,
      email: state.email,
      phone: state.phone.digitsOnly(),
      dateOfBirth: dateOfBirth,
      address1: state.address.streetLine1,
      address2: state.address.streetLine2,
      city: state.address.city,
      state: state.address.stateCode,
      zip: state.address.zip,
      verificationId: token.id,
      verificationCode: code,
    ));

    return result.join(
      onSuccess: (_) => null,
      onFailure: (error) {
        if (error is String) {
          return error;
        }
        return 'Registration failed';
      },
    );
  }
}

class RegistrationPhoneDelegate implements PhoneVerifyDelegate {
  RegistrationPhoneDelegate({
    required LoginApi api,
    required RegistrationCubit bloc,
    required this.phone,
  })  : _api = api,
        _bloc = bloc;

  @override
  final String phone;
  final LoginApi _api;
  final RegistrationCubit _bloc;

  @override
  Future<Result<PhoneVerificationToken>> fetchToken() {
    return _api.sendVerificationCode(phone.digitsOnly());
  }

  @override
  Future<String?> verifyToken(
      {required PhoneVerificationToken token, required String code}) {
    return _bloc.register(token: token, code: code);
  }
}
