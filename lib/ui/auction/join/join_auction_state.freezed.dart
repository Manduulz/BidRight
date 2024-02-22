// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_auction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JoinAuctionState {
  LoadingState<int> get availableBalance => throw _privateConstructorUsedError;
  LoadingState<List<PurchaseProfile>> get profiles =>
      throw _privateConstructorUsedError;
  String? get paddleNumber => throw _privateConstructorUsedError;
  int? get lockedFunds => throw _privateConstructorUsedError;
  int? get selectedProfileId => throw _privateConstructorUsedError;
  ParticipationType? get participationType =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JoinAuctionStateCopyWith<JoinAuctionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinAuctionStateCopyWith<$Res> {
  factory $JoinAuctionStateCopyWith(
          JoinAuctionState value, $Res Function(JoinAuctionState) then) =
      _$JoinAuctionStateCopyWithImpl<$Res, JoinAuctionState>;
  @useResult
  $Res call(
      {LoadingState<int> availableBalance,
      LoadingState<List<PurchaseProfile>> profiles,
      String? paddleNumber,
      int? lockedFunds,
      int? selectedProfileId,
      ParticipationType? participationType,
      bool isSubmitting});

  $LoadingStateCopyWith<int, $Res> get availableBalance;
  $LoadingStateCopyWith<List<PurchaseProfile>, $Res> get profiles;
}

