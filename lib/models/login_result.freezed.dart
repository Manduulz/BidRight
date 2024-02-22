// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Credentials credentials) success,
    required TResult Function(
            Credentials credentials, bool hasAuthenticator, String phone)
        needs2FA,
    required TResult Function(Object error) badCredentials,
    required TResult Function(Object error) connectionFailure,
    required TResult Function(Object error) otherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Credentials credentials)? success,
    TResult? Function(
            Credentials credentials, bool hasAuthenticator, String phone)?
        needs2FA,
    TResult? Function(Object error)? badCredentials,
    TResult? Function(Object error)? connectionFailure,
    TResult? Function(Object error)? otherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? success,
    TResult Function(
            Credentials credentials, bool hasAuthenticator, String phone)?
        needs2FA,
    TResult Function(Object error)? badCredentials,
    TResult Function(Object error)? connectionFailure,
    TResult Function(Object error)? otherError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSuccess value) success,
    required TResult Function(_LoginNeeds2FA value) needs2FA,
    required TResult Function(_BadCredentials value) badCredentials,
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_OtherError value) otherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginSuccess value)? success,
    TResult? Function(_LoginNeeds2FA value)? needs2FA,
    TResult? Function(_BadCredentials value)? badCredentials,
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_OtherError value)? otherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSuccess value)? success,
    TResult Function(_LoginNeeds2FA value)? needs2FA,
    TResult Function(_BadCredentials value)? badCredentials,
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_OtherError value)? otherError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultCopyWith<$Res> {
  factory $LoginResultCopyWith(
          LoginResult value, $Res Function(LoginResult) then) =
      _$LoginResultCopyWithImpl<$Res, LoginResult>;
}

/// @nodoc
class _$LoginResultCopyWithImpl<$Res, $Val extends LoginResult>
    implements $LoginResultCopyWith<$Res> {
  _$LoginResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Credentials credentials});
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$LoginResultCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentials = null,
  }) {
    return _then(_$LoginSuccessImpl(
      credentials: null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as Credentials,
    ));
  }
}

/// @nodoc

class _$LoginSuccessImpl extends _LoginSuccess {
  const _$LoginSuccessImpl({required this.credentials}) : super._();

  @override
  final Credentials credentials;

  @override
  String toString() {
    return 'LoginResult.success(credentials: $credentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessImpl &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credentials);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      __$$LoginSuccessImplCopyWithImpl<_$LoginSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Credentials credentials) success,
    required TResult Function(
            Credentials credentials, bool hasAuthenticator, String phone)
        needs2FA,
    required TResult Function(Object error) badCredentials,
    required TResult Function(Object error) connectionFailure,
    required TResult Function(Object error) otherError,
  }) {
    return success(credentials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Credentials credentials)? success,
    TResult? Function(
            Credentials credentials, bool hasAuthenticator, String phone)?
        needs2FA,
    TResult? Function(Object error)? badCredentials,
    TResult? Function(Object error)? connectionFailure,
    TResult? Function(Object error)? otherError,
  }) {
    return success?.call(credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? success,
    TResult Function(
            Credentials credentials, bool hasAuthenticator, String phone)?
        needs2FA,
    TResult Function(Object error)? badCredentials,
    TResult Function(Object error)? connectionFailure,
    TResult Function(Object error)? otherError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(credentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSuccess value) success,
    required TResult Function(_LoginNeeds2FA value) needs2FA,
    required TResult Function(_BadCredentials value) badCredentials,
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_OtherError value) otherError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginSuccess value)? success,
    TResult? Function(_LoginNeeds2FA value)? needs2FA,
    TResult? Function(_BadCredentials value)? badCredentials,
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_OtherError value)? otherError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSuccess value)? success,
    TResult Function(_LoginNeeds2FA value)? needs2FA,
    TResult Function(_BadCredentials value)? badCredentials,
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_OtherError value)? otherError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess extends LoginResult {
  const factory _LoginSuccess({required final Credentials credentials}) =
      _$LoginSuccessImpl;
  const _LoginSuccess._() : super._();

  Credentials get credentials;
  @JsonKey(ignore: true)
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginNeeds2FAImplCopyWith<$Res> {
  factory _$$LoginNeeds2FAImplCopyWith(
          _$LoginNeeds2FAImpl value, $Res Function(_$LoginNeeds2FAImpl) then) =
      __$$LoginNeeds2FAImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Credentials credentials, bool hasAuthenticator, String phone});
}

