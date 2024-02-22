// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'winnings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WinningsState {
  LoadingState<List<WinningsWithStatus>> get winnings =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WinningsStateCopyWith<WinningsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WinningsStateCopyWith<$Res> {
  factory $WinningsStateCopyWith(
          WinningsState value, $Res Function(WinningsState) then) =
      _$WinningsStateCopyWithImpl<$Res, WinningsState>;
  @useResult
  $Res call({LoadingState<List<WinningsWithStatus>> winnings});

  $LoadingStateCopyWith<List<WinningsWithStatus>, $Res> get winnings;
}

/// @nodoc
class _$WinningsStateCopyWithImpl<$Res, $Val extends WinningsState>
    implements $WinningsStateCopyWith<$Res> {
  _$WinningsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winnings = null,
  }) {
    return _then(_value.copyWith(
      winnings: null == winnings
          ? _value.winnings
          : winnings // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<WinningsWithStatus>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<List<WinningsWithStatus>, $Res> get winnings {
    return $LoadingStateCopyWith<List<WinningsWithStatus>, $Res>(
        _value.winnings, (value) {
      return _then(_value.copyWith(winnings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WinningsStateImplCopyWith<$Res>
    implements $WinningsStateCopyWith<$Res> {
  factory _$$WinningsStateImplCopyWith(
          _$WinningsStateImpl value, $Res Function(_$WinningsStateImpl) then) =
      __$$WinningsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoadingState<List<WinningsWithStatus>> winnings});

  @override
  $LoadingStateCopyWith<List<WinningsWithStatus>, $Res> get winnings;
}

/// @nodoc
class __$$WinningsStateImplCopyWithImpl<$Res>
    extends _$WinningsStateCopyWithImpl<$Res, _$WinningsStateImpl>
    implements _$$WinningsStateImplCopyWith<$Res> {
  __$$WinningsStateImplCopyWithImpl(
      _$WinningsStateImpl _value, $Res Function(_$WinningsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winnings = null,
  }) {
    return _then(_$WinningsStateImpl(
      winnings: null == winnings
          ? _value.winnings
          : winnings // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<WinningsWithStatus>>,
    ));
  }
}

/// @nodoc

class _$WinningsStateImpl extends _WinningsState {
  const _$WinningsStateImpl({this.winnings = const Uninitialized()})
      : super._();

  @override
  @JsonKey()
  final LoadingState<List<WinningsWithStatus>> winnings;

  @override
  String toString() {
    return 'WinningsState(winnings: $winnings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WinningsStateImpl &&
            (identical(other.winnings, winnings) ||
                other.winnings == winnings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, winnings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WinningsStateImplCopyWith<_$WinningsStateImpl> get copyWith =>
      __$$WinningsStateImplCopyWithImpl<_$WinningsStateImpl>(this, _$identity);
}

abstract class _WinningsState extends WinningsState {
  const factory _WinningsState(
          {final LoadingState<List<WinningsWithStatus>> winnings}) =
      _$WinningsStateImpl;
  const _WinningsState._() : super._();

  @override
  LoadingState<List<WinningsWithStatus>> get winnings;
  @override
  @JsonKey(ignore: true)
  _$$WinningsStateImplCopyWith<_$WinningsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WinningsWithStatus {
  CaseStatus get status => throw _privateConstructorUsedError;
  List<PastWinning> get winnings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WinningsWithStatusCopyWith<WinningsWithStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WinningsWithStatusCopyWith<$Res> {
  factory $WinningsWithStatusCopyWith(
          WinningsWithStatus value, $Res Function(WinningsWithStatus) then) =
      _$WinningsWithStatusCopyWithImpl<$Res, WinningsWithStatus>;
  @useResult
  $Res call({CaseStatus status, List<PastWinning> winnings});
}

/// @nodoc
class _$WinningsWithStatusCopyWithImpl<$Res, $Val extends WinningsWithStatus>
    implements $WinningsWithStatusCopyWith<$Res> {
  _$WinningsWithStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? winnings = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CaseStatus,
      winnings: null == winnings
          ? _value.winnings
          : winnings // ignore: cast_nullable_to_non_nullable
              as List<PastWinning>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WinningsWithStatusImplCopyWith<$Res>
    implements $WinningsWithStatusCopyWith<$Res> {
  factory _$$WinningsWithStatusImplCopyWith(_$WinningsWithStatusImpl value,
          $Res Function(_$WinningsWithStatusImpl) then) =
      __$$WinningsWithStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CaseStatus status, List<PastWinning> winnings});
}

/// @nodoc
class __$$WinningsWithStatusImplCopyWithImpl<$Res>
    extends _$WinningsWithStatusCopyWithImpl<$Res, _$WinningsWithStatusImpl>
    implements _$$WinningsWithStatusImplCopyWith<$Res> {
  __$$WinningsWithStatusImplCopyWithImpl(_$WinningsWithStatusImpl _value,
      $Res Function(_$WinningsWithStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? winnings = null,
  }) {
    return _then(_$WinningsWithStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CaseStatus,
      winnings: null == winnings
          ? _value._winnings
          : winnings // ignore: cast_nullable_to_non_nullable
              as List<PastWinning>,
    ));
  }
}

/// @nodoc

class _$WinningsWithStatusImpl implements _WinningsWithStatus {
  const _$WinningsWithStatusImpl(
      {required this.status, required final List<PastWinning> winnings})
      : _winnings = winnings;

  @override
  final CaseStatus status;
  final List<PastWinning> _winnings;
  @override
  List<PastWinning> get winnings {
    if (_winnings is EqualUnmodifiableListView) return _winnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_winnings);
  }

  @override
  String toString() {
    return 'WinningsWithStatus(status: $status, winnings: $winnings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WinningsWithStatusImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._winnings, _winnings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_winnings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WinningsWithStatusImplCopyWith<_$WinningsWithStatusImpl> get copyWith =>
      __$$WinningsWithStatusImplCopyWithImpl<_$WinningsWithStatusImpl>(
          this, _$identity);
}

abstract class _WinningsWithStatus implements WinningsWithStatus {
  const factory _WinningsWithStatus(
      {required final CaseStatus status,
      required final List<PastWinning> winnings}) = _$WinningsWithStatusImpl;

  @override
  CaseStatus get status;
  @override
  List<PastWinning> get winnings;
  @override
  @JsonKey(ignore: true)
  _$$WinningsWithStatusImplCopyWith<_$WinningsWithStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