/// @nodoc
class _$JoinAuctionStateCopyWithImpl<$Res, $Val extends JoinAuctionState>
    implements $JoinAuctionStateCopyWith<$Res> {
  _$JoinAuctionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableBalance = null,
    Object? profiles = null,
    Object? paddleNumber = freezed,
    Object? lockedFunds = freezed,
    Object? selectedProfileId = freezed,
    Object? participationType = freezed,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      availableBalance: null == availableBalance
          ? _value.availableBalance
          : availableBalance // ignore: cast_nullable_to_non_nullable
              as LoadingState<int>,
      profiles: null == profiles
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<PurchaseProfile>>,
      paddleNumber: freezed == paddleNumber
          ? _value.paddleNumber
          : paddleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      lockedFunds: freezed == lockedFunds
          ? _value.lockedFunds
          : lockedFunds // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedProfileId: freezed == selectedProfileId
          ? _value.selectedProfileId
          : selectedProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      participationType: freezed == participationType
          ? _value.participationType
          : participationType // ignore: cast_nullable_to_non_nullable
              as ParticipationType?,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<int, $Res> get availableBalance {
    return $LoadingStateCopyWith<int, $Res>(_value.availableBalance, (value) {
      return _then(_value.copyWith(availableBalance: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<List<PurchaseProfile>, $Res> get profiles {
    return $LoadingStateCopyWith<List<PurchaseProfile>, $Res>(_value.profiles,
        (value) {
      return _then(_value.copyWith(profiles: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JoinAuctionStateImplCopyWith<$Res>
    implements $JoinAuctionStateCopyWith<$Res> {
  factory _$$JoinAuctionStateImplCopyWith(_$JoinAuctionStateImpl value,
          $Res Function(_$JoinAuctionStateImpl) then) =
      __$$JoinAuctionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingState<int> availableBalance,
      LoadingState<List<PurchaseProfile>> profiles,
      String? paddleNumber,
      int? lockedFunds,
      int? selectedProfileId,
      ParticipationType? participationType,
      bool isSubmitting});

  @override
  $LoadingStateCopyWith<int, $Res> get availableBalance;
  @override
  $LoadingStateCopyWith<List<PurchaseProfile>, $Res> get profiles;
}

/// @nodoc
class __$$JoinAuctionStateImplCopyWithImpl<$Res>
    extends _$JoinAuctionStateCopyWithImpl<$Res, _$JoinAuctionStateImpl>
    implements _$$JoinAuctionStateImplCopyWith<$Res> {
  __$$JoinAuctionStateImplCopyWithImpl(_$JoinAuctionStateImpl _value,
      $Res Function(_$JoinAuctionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableBalance = null,
    Object? profiles = null,
    Object? paddleNumber = freezed,
    Object? lockedFunds = freezed,
    Object? selectedProfileId = freezed,
    Object? participationType = freezed,
    Object? isSubmitting = null,
  }) {
    return _then(_$JoinAuctionStateImpl(
      availableBalance: null == availableBalance
          ? _value.availableBalance
          : availableBalance // ignore: cast_nullable_to_non_nullable
              as LoadingState<int>,
      profiles: null == profiles
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<PurchaseProfile>>,
      paddleNumber: freezed == paddleNumber
          ? _value.paddleNumber
          : paddleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      lockedFunds: freezed == lockedFunds
          ? _value.lockedFunds
          : lockedFunds // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedProfileId: freezed == selectedProfileId
          ? _value.selectedProfileId
          : selectedProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      participationType: freezed == participationType
          ? _value.participationType
          : participationType // ignore: cast_nullable_to_non_nullable
              as ParticipationType?,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$JoinAuctionStateImpl extends _JoinAuctionState {
  const _$JoinAuctionStateImpl(
      {this.availableBalance = const Uninitialized(),
      this.profiles = const Uninitialized(),
      this.paddleNumber,
      this.lockedFunds,
      this.selectedProfileId,
      this.participationType,
      this.isSubmitting = false})
      : super._();

  @override
  @JsonKey()
  final LoadingState<int> availableBalance;
  @override
  @JsonKey()
  final LoadingState<List<PurchaseProfile>> profiles;
  @override
  final String? paddleNumber;
  @override
  final int? lockedFunds;
  @override
  final int? selectedProfileId;
  @override
  final ParticipationType? participationType;
  @override
  @JsonKey()
  final bool isSubmitting;

  @override
  String toString() {
    return 'JoinAuctionState(availableBalance: $availableBalance, profiles: $profiles, paddleNumber: $paddleNumber, lockedFunds: $lockedFunds, selectedProfileId: $selectedProfileId, participationType: $participationType, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinAuctionStateImpl &&
            (identical(other.availableBalance, availableBalance) ||
                other.availableBalance == availableBalance) &&
            (identical(other.profiles, profiles) ||
                other.profiles == profiles) &&
            (identical(other.paddleNumber, paddleNumber) ||
                other.paddleNumber == paddleNumber) &&
            (identical(other.lockedFunds, lockedFunds) ||
                other.lockedFunds == lockedFunds) &&
            (identical(other.selectedProfileId, selectedProfileId) ||
                other.selectedProfileId == selectedProfileId) &&
            (identical(other.participationType, participationType) ||
                other.participationType == participationType) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      availableBalance,
      profiles,
      paddleNumber,
      lockedFunds,
      selectedProfileId,
      participationType,
      isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinAuctionStateImplCopyWith<_$JoinAuctionStateImpl> get copyWith =>
      __$$JoinAuctionStateImplCopyWithImpl<_$JoinAuctionStateImpl>(
          this, _$identity);
}

abstract class _JoinAuctionState extends JoinAuctionState {
  const factory _JoinAuctionState(
      {final LoadingState<int> availableBalance,
      final LoadingState<List<PurchaseProfile>> profiles,
      final String? paddleNumber,
      final int? lockedFunds,
      final int? selectedProfileId,
      final ParticipationType? participationType,
      final bool isSubmitting}) = _$JoinAuctionStateImpl;
  const _JoinAuctionState._() : super._();

  @override
  LoadingState<int> get availableBalance;
  @override
  LoadingState<List<PurchaseProfile>> get profiles;
  @override
  String? get paddleNumber;
  @override
  int? get lockedFunds;
  @override
  int? get selectedProfileId;
  @override
  ParticipationType? get participationType;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$JoinAuctionStateImplCopyWith<_$JoinAuctionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