/// @nodoc
class __$$LoginNeeds2FAImplCopyWithImpl<$Res>
    extends _$LoginResultCopyWithImpl<$Res, _$LoginNeeds2FAImpl>
    implements _$$LoginNeeds2FAImplCopyWith<$Res> {
  __$$LoginNeeds2FAImplCopyWithImpl(
      _$LoginNeeds2FAImpl _value, $Res Function(_$LoginNeeds2FAImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentials = null,
    Object? hasAuthenticator = null,
    Object? phone = null,
  }) {
    return _then(_$LoginNeeds2FAImpl(
      credentials: null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as Credentials,
      hasAuthenticator: null == hasAuthenticator
          ? _value.hasAuthenticator
          : hasAuthenticator // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginNeeds2FAImpl extends _LoginNeeds2FA {
  const _$LoginNeeds2FAImpl(
      {required this.credentials,
      required this.hasAuthenticator,
      required this.phone})
      : super._();

  @override
  final Credentials credentials;
  @override
  final bool hasAuthenticator;
  @override
  final String phone;

  @override
  String toString() {
    return 'LoginResult.needs2FA(credentials: $credentials, hasAuthenticator: $hasAuthenticator, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginNeeds2FAImpl &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials) &&
            (identical(other.hasAuthenticator, hasAuthenticator) ||
                other.hasAuthenticator == hasAuthenticator) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, credentials, hasAuthenticator, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginNeeds2FAImplCopyWith<_$LoginNeeds2FAImpl> get copyWith =>
      __$$LoginNeeds2FAImplCopyWithImpl<_$LoginNeeds2FAImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Credentials credentials) success,
    required TResult Function(
            Credentials credentials, bool hasAuthenticator, String phone)
        needs2FA,
    required TResult Function(Object error) badCredentials,
    required TResult Function(Object error) connectionFailure,
    required TResult Function(Object error) otherError,
  }) {
    return needs2FA(credentials, hasAuthenticator, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Credentials credentials)? success,
    TResult? Function(
            Credentials credentials, bool hasAuthenticator, String phone)?
        needs2FA,
    TResult? Function(Object error)? badCredentials,
    TResult? Function(Object error)? connectionFailure,
    TResult? Function(Object error)? otherError,
  }) {
    return needs2FA?.call(credentials, hasAuthenticator, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? success,
    TResult Function(
            Credentials credentials, bool hasAuthenticator, String phone)?
        needs2FA,
    TResult Function(Object error)? badCredentials,
    TResult Function(Object error)? connectionFailure,
    TResult Function(Object error)? otherError,
    required TResult orElse(),
  }) {
    if (needs2FA != null) {
      return needs2FA(credentials, hasAuthenticator, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSuccess value) success,
    required TResult Function(_LoginNeeds2FA value) needs2FA,
    required TResult Function(_BadCredentials value) badCredentials,
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_OtherError value) otherError,
  }) {
    return needs2FA(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginSuccess value)? success,
    TResult? Function(_LoginNeeds2FA value)? needs2FA,
    TResult? Function(_BadCredentials value)? badCredentials,
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_OtherError value)? otherError,
  }) {
    return needs2FA?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSuccess value)? success,
    TResult Function(_LoginNeeds2FA value)? needs2FA,
    TResult Function(_BadCredentials value)? badCredentials,
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_OtherError value)? otherError,
    required TResult orElse(),
  }) {
    if (needs2FA != null) {
      return needs2FA(this);
    }
    return orElse();
  }
}

abstract class _LoginNeeds2FA extends LoginResult {
  const factory _LoginNeeds2FA(
      {required final Credentials credentials,
      required final bool hasAuthenticator,
      required final String phone}) = _$LoginNeeds2FAImpl;
  const _LoginNeeds2FA._() : super._();

