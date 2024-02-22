// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_verify_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneVerifyState {
  LoadingState<PhoneVerificationToken> get token =>
      throw _privateConstructorUsedError;
  String get verificationCode => throw _privateConstructorUsedError;
  VerificationState get verificationState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneVerifyStateCopyWith<PhoneVerifyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneVerifyStateCopyWith<$Res> {
  factory $PhoneVerifyStateCopyWith(
          PhoneVerifyState value, $Res Function(PhoneVerifyState) then) =
      _$PhoneVerifyStateCopyWithImpl<$Res, PhoneVerifyState>;
  @useResult
  $Res call(
      {LoadingState<PhoneVerificationToken> token,
      String verificationCode,
      VerificationState verificationState});

  $LoadingStateCopyWith<PhoneVerificationToken, $Res> get token;
  $VerificationStateCopyWith<$Res> get verificationState;
}

/// @nodoc
class _$PhoneVerifyStateCopyWithImpl<$Res, $Val extends PhoneVerifyState>
    implements $PhoneVerifyStateCopyWith<$Res> {
  _$PhoneVerifyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? verificationCode = null,
    Object? verificationState = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as LoadingState<PhoneVerificationToken>,
      verificationCode: null == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationState: null == verificationState
          ? _value.verificationState
          : verificationState // ignore: cast_nullable_to_non_nullable
              as VerificationState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<PhoneVerificationToken, $Res> get token {
    return $LoadingStateCopyWith<PhoneVerificationToken, $Res>(_value.token,
        (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VerificationStateCopyWith<$Res> get verificationState {
    return $VerificationStateCopyWith<$Res>(_value.verificationState, (value) {
      return _then(_value.copyWith(verificationState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhoneVerifyStateImplCopyWith<$Res>
    implements $PhoneVerifyStateCopyWith<$Res> {
  factory _$$PhoneVerifyStateImplCopyWith(_$PhoneVerifyStateImpl value,
          $Res Function(_$PhoneVerifyStateImpl) then) =
      __$$PhoneVerifyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingState<PhoneVerificationToken> token,
      String verificationCode,
      VerificationState verificationState});

  @override
  $LoadingStateCopyWith<PhoneVerificationToken, $Res> get token;
  @override
  $VerificationStateCopyWith<$Res> get verificationState;
}

/// @nodoc
class __$$PhoneVerifyStateImplCopyWithImpl<$Res>
    extends _$PhoneVerifyStateCopyWithImpl<$Res, _$PhoneVerifyStateImpl>
    implements _$$PhoneVerifyStateImplCopyWith<$Res> {
  __$$PhoneVerifyStateImplCopyWithImpl(_$PhoneVerifyStateImpl _value,
      $Res Function(_$PhoneVerifyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? verificationCode = null,
    Object? verificationState = null,
  }) {
    return _then(_$PhoneVerifyStateImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as LoadingState<PhoneVerificationToken>,
      verificationCode: null == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationState: null == verificationState
          ? _value.verificationState
          : verificationState // ignore: cast_nullable_to_non_nullable
              as VerificationState,
    ));
  }
}

/// @nodoc

class _$PhoneVerifyStateImpl extends _PhoneVerifyState {
  const _$PhoneVerifyStateImpl(
      {this.token = const Uninitialized(),
      this.verificationCode = '',
      this.verificationState = const VerificationState.unverified()})
      : super._();

  @override
  @JsonKey()
  final LoadingState<PhoneVerificationToken> token;
  @override
  @JsonKey()
  final String verificationCode;
  @override
  @JsonKey()
  final VerificationState verificationState;

  @override
  String toString() {
    return 'PhoneVerifyState(token: $token, verificationCode: $verificationCode, verificationState: $verificationState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneVerifyStateImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.verificationCode, verificationCode) ||
                other.verificationCode == verificationCode) &&
            (identical(other.verificationState, verificationState) ||
                other.verificationState == verificationState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, token, verificationCode, verificationState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneVerifyStateImplCopyWith<_$PhoneVerifyStateImpl> get copyWith =>
      __$$PhoneVerifyStateImplCopyWithImpl<_$PhoneVerifyStateImpl>(
          this, _$identity);
}

abstract class _PhoneVerifyState extends PhoneVerifyState {
  const factory _PhoneVerifyState(
      {final LoadingState<PhoneVerificationToken> token,
      final String verificationCode,
      final VerificationState verificationState}) = _$PhoneVerifyStateImpl;
  const _PhoneVerifyState._() : super._();

  @override
  LoadingState<PhoneVerificationToken> get token;
  @override
  String get verificationCode;
  @override
  VerificationState get verificationState;
  @override
  @JsonKey(ignore: true)
  _$$PhoneVerifyStateImplCopyWith<_$PhoneVerifyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unverified,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unverified,
    TResult? Function()? verifying,
    TResult? Function()? verified,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unverified,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_Verifying value) verifying,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unverified value)? unverified,
    TResult? Function(_Verifying value)? verifying,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unverified value)? unverified,
    TResult Function(_Verifying value)? verifying,
    TResult Function(_Verified value)? verified,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationStateCopyWith<$Res> {
  factory $VerificationStateCopyWith(
          VerificationState value, $Res Function(VerificationState) then) =
      _$VerificationStateCopyWithImpl<$Res, VerificationState>;
}

/// @nodoc
class _$VerificationStateCopyWithImpl<$Res, $Val extends VerificationState>
    implements $VerificationStateCopyWith<$Res> {
  _$VerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnverifiedImplCopyWith<$Res> {
  factory _$$UnverifiedImplCopyWith(
          _$UnverifiedImpl value, $Res Function(_$UnverifiedImpl) then) =
      __$$UnverifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnverifiedImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$UnverifiedImpl>
    implements _$$UnverifiedImplCopyWith<$Res> {
  __$$UnverifiedImplCopyWithImpl(
      _$UnverifiedImpl _value, $Res Function(_$UnverifiedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnverifiedImpl extends _Unverified {
  const _$UnverifiedImpl() : super._();

  @override
  String toString() {
    return 'VerificationState.unverified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnverifiedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unverified,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function(String message) error,
  }) {
    return unverified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unverified,
    TResult? Function()? verifying,
    TResult? Function()? verified,
    TResult? Function(String message)? error,
  }) {
    return unverified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unverified,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (unverified != null) {
      return unverified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_Verifying value) verifying,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Error value) error,
  }) {
    return unverified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unverified value)? unverified,
    TResult? Function(_Verifying value)? verifying,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Error value)? error,
  }) {
    return unverified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unverified value)? unverified,
    TResult Function(_Verifying value)? verifying,
    TResult Function(_Verified value)? verified,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (unverified != null) {
      return unverified(this);
    }
    return orElse();
  }
}

abstract class _Unverified extends VerificationState {
  const factory _Unverified() = _$UnverifiedImpl;
  const _Unverified._() : super._();
}

/// @nodoc
abstract class _$$VerifyingImplCopyWith<$Res> {
  factory _$$VerifyingImplCopyWith(
          _$VerifyingImpl value, $Res Function(_$VerifyingImpl) then) =
      __$$VerifyingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyingImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$VerifyingImpl>
    implements _$$VerifyingImplCopyWith<$Res> {
  __$$VerifyingImplCopyWithImpl(
      _$VerifyingImpl _value, $Res Function(_$VerifyingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyingImpl extends _Verifying {
  const _$VerifyingImpl() : super._();

  @override
  String toString() {
    return 'VerificationState.verifying()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unverified,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function(String message) error,
  }) {
    return verifying();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unverified,
    TResult? Function()? verifying,
    TResult? Function()? verified,
    TResult? Function(String message)? error,
  }) {
    return verifying?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unverified,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (verifying != null) {
      return verifying();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_Verifying value) verifying,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Error value) error,
  }) {
    return verifying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unverified value)? unverified,
    TResult? Function(_Verifying value)? verifying,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Error value)? error,
  }) {
    return verifying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unverified value)? unverified,
    TResult Function(_Verifying value)? verifying,
    TResult Function(_Verified value)? verified,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (verifying != null) {
      return verifying(this);
    }
    return orElse();
  }
}

