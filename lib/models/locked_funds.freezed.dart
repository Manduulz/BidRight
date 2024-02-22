// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locked_funds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LockedFundsSummary {
  List<ActiveAuctionLockedFund> get activeAuctions =>
      throw _privateConstructorUsedError;
  List<PendingWinningLockedFund> get pendingWinnings =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LockedFundsSummaryCopyWith<LockedFundsSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockedFundsSummaryCopyWith<$Res> {
  factory $LockedFundsSummaryCopyWith(
          LockedFundsSummary value, $Res Function(LockedFundsSummary) then) =
      _$LockedFundsSummaryCopyWithImpl<$Res, LockedFundsSummary>;
  @useResult
  $Res call(
      {List<ActiveAuctionLockedFund> activeAuctions,
      List<PendingWinningLockedFund> pendingWinnings});
}

/// @nodoc
class _$LockedFundsSummaryCopyWithImpl<$Res, $Val extends LockedFundsSummary>
    implements $LockedFundsSummaryCopyWith<$Res> {
  _$LockedFundsSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeAuctions = null,
    Object? pendingWinnings = null,
  }) {
    return _then(_value.copyWith(
      activeAuctions: null == activeAuctions
          ? _value.activeAuctions
          : activeAuctions // ignore: cast_nullable_to_non_nullable
              as List<ActiveAuctionLockedFund>,
      pendingWinnings: null == pendingWinnings
          ? _value.pendingWinnings
          : pendingWinnings // ignore: cast_nullable_to_non_nullable
              as List<PendingWinningLockedFund>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LockedFundsSummaryImplCopyWith<$Res>
    implements $LockedFundsSummaryCopyWith<$Res> {
  factory _$$LockedFundsSummaryImplCopyWith(_$LockedFundsSummaryImpl value,
          $Res Function(_$LockedFundsSummaryImpl) then) =
      __$$LockedFundsSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ActiveAuctionLockedFund> activeAuctions,
      List<PendingWinningLockedFund> pendingWinnings});
}

/// @nodoc
class __$$LockedFundsSummaryImplCopyWithImpl<$Res>
    extends _$LockedFundsSummaryCopyWithImpl<$Res, _$LockedFundsSummaryImpl>
    implements _$$LockedFundsSummaryImplCopyWith<$Res> {
  __$$LockedFundsSummaryImplCopyWithImpl(_$LockedFundsSummaryImpl _value,
      $Res Function(_$LockedFundsSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeAuctions = null,
    Object? pendingWinnings = null,
  }) {
    return _then(_$LockedFundsSummaryImpl(
      activeAuctions: null == activeAuctions
          ? _value._activeAuctions
          : activeAuctions // ignore: cast_nullable_to_non_nullable
              as List<ActiveAuctionLockedFund>,
      pendingWinnings: null == pendingWinnings
          ? _value._pendingWinnings
          : pendingWinnings // ignore: cast_nullable_to_non_nullable
              as List<PendingWinningLockedFund>,
    ));
  }
}

/// @nodoc

class _$LockedFundsSummaryImpl extends _LockedFundsSummary {
  const _$LockedFundsSummaryImpl(
      {final List<ActiveAuctionLockedFund> activeAuctions = const [],
      final List<PendingWinningLockedFund> pendingWinnings = const []})
      : _activeAuctions = activeAuctions,
        _pendingWinnings = pendingWinnings,
        super._();

  final List<ActiveAuctionLockedFund> _activeAuctions;
  @override
  @JsonKey()
  List<ActiveAuctionLockedFund> get activeAuctions {
    if (_activeAuctions is EqualUnmodifiableListView) return _activeAuctions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeAuctions);
  }

  final List<PendingWinningLockedFund> _pendingWinnings;
  @override
  @JsonKey()
  List<PendingWinningLockedFund> get pendingWinnings {
    if (_pendingWinnings is EqualUnmodifiableListView) return _pendingWinnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pendingWinnings);
  }

  @override
  String toString() {
    return 'LockedFundsSummary(activeAuctions: $activeAuctions, pendingWinnings: $pendingWinnings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LockedFundsSummaryImpl &&
            const DeepCollectionEquality()
                .equals(other._activeAuctions, _activeAuctions) &&
            const DeepCollectionEquality()
                .equals(other._pendingWinnings, _pendingWinnings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activeAuctions),
      const DeepCollectionEquality().hash(_pendingWinnings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LockedFundsSummaryImplCopyWith<_$LockedFundsSummaryImpl> get copyWith =>
      __$$LockedFundsSummaryImplCopyWithImpl<_$LockedFundsSummaryImpl>(
          this, _$identity);
}

abstract class _LockedFundsSummary extends LockedFundsSummary {
  const factory _LockedFundsSummary(
          {final List<ActiveAuctionLockedFund> activeAuctions,
          final List<PendingWinningLockedFund> pendingWinnings}) =
      _$LockedFundsSummaryImpl;
  const _LockedFundsSummary._() : super._();

  @override
  List<ActiveAuctionLockedFund> get activeAuctions;
  @override
  List<PendingWinningLockedFund> get pendingWinnings;
  @override
  @JsonKey(ignore: true)
  _$$LockedFundsSummaryImplCopyWith<_$LockedFundsSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActiveAuctionLockedFund {
  num get amount => throw _privateConstructorUsedError;
  LotSummary get lot => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActiveAuctionLockedFundCopyWith<ActiveAuctionLockedFund> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveAuctionLockedFundCopyWith<$Res> {
  factory $ActiveAuctionLockedFundCopyWith(ActiveAuctionLockedFund value,
          $Res Function(ActiveAuctionLockedFund) then) =
      _$ActiveAuctionLockedFundCopyWithImpl<$Res, ActiveAuctionLockedFund>;
  @useResult
  $Res call({num amount, LotSummary lot});

  $LotSummaryCopyWith<$Res> get lot;
}

/// @nodoc
class _$ActiveAuctionLockedFundCopyWithImpl<$Res,
        $Val extends ActiveAuctionLockedFund>
    implements $ActiveAuctionLockedFundCopyWith<$Res> {
  _$ActiveAuctionLockedFundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? lot = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      lot: null == lot
          ? _value.lot
          : lot // ignore: cast_nullable_to_non_nullable
              as LotSummary,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LotSummaryCopyWith<$Res> get lot {
    return $LotSummaryCopyWith<$Res>(_value.lot, (value) {
      return _then(_value.copyWith(lot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActiveAuctionLockedFundImplCopyWith<$Res>
    implements $ActiveAuctionLockedFundCopyWith<$Res> {
  factory _$$ActiveAuctionLockedFundImplCopyWith(
          _$ActiveAuctionLockedFundImpl value,
          $Res Function(_$ActiveAuctionLockedFundImpl) then) =
      __$$ActiveAuctionLockedFundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num amount, LotSummary lot});

  @override
  $LotSummaryCopyWith<$Res> get lot;
}

/// @nodoc
class __$$ActiveAuctionLockedFundImplCopyWithImpl<$Res>
    extends _$ActiveAuctionLockedFundCopyWithImpl<$Res,
        _$ActiveAuctionLockedFundImpl>
    implements _$$ActiveAuctionLockedFundImplCopyWith<$Res> {
  __$$ActiveAuctionLockedFundImplCopyWithImpl(
      _$ActiveAuctionLockedFundImpl _value,
      $Res Function(_$ActiveAuctionLockedFundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? lot = null,
  }) {
    return _then(_$ActiveAuctionLockedFundImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      lot: null == lot
          ? _value.lot
          : lot // ignore: cast_nullable_to_non_nullable
              as LotSummary,
    ));
  }
}

/// @nodoc

class _$ActiveAuctionLockedFundImpl extends _ActiveAuctionLockedFund {
  const _$ActiveAuctionLockedFundImpl({required this.amount, required this.lot})
      : super._();

  @override
  final num amount;
  @override
  final LotSummary lot;

  @override
  String toString() {
    return 'ActiveAuctionLockedFund(amount: $amount, lot: $lot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveAuctionLockedFundImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.lot, lot) || other.lot == lot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, lot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveAuctionLockedFundImplCopyWith<_$ActiveAuctionLockedFundImpl>
      get copyWith => __$$ActiveAuctionLockedFundImplCopyWithImpl<
          _$ActiveAuctionLockedFundImpl>(this, _$identity);
}

abstract class _ActiveAuctionLockedFund extends ActiveAuctionLockedFund {
  const factory _ActiveAuctionLockedFund(
      {required final num amount,
      required final LotSummary lot}) = _$ActiveAuctionLockedFundImpl;
  const _ActiveAuctionLockedFund._() : super._();

  @override
  num get amount;
  @override
  LotSummary get lot;
  @override
  @JsonKey(ignore: true)
  _$$ActiveAuctionLockedFundImplCopyWith<_$ActiveAuctionLockedFundImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PendingWinningLockedFund {
  num get bidAmount => throw _privateConstructorUsedError;
  num get downAmount => throw _privateConstructorUsedError;
  LotSummary get lot => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PendingWinningLockedFundCopyWith<PendingWinningLockedFund> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingWinningLockedFundCopyWith<$Res> {
  factory $PendingWinningLockedFundCopyWith(PendingWinningLockedFund value,
          $Res Function(PendingWinningLockedFund) then) =
      _$PendingWinningLockedFundCopyWithImpl<$Res, PendingWinningLockedFund>;
  @useResult
  $Res call({num bidAmount, num downAmount, LotSummary lot});

  $LotSummaryCopyWith<$Res> get lot;
}

/// @nodoc
class _$PendingWinningLockedFundCopyWithImpl<$Res,
        $Val extends PendingWinningLockedFund>
    implements $PendingWinningLockedFundCopyWith<$Res> {
  _$PendingWinningLockedFundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bidAmount = null,
    Object? downAmount = null,
    Object? lot = null,
  }) {
    return _then(_value.copyWith(
      bidAmount: null == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as num,
      downAmount: null == downAmount
          ? _value.downAmount
          : downAmount // ignore: cast_nullable_to_non_nullable
              as num,
      lot: null == lot
          ? _value.lot
          : lot // ignore: cast_nullable_to_non_nullable
              as LotSummary,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LotSummaryCopyWith<$Res> get lot {
    return $LotSummaryCopyWith<$Res>(_value.lot, (value) {
      return _then(_value.copyWith(lot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PendingWinningLockedFundImplCopyWith<$Res>
    implements $PendingWinningLockedFundCopyWith<$Res> {
  factory _$$PendingWinningLockedFundImplCopyWith(
          _$PendingWinningLockedFundImpl value,
          $Res Function(_$PendingWinningLockedFundImpl) then) =
      __$$PendingWinningLockedFundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num bidAmount, num downAmount, LotSummary lot});

  @override
  $LotSummaryCopyWith<$Res> get lot;
}

/// @nodoc
class __$$PendingWinningLockedFundImplCopyWithImpl<$Res>
    extends _$PendingWinningLockedFundCopyWithImpl<$Res,
        _$PendingWinningLockedFundImpl>
    implements _$$PendingWinningLockedFundImplCopyWith<$Res> {
  __$$PendingWinningLockedFundImplCopyWithImpl(
      _$PendingWinningLockedFundImpl _value,
      $Res Function(_$PendingWinningLockedFundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bidAmount = null,
    Object? downAmount = null,
    Object? lot = null,
  }) {
    return _then(_$PendingWinningLockedFundImpl(
      bidAmount: null == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as num,
      downAmount: null == downAmount
          ? _value.downAmount
          : downAmount // ignore: cast_nullable_to_non_nullable
              as num,
      lot: null == lot
          ? _value.lot
          : lot // ignore: cast_nullable_to_non_nullable
              as LotSummary,
    ));
  }
}

/// @nodoc

class _$PendingWinningLockedFundImpl extends _PendingWinningLockedFund {
  const _$PendingWinningLockedFundImpl(
      {required this.bidAmount, required this.downAmount, required this.lot})
      : super._();

  @override
  final num bidAmount;
  @override
  final num downAmount;
  @override
  final LotSummary lot;

  @override
  String toString() {
    return 'PendingWinningLockedFund(bidAmount: $bidAmount, downAmount: $downAmount, lot: $lot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingWinningLockedFundImpl &&
            (identical(other.bidAmount, bidAmount) ||
                other.bidAmount == bidAmount) &&
            (identical(other.downAmount, downAmount) ||
                other.downAmount == downAmount) &&
            (identical(other.lot, lot) || other.lot == lot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bidAmount, downAmount, lot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PendingWinningLockedFundImplCopyWith<_$PendingWinningLockedFundImpl>
      get copyWith => __$$PendingWinningLockedFundImplCopyWithImpl<
          _$PendingWinningLockedFundImpl>(this, _$identity);
}

abstract class _PendingWinningLockedFund extends PendingWinningLockedFund {
  const factory _PendingWinningLockedFund(
      {required final num bidAmount,
      required final num downAmount,
      required final LotSummary lot}) = _$PendingWinningLockedFundImpl;
  const _PendingWinningLockedFund._() : super._();

  @override
  num get bidAmount;
  @override
  num get downAmount;
  @override
  LotSummary get lot;
  @override
  @JsonKey(ignore: true)
  _$$PendingWinningLockedFundImplCopyWith<_$PendingWinningLockedFundImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LotSummary {
  int get id => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LotSummaryCopyWith<LotSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotSummaryCopyWith<$Res> {
  factory $LotSummaryCopyWith(
          LotSummary value, $Res Function(LotSummary) then) =
      _$LotSummaryCopyWithImpl<$Res, LotSummary>;
  @useResult
  $Res call({int id, Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$LotSummaryCopyWithImpl<$Res, $Val extends LotSummary>
    implements $LotSummaryCopyWith<$Res> {
  _$LotSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LotSummaryImplCopyWith<$Res>
    implements $LotSummaryCopyWith<$Res> {
  factory _$$LotSummaryImplCopyWith(
          _$LotSummaryImpl value, $Res Function(_$LotSummaryImpl) then) =
      __$$LotSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$LotSummaryImplCopyWithImpl<$Res>
    extends _$LotSummaryCopyWithImpl<$Res, _$LotSummaryImpl>
    implements _$$LotSummaryImplCopyWith<$Res> {
  __$$LotSummaryImplCopyWithImpl(
      _$LotSummaryImpl _value, $Res Function(_$LotSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
  }) {
    return _then(_$LotSummaryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

class _$LotSummaryImpl extends _LotSummary {
  const _$LotSummaryImpl({required this.id, required this.address}) : super._();

  @override
  final int id;
  @override
  final Address address;

  @override
  String toString() {
    return 'LotSummary(id: $id, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotSummaryImplCopyWith<_$LotSummaryImpl> get copyWith =>
      __$$LotSummaryImplCopyWithImpl<_$LotSummaryImpl>(this, _$identity);
}

abstract class _LotSummary extends LotSummary {
  const factory _LotSummary(
      {required final int id,
      required final Address address}) = _$LotSummaryImpl;
  const _LotSummary._() : super._();

  @override
  int get id;
  @override
  Address get address;
  @override
  @JsonKey(ignore: true)
  _$$LotSummaryImplCopyWith<_$LotSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
