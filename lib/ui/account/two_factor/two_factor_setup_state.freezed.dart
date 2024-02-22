// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'two_factor_setup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TwoFactorSetupState {
  LoadingState<bool> get hasAuthenticator => throw _privateConstructorUsedError;
  LoadingState<Authenticator> get authenticatorInfo =>
      throw _privateConstructorUsedError;
  bool get isRemoving => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TwoFactorSetupStateCopyWith<TwoFactorSetupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwoFactorSetupStateCopyWith<$Res> {
  factory $TwoFactorSetupStateCopyWith(
          TwoFactorSetupState value, $Res Function(TwoFactorSetupState) then) =
      _$TwoFactorSetupStateCopyWithImpl<$Res, TwoFactorSetupState>;
  @useResult
  $Res call(
      {LoadingState<bool> hasAuthenticator,
      LoadingState<Authenticator> authenticatorInfo,
      bool isRemoving});

  $LoadingStateCopyWith<bool, $Res> get hasAuthenticator;
  $LoadingStateCopyWith<Authenticator, $Res> get authenticatorInfo;
}

/// @nodoc
class _$TwoFactorSetupStateCopyWithImpl<$Res, $Val extends TwoFactorSetupState>
    implements $TwoFactorSetupStateCopyWith<$Res> {
  _$TwoFactorSetupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasAuthenticator = null,
    Object? authenticatorInfo = null,
    Object? isRemoving = null,
  }) {
    return _then(_value.copyWith(
      hasAuthenticator: null == hasAuthenticator
          ? _value.hasAuthenticator
          : hasAuthenticator // ignore: cast_nullable_to_non_nullable
              as LoadingState<bool>,
      authenticatorInfo: null == authenticatorInfo
          ? _value.authenticatorInfo
          : authenticatorInfo // ignore: cast_nullable_to_non_nullable
              as LoadingState<Authenticator>,
      isRemoving: null == isRemoving
          ? _value.isRemoving
          : isRemoving // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<bool, $Res> get hasAuthenticator {
    return $LoadingStateCopyWith<bool, $Res>(_value.hasAuthenticator, (value) {
      return _then(_value.copyWith(hasAuthenticator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<Authenticator, $Res> get authenticatorInfo {
    return $LoadingStateCopyWith<Authenticator, $Res>(_value.authenticatorInfo,
        (value) {
      return _then(_value.copyWith(authenticatorInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TwoFactorSetupStateImplCopyWith<$Res>
    implements $TwoFactorSetupStateCopyWith<$Res> {
  factory _$$TwoFactorSetupStateImplCopyWith(_$TwoFactorSetupStateImpl value,
          $Res Function(_$TwoFactorSetupStateImpl) then) =
      __$$TwoFactorSetupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingState<bool> hasAuthenticator,
      LoadingState<Authenticator> authenticatorInfo,
      bool isRemoving});

  @override
  $LoadingStateCopyWith<bool, $Res> get hasAuthenticator;
  @override
  $LoadingStateCopyWith<Authenticator, $Res> get authenticatorInfo;
}

/// @nodoc
class __$$TwoFactorSetupStateImplCopyWithImpl<$Res>
    extends _$TwoFactorSetupStateCopyWithImpl<$Res, _$TwoFactorSetupStateImpl>
    implements _$$TwoFactorSetupStateImplCopyWith<$Res> {
  __$$TwoFactorSetupStateImplCopyWithImpl(_$TwoFactorSetupStateImpl _value,
      $Res Function(_$TwoFactorSetupStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasAuthenticator = null,
    Object? authenticatorInfo = null,
    Object? isRemoving = null,
  }) {
    return _then(_$TwoFactorSetupStateImpl(
      hasAuthenticator: null == hasAuthenticator
          ? _value.hasAuthenticator
          : hasAuthenticator // ignore: cast_nullable_to_non_nullable
              as LoadingState<bool>,
      authenticatorInfo: null == authenticatorInfo
          ? _value.authenticatorInfo
          : authenticatorInfo // ignore: cast_nullable_to_non_nullable
              as LoadingState<Authenticator>,
      isRemoving: null == isRemoving
          ? _value.isRemoving
          : isRemoving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TwoFactorSetupStateImpl extends _TwoFactorSetupState {
  const _$TwoFactorSetupStateImpl(
      {this.hasAuthenticator = const Uninitialized(),
      this.authenticatorInfo = const Uninitialized(),
      this.isRemoving = false})
      : super._();

  @override
  @JsonKey()
  final LoadingState<bool> hasAuthenticator;
  @override
  @JsonKey()
  final LoadingState<Authenticator> authenticatorInfo;
  @override
  @JsonKey()
  final bool isRemoving;

  @override
  String toString() {
    return 'TwoFactorSetupState(hasAuthenticator: $hasAuthenticator, authenticatorInfo: $authenticatorInfo, isRemoving: $isRemoving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwoFactorSetupStateImpl &&
            (identical(other.hasAuthenticator, hasAuthenticator) ||
                other.hasAuthenticator == hasAuthenticator) &&
            (identical(other.authenticatorInfo, authenticatorInfo) ||
                other.authenticatorInfo == authenticatorInfo) &&
            (identical(other.isRemoving, isRemoving) ||
                other.isRemoving == isRemoving));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, hasAuthenticator, authenticatorInfo, isRemoving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwoFactorSetupStateImplCopyWith<_$TwoFactorSetupStateImpl> get copyWith =>
      __$$TwoFactorSetupStateImplCopyWithImpl<_$TwoFactorSetupStateImpl>(
          this, _$identity);
}

abstract class _TwoFactorSetupState extends TwoFactorSetupState {
  const factory _TwoFactorSetupState(
      {final LoadingState<bool> hasAuthenticator,
      final LoadingState<Authenticator> authenticatorInfo,
      final bool isRemoving}) = _$TwoFactorSetupStateImpl;
  const _TwoFactorSetupState._() : super._();

  @override
  LoadingState<bool> get hasAuthenticator;
  @override
  LoadingState<Authenticator> get authenticatorInfo;
  @override
  bool get isRemoving;
  @override
  @JsonKey(ignore: true)
  _$$TwoFactorSetupStateImplCopyWith<_$TwoFactorSetupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