abstract class _Verifying extends VerificationState {
  const factory _Verifying() = _$VerifyingImpl;
  const _Verifying._() : super._();
}

/// @nodoc
abstract class _$$VerifiedImplCopyWith<$Res> {
  factory _$$VerifiedImplCopyWith(
          _$VerifiedImpl value, $Res Function(_$VerifiedImpl) then) =
      __$$VerifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifiedImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$VerifiedImpl>
    implements _$$VerifiedImplCopyWith<$Res> {
  __$$VerifiedImplCopyWithImpl(
      _$VerifiedImpl _value, $Res Function(_$VerifiedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifiedImpl extends _Verified {
  const _$VerifiedImpl() : super._();

  @override
  String toString() {
    return 'VerificationState.verified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifiedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unverified,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function(String message) error,
  }) {
    return verified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unverified,
    TResult? Function()? verifying,
    TResult? Function()? verified,
    TResult? Function(String message)? error,
  }) {
    return verified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unverified,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_Verifying value) verifying,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Error value) error,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unverified value)? unverified,
    TResult? Function(_Verifying value)? verifying,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Error value)? error,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unverified value)? unverified,
    TResult Function(_Verifying value)? verifying,
    TResult Function(_Verified value)? verified,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class _Verified extends VerificationState {
  const factory _Verified() = _$VerifiedImpl;
  const _Verified._() : super._();
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'VerificationState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unverified,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unverified,
    TResult? Function()? verifying,
    TResult? Function()? verified,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unverified,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_Verifying value) verifying,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unverified value)? unverified,
    TResult? Function(_Verifying value)? verifying,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unverified value)? unverified,
    TResult Function(_Verifying value)? verifying,
    TResult Function(_Verified value)? verified,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends VerificationState {
  const factory _Error(final String message) = _$ErrorImpl;
  const _Error._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
