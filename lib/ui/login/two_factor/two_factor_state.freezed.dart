// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'two_factor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TwoFactorState {
  TwoFactorMethod get currentMethod => throw _privateConstructorUsedError;
  bool get hasAuthenticator => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TwoFactorStateCopyWith<TwoFactorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwoFactorStateCopyWith<$Res> {
  factory $TwoFactorStateCopyWith(
          TwoFactorState value, $Res Function(TwoFactorState) then) =
      _$TwoFactorStateCopyWithImpl<$Res, TwoFactorState>;
  @useResult
  $Res call(
      {TwoFactorMethod currentMethod, bool hasAuthenticator, bool isLoading});
}

/// @nodoc
class _$TwoFactorStateCopyWithImpl<$Res, $Val extends TwoFactorState>
    implements $TwoFactorStateCopyWith<$Res> {
  _$TwoFactorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentMethod = null,
    Object? hasAuthenticator = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      currentMethod: null == currentMethod
          ? _value.currentMethod
          : currentMethod // ignore: cast_nullable_to_non_nullable
              as TwoFactorMethod,
      hasAuthenticator: null == hasAuthenticator
          ? _value.hasAuthenticator
          : hasAuthenticator // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwoFactorStateImplCopyWith<$Res>
    implements $TwoFactorStateCopyWith<$Res> {
  factory _$$TwoFactorStateImplCopyWith(_$TwoFactorStateImpl value,
          $Res Function(_$TwoFactorStateImpl) then) =
      __$$TwoFactorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TwoFactorMethod currentMethod, bool hasAuthenticator, bool isLoading});
}

/// @nodoc
class __$$TwoFactorStateImplCopyWithImpl<$Res>
    extends _$TwoFactorStateCopyWithImpl<$Res, _$TwoFactorStateImpl>
    implements _$$TwoFactorStateImplCopyWith<$Res> {
  __$$TwoFactorStateImplCopyWithImpl(
      _$TwoFactorStateImpl _value, $Res Function(_$TwoFactorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentMethod = null,
    Object? hasAuthenticator = null,
    Object? isLoading = null,
  }) {
    return _then(_$TwoFactorStateImpl(
      currentMethod: null == currentMethod
          ? _value.currentMethod
          : currentMethod // ignore: cast_nullable_to_non_nullable
              as TwoFactorMethod,
      hasAuthenticator: null == hasAuthenticator
          ? _value.hasAuthenticator
          : hasAuthenticator // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TwoFactorStateImpl extends _TwoFactorState {
  const _$TwoFactorStateImpl(
      {this.currentMethod = TwoFactorMethod.sms,
      required this.hasAuthenticator,
      this.isLoading = false})
      : super._();

  @override
  @JsonKey()
  final TwoFactorMethod currentMethod;
  @override
  final bool hasAuthenticator;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'TwoFactorState(currentMethod: $currentMethod, hasAuthenticator: $hasAuthenticator, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwoFactorStateImpl &&
            (identical(other.currentMethod, currentMethod) ||
                other.currentMethod == currentMethod) &&
            (identical(other.hasAuthenticator, hasAuthenticator) ||
                other.hasAuthenticator == hasAuthenticator) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentMethod, hasAuthenticator, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwoFactorStateImplCopyWith<_$TwoFactorStateImpl> get copyWith =>
      __$$TwoFactorStateImplCopyWithImpl<_$TwoFactorStateImpl>(
          this, _$identity);
}

abstract class _TwoFactorState extends TwoFactorState {
  const factory _TwoFactorState(
      {final TwoFactorMethod currentMethod,
      required final bool hasAuthenticator,
      final bool isLoading}) = _$TwoFactorStateImpl;
  const _TwoFactorState._() : super._();

  @override
  TwoFactorMethod get currentMethod;
  @override
  bool get hasAuthenticator;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$TwoFactorStateImplCopyWith<_$TwoFactorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
