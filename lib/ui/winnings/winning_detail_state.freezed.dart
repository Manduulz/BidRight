// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'winning_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WinningDetailState {
  LoadingState<PastWinningDetail> get winning =>
      throw _privateConstructorUsedError;
  DeedDeliveryMethod? get deedDeliveryMethod =>
      throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WinningDetailStateCopyWith<WinningDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WinningDetailStateCopyWith<$Res> {
  factory $WinningDetailStateCopyWith(
          WinningDetailState value, $Res Function(WinningDetailState) then) =
      _$WinningDetailStateCopyWithImpl<$Res, WinningDetailState>;
  @useResult
  $Res call(
      {LoadingState<PastWinningDetail> winning,
      DeedDeliveryMethod? deedDeliveryMethod,
      bool isSaving});

  $LoadingStateCopyWith<PastWinningDetail, $Res> get winning;
  $DeedDeliveryMethodCopyWith<$Res>? get deedDeliveryMethod;
}

/// @nodoc
class _$WinningDetailStateCopyWithImpl<$Res, $Val extends WinningDetailState>
    implements $WinningDetailStateCopyWith<$Res> {
  _$WinningDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winning = null,
    Object? deedDeliveryMethod = freezed,
    Object? isSaving = null,
  }) {
    return _then(_value.copyWith(
      winning: null == winning
          ? _value.winning
          : winning // ignore: cast_nullable_to_non_nullable
              as LoadingState<PastWinningDetail>,
      deedDeliveryMethod: freezed == deedDeliveryMethod
          ? _value.deedDeliveryMethod
          : deedDeliveryMethod // ignore: cast_nullable_to_non_nullable
              as DeedDeliveryMethod?,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<PastWinningDetail, $Res> get winning {
    return $LoadingStateCopyWith<PastWinningDetail, $Res>(_value.winning,
        (value) {
      return _then(_value.copyWith(winning: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DeedDeliveryMethodCopyWith<$Res>? get deedDeliveryMethod {
    if (_value.deedDeliveryMethod == null) {
      return null;
    }

    return $DeedDeliveryMethodCopyWith<$Res>(_value.deedDeliveryMethod!,
        (value) {
      return _then(_value.copyWith(deedDeliveryMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WinningDetailStateImplCopyWith<$Res>
    implements $WinningDetailStateCopyWith<$Res> {
  factory _$$WinningDetailStateImplCopyWith(_$WinningDetailStateImpl value,
          $Res Function(_$WinningDetailStateImpl) then) =
      __$$WinningDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingState<PastWinningDetail> winning,
      DeedDeliveryMethod? deedDeliveryMethod,
      bool isSaving});

  @override
  $LoadingStateCopyWith<PastWinningDetail, $Res> get winning;
  @override
  $DeedDeliveryMethodCopyWith<$Res>? get deedDeliveryMethod;
}

/// @nodoc
class __$$WinningDetailStateImplCopyWithImpl<$Res>
    extends _$WinningDetailStateCopyWithImpl<$Res, _$WinningDetailStateImpl>
    implements _$$WinningDetailStateImplCopyWith<$Res> {
  __$$WinningDetailStateImplCopyWithImpl(_$WinningDetailStateImpl _value,
      $Res Function(_$WinningDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winning = null,
    Object? deedDeliveryMethod = freezed,
    Object? isSaving = null,
  }) {
    return _then(_$WinningDetailStateImpl(
      winning: null == winning
          ? _value.winning
          : winning // ignore: cast_nullable_to_non_nullable
              as LoadingState<PastWinningDetail>,
      deedDeliveryMethod: freezed == deedDeliveryMethod
          ? _value.deedDeliveryMethod
          : deedDeliveryMethod // ignore: cast_nullable_to_non_nullable
              as DeedDeliveryMethod?,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WinningDetailStateImpl extends _WinningDetailState {
  const _$WinningDetailStateImpl(
      {this.winning = const Uninitialized(),
      this.deedDeliveryMethod,
      this.isSaving = false})
      : super._();

  @override
  @JsonKey()
  final LoadingState<PastWinningDetail> winning;
  @override
  final DeedDeliveryMethod? deedDeliveryMethod;
  @override
  @JsonKey()
  final bool isSaving;

  @override
  String toString() {
    return 'WinningDetailState(winning: $winning, deedDeliveryMethod: $deedDeliveryMethod, isSaving: $isSaving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WinningDetailStateImpl &&
            (identical(other.winning, winning) || other.winning == winning) &&
            (identical(other.deedDeliveryMethod, deedDeliveryMethod) ||
                other.deedDeliveryMethod == deedDeliveryMethod) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, winning, deedDeliveryMethod, isSaving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WinningDetailStateImplCopyWith<_$WinningDetailStateImpl> get copyWith =>
      __$$WinningDetailStateImplCopyWithImpl<_$WinningDetailStateImpl>(
          this, _$identity);
}

abstract class _WinningDetailState extends WinningDetailState {
  const factory _WinningDetailState(
      {final LoadingState<PastWinningDetail> winning,
      final DeedDeliveryMethod? deedDeliveryMethod,
      final bool isSaving}) = _$WinningDetailStateImpl;
  const _WinningDetailState._() : super._();

  @override
  LoadingState<PastWinningDetail> get winning;
  @override
  DeedDeliveryMethod? get deedDeliveryMethod;
  @override
  bool get isSaving;
  @override
  @JsonKey(ignore: true)
  _$$WinningDetailStateImplCopyWith<_$WinningDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