  Credentials get credentials;
  bool get hasAuthenticator;
  String get phone;
  @JsonKey(ignore: true)
  _$$LoginNeeds2FAImplCopyWith<_$LoginNeeds2FAImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadCredentialsImplCopyWith<$Res> {
  factory _$$BadCredentialsImplCopyWith(_$BadCredentialsImpl value,
          $Res Function(_$BadCredentialsImpl) then) =
      __$$BadCredentialsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$BadCredentialsImplCopyWithImpl<$Res>
    extends _$LoginResultCopyWithImpl<$Res, _$BadCredentialsImpl>
    implements _$$BadCredentialsImplCopyWith<$Res> {
  __$$BadCredentialsImplCopyWithImpl(
      _$BadCredentialsImpl _value, $Res Function(_$BadCredentialsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BadCredentialsImpl(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$BadCredentialsImpl extends _BadCredentials {
  const _$BadCredentialsImpl(this.error) : super._();

  @override
  final Object error;

  @override
  String toString() {
    return 'LoginResult.badCredentials(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadCredentialsImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadCredentialsImplCopyWith<_$BadCredentialsImpl> get copyWith =>
      __$$BadCredentialsImplCopyWithImpl<_$BadCredentialsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Credentials credentials) success,
    required TResult Function(
            Credentials credentials, bool hasAuthenticator, String phone)
        needs2FA,
    required TResult Function(Object error) badCredentials,
    required TResult Function(Object error) connectionFailure,
    required TResult Function(Object error) otherError,
  }) {
    return badCredentials(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Credentials credentials)? success,
    TResult? Function(
            Credentials credentials, bool hasAuthenticator, String phone)?
        needs2FA,
    TResult? Function(Object error)? badCredentials,
    TResult? Function(Object error)? connectionFailure,
    TResult? Function(Object error)? otherError,
  }) {
    return badCredentials?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? success,
    TResult Function(
            Credentials credentials, bool hasAuthenticator, String phone)?
        needs2FA,
    TResult Function(Object error)? badCredentials,
    TResult Function(Object error)? connectionFailure,
    TResult Function(Object error)? otherError,
    required TResult orElse(),
  }) {
    if (badCredentials != null) {
      return badCredentials(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSuccess value) success,
    required TResult Function(_LoginNeeds2FA value) needs2FA,
    required TResult Function(_BadCredentials value) badCredentials,
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_OtherError value) otherError,
  }) {
    return badCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginSuccess value)? success,
    TResult? Function(_LoginNeeds2FA value)? needs2FA,
    TResult? Function(_BadCredentials value)? badCredentials,
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_OtherError value)? otherError,
  }) {
    return badCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSuccess value)? success,
    TResult Function(_LoginNeeds2FA value)? needs2FA,
    TResult Function(_BadCredentials value)? badCredentials,
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_OtherError value)? otherError,
    required TResult orElse(),
  }) {
    if (badCredentials != null) {
      return badCredentials(this);
    }
    return orElse();
  }
}

abstract class _BadCredentials extends LoginResult {
  const factory _BadCredentials(final Object error) = _$BadCredentialsImpl;
  const _BadCredentials._() : super._();

  Object get error;
  @JsonKey(ignore: true)
  _$$BadCredentialsImplCopyWith<_$BadCredentialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionFailureImplCopyWith<$Res> {
  factory _$$ConnectionFailureImplCopyWith(_$ConnectionFailureImpl value,
          $Res Function(_$ConnectionFailureImpl) then) =
      __$$ConnectionFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$ConnectionFailureImplCopyWithImpl<$Res>
    extends _$LoginResultCopyWithImpl<$Res, _$ConnectionFailureImpl>
    implements _$$ConnectionFailureImplCopyWith<$Res> {
  __$$ConnectionFailureImplCopyWithImpl(_$ConnectionFailureImpl _value,
      $Res Function(_$ConnectionFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ConnectionFailureImpl(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ConnectionFailureImpl extends _ConnectionFailure {
  const _$ConnectionFailureImpl(this.error) : super._();

  @override
  final Object error;

  @override
  String toString() {
    return 'LoginResult.connectionFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionFailureImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionFailureImplCopyWith<_$ConnectionFailureImpl> get copyWith =>
      __$$ConnectionFailureImplCopyWithImpl<_$ConnectionFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Credentials credentials) success,
    required TResult Function(
            Credentials credentials, bool hasAuthenticator, String phone)
        needs2FA,
    required TResult Function(Object error) badCredentials,
    required TResult Function(Object error) connectionFailure,
    required TResult Function(Object error) otherError,
  }) {
    return connectionFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Credentials credentials)? success,
    TResult? Function(
            Credentials credentials, bool hasAuthenticator, String phone)?
        needs2FA,
    TResult? Function(Object error)? badCredentials,
    TResult? Function(Object error)? connectionFailure,
    TResult? Function(Object error)? otherError,
  }) {
    return connectionFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? success,
    TResult Function(
            Credentials credentials, bool hasAuthenticator, String phone)?
        needs2FA,
    TResult Function(Object error)? badCredentials,
    TResult Function(Object error)? connectionFailure,
    TResult Function(Object error)? otherError,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSuccess value) success,
    required TResult Function(_LoginNeeds2FA value) needs2FA,
    required TResult Function(_BadCredentials value) badCredentials,
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_OtherError value) otherError,
  }) {
    return connectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginSuccess value)? success,
    TResult? Function(_LoginNeeds2FA value)? needs2FA,
    TResult? Function(_BadCredentials value)? badCredentials,
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_OtherError value)? otherError,
  }) {
    return connectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSuccess value)? success,
    TResult Function(_LoginNeeds2FA value)? needs2FA,
    TResult Function(_BadCredentials value)? badCredentials,
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_OtherError value)? otherError,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(this);
    }
    return orElse();
  }
}

