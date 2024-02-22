// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationState {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isPasswordVisible => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  LoadingState<bool> get isEmailAvailable => throw _privateConstructorUsedError;
  LoadingState<bool> get isUsernameAvailable =>
      throw _privateConstructorUsedError;
  dynamic get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String phone,
      DateTime? dateOfBirth,
      Address address,
      String username,
      String password,
      bool isPasswordVisible,
      String confirmPassword,
      LoadingState<bool> isEmailAvailable,
      LoadingState<bool> isUsernameAvailable,
      dynamic isSubmitting});

  $AddressCopyWith<$Res> get address;
  $LoadingStateCopyWith<bool, $Res> get isEmailAvailable;
  $LoadingStateCopyWith<bool, $Res> get isUsernameAvailable;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = null,
    Object? dateOfBirth = freezed,
    Object? address = null,
    Object? username = null,
    Object? password = null,
    Object? isPasswordVisible = null,
    Object? confirmPassword = null,
    Object? isEmailAvailable = null,
    Object? isUsernameAvailable = null,
    Object? isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailAvailable: null == isEmailAvailable
          ? _value.isEmailAvailable
          : isEmailAvailable // ignore: cast_nullable_to_non_nullable
              as LoadingState<bool>,
      isUsernameAvailable: null == isUsernameAvailable
          ? _value.isUsernameAvailable
          : isUsernameAvailable // ignore: cast_nullable_to_non_nullable
              as LoadingState<bool>,
      isSubmitting: freezed == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<bool, $Res> get isEmailAvailable {
    return $LoadingStateCopyWith<bool, $Res>(_value.isEmailAvailable, (value) {
      return _then(_value.copyWith(isEmailAvailable: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<bool, $Res> get isUsernameAvailable {
    return $LoadingStateCopyWith<bool, $Res>(_value.isUsernameAvailable,
        (value) {
      return _then(_value.copyWith(isUsernameAvailable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationStateImplCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$$RegistrationStateImplCopyWith(_$RegistrationStateImpl value,
          $Res Function(_$RegistrationStateImpl) then) =
      __$$RegistrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String phone,
      DateTime? dateOfBirth,
      Address address,
      String username,
      String password,
      bool isPasswordVisible,
      String confirmPassword,
      LoadingState<bool> isEmailAvailable,
      LoadingState<bool> isUsernameAvailable,
      dynamic isSubmitting});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $LoadingStateCopyWith<bool, $Res> get isEmailAvailable;
  @override
  $LoadingStateCopyWith<bool, $Res> get isUsernameAvailable;
}

/// @nodoc
class __$$RegistrationStateImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationStateImpl>
    implements _$$RegistrationStateImplCopyWith<$Res> {
  __$$RegistrationStateImplCopyWithImpl(_$RegistrationStateImpl _value,
      $Res Function(_$RegistrationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = null,
    Object? dateOfBirth = freezed,
    Object? address = null,
    Object? username = null,
    Object? password = null,
    Object? isPasswordVisible = null,
    Object? confirmPassword = null,
    Object? isEmailAvailable = null,
    Object? isUsernameAvailable = null,
    Object? isSubmitting = freezed,
  }) {
    return _then(_$RegistrationStateImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailAvailable: null == isEmailAvailable
          ? _value.isEmailAvailable
          : isEmailAvailable // ignore: cast_nullable_to_non_nullable
              as LoadingState<bool>,
      isUsernameAvailable: null == isUsernameAvailable
          ? _value.isUsernameAvailable
          : isUsernameAvailable // ignore: cast_nullable_to_non_nullable
              as LoadingState<bool>,
      isSubmitting:
          freezed == isSubmitting ? _value.isSubmitting! : isSubmitting,
    ));
  }
}

/// @nodoc

class _$RegistrationStateImpl extends _RegistrationState {
  const _$RegistrationStateImpl(
      {this.firstName = '',
      this.lastName = '',
      this.email = '',
      this.phone = '',
      this.dateOfBirth,
      this.address = _emptyAddress,
      this.username = '',
      this.password = '',
      this.isPasswordVisible = false,
      this.confirmPassword = '',
      this.isEmailAvailable = const LoadingState.uninitialized(),
      this.isUsernameAvailable = const LoadingState.uninitialized(),
      this.isSubmitting = false})
      : super._();

  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String phone;
  @override
  final DateTime? dateOfBirth;
  @override
  @JsonKey()
  final Address address;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool isPasswordVisible;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  @JsonKey()
  final LoadingState<bool> isEmailAvailable;
  @override
  @JsonKey()
  final LoadingState<bool> isUsernameAvailable;
  @override
  @JsonKey()
  final dynamic isSubmitting;

  @override
  String toString() {
    return 'RegistrationState(firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, dateOfBirth: $dateOfBirth, address: $address, username: $username, password: $password, isPasswordVisible: $isPasswordVisible, confirmPassword: $confirmPassword, isEmailAvailable: $isEmailAvailable, isUsernameAvailable: $isUsernameAvailable, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isPasswordVisible, isPasswordVisible) ||
                other.isPasswordVisible == isPasswordVisible) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isEmailAvailable, isEmailAvailable) ||
                other.isEmailAvailable == isEmailAvailable) &&
            (identical(other.isUsernameAvailable, isUsernameAvailable) ||
                other.isUsernameAvailable == isUsernameAvailable) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      email,
      phone,
      dateOfBirth,
      address,
      username,
      password,
      isPasswordVisible,
      confirmPassword,
      isEmailAvailable,
      isUsernameAvailable,
      const DeepCollectionEquality().hash(isSubmitting));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      __$$RegistrationStateImplCopyWithImpl<_$RegistrationStateImpl>(
          this, _$identity);
}

abstract class _RegistrationState extends RegistrationState {
  const factory _RegistrationState(
      {final String firstName,
      final String lastName,
      final String email,
      final String phone,
      final DateTime? dateOfBirth,
      final Address address,
      final String username,
      final String password,
      final bool isPasswordVisible,
      final String confirmPassword,
      final LoadingState<bool> isEmailAvailable,
      final LoadingState<bool> isUsernameAvailable,
      final dynamic isSubmitting}) = _$RegistrationStateImpl;
  const _RegistrationState._() : super._();

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get phone;
  @override
  DateTime? get dateOfBirth;
  @override
  Address get address;
  @override
  String get username;
  @override
  String get password;
  @override
  bool get isPasswordVisible;
  @override
  String get confirmPassword;
  @override
  LoadingState<bool> get isEmailAvailable;
  @override
  LoadingState<bool> get isUsernameAvailable;
  @override
  dynamic get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