abstract class _ConnectionFailure extends LoginResult {
  const factory _ConnectionFailure(final Object error) =
      _$ConnectionFailureImpl;
  const _ConnectionFailure._() : super._();

  Object get error;
  @JsonKey(ignore: true)
  _$$ConnectionFailureImplCopyWith<_$ConnectionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtherErrorImplCopyWith<$Res> {
  factory _$$OtherErrorImplCopyWith(
          _$OtherErrorImpl value, $Res Function(_$OtherErrorImpl) then) =
      __$$OtherErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$OtherErrorImplCopyWithImpl<$Res>
    extends _$LoginResultCopyWithImpl<$Res, _$OtherErrorImpl>
    implements _$$OtherErrorImplCopyWith<$Res> {
  __$$OtherErrorImplCopyWithImpl(
      _$OtherErrorImpl _value, $Res Function(_$OtherErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$OtherErrorImpl(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$OtherErrorImpl extends _OtherError {
  const _$OtherErrorImpl(this.error) : super._();

  @override
  final Object error;

  @override
  String toString() {
    return 'LoginResult.otherError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherErrorImplCopyWith<_$OtherErrorImpl> get copyWith =>
      __$$OtherErrorImplCopyWithImpl<_$OtherErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Credentials credentials) success,
    required TResult Function(
            Credentials credentials, bool hasAuthenticator, String phone)
        needs2FA,
    required TResult Function(Object error) badCredentials,
    required TResult Function(Object error) connectionFailure,
    required TResult Function(Object error) otherError,
  }) {
    return otherError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Credentials credentials)? success,
    TResult? Function(
            Credentials credentials, bool hasAuthenticator, String phone)?
        needs2FA,
    TResult? Function(Object error)? badCredentials,
    TResult? Function(Object error)? connectionFailure,
    TResult? Function(Object error)? otherError,
  }) {
    return otherError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? success,
    TResult Function(
            Credentials credentials, bool hasAuthenticator, String phone)?
        needs2FA,
    TResult Function(Object error)? badCredentials,
    TResult Function(Object error)? connectionFailure,
    TResult Function(Object error)? otherError,
    required TResult orElse(),
  }) {
    if (otherError != null) {
      return otherError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSuccess value) success,
    required TResult Function(_LoginNeeds2FA value) needs2FA,
    required TResult Function(_BadCredentials value) badCredentials,
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_OtherError value) otherError,
  }) {
    return otherError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginSuccess value)? success,
    TResult? Function(_LoginNeeds2FA value)? needs2FA,
    TResult? Function(_BadCredentials value)? badCredentials,
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_OtherError value)? otherError,
  }) {
    return otherError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSuccess value)? success,
    TResult Function(_LoginNeeds2FA value)? needs2FA,
    TResult Function(_BadCredentials value)? badCredentials,
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_OtherError value)? otherError,
    required TResult orElse(),
  }) {
    if (otherError != null) {
      return otherError(this);
    }
    return orElse();
  }
}

abstract class _OtherError extends LoginResult {
  const factory _OtherError(final Object error) = _$OtherErrorImpl;
  const _OtherError._() : super._();

  Object get error;
  @JsonKey(ignore: true)
  _$$OtherErrorImplCopyWith<_$OtherErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
