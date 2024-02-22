// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuctionEvent {
  int get lotId => throw _privateConstructorUsedError;
  LotUpdate? get lotUpdate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)
        bidPlaced,
    required TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)
        pastBids,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) disconnected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) started,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopping,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopCancelled,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopped,
    required TResult Function(int lotId, LotUpdate? lotUpdate, String? message)
        error,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connectionReset,
    required TResult Function(int lotId, LotUpdate? lotUpdate) kicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult? Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)?
        pastBids,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult? Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? kicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)? pastBids,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult Function(int lotId, LotUpdate? lotUpdate)? kicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BidPlaced value) bidPlaced,
    required TResult Function(PastBids value) pastBids,
    required TResult Function(AuctionConnected value) connected,
    required TResult Function(AuctionDisconnected value) disconnected,
    required TResult Function(AuctionStarted value) started,
    required TResult Function(AuctionStopping value) stopping,
    required TResult Function(AuctionStopCancelled value) stopCancelled,
    required TResult Function(AuctionStopped value) stopped,
    required TResult Function(AuctionError value) error,
    required TResult Function(AuctionConnectionReset value) connectionReset,
    required TResult Function(AuctionKicked value) kicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BidPlaced value)? bidPlaced,
    TResult? Function(PastBids value)? pastBids,
    TResult? Function(AuctionConnected value)? connected,
    TResult? Function(AuctionDisconnected value)? disconnected,
    TResult? Function(AuctionStarted value)? started,
    TResult? Function(AuctionStopping value)? stopping,
    TResult? Function(AuctionStopCancelled value)? stopCancelled,
    TResult? Function(AuctionStopped value)? stopped,
    TResult? Function(AuctionError value)? error,
    TResult? Function(AuctionConnectionReset value)? connectionReset,
    TResult? Function(AuctionKicked value)? kicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BidPlaced value)? bidPlaced,
    TResult Function(PastBids value)? pastBids,
    TResult Function(AuctionConnected value)? connected,
    TResult Function(AuctionDisconnected value)? disconnected,
    TResult Function(AuctionStarted value)? started,
    TResult Function(AuctionStopping value)? stopping,
    TResult Function(AuctionStopCancelled value)? stopCancelled,
    TResult Function(AuctionStopped value)? stopped,
    TResult Function(AuctionError value)? error,
    TResult Function(AuctionConnectionReset value)? connectionReset,
    TResult Function(AuctionKicked value)? kicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuctionEventCopyWith<AuctionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionEventCopyWith<$Res> {
  factory $AuctionEventCopyWith(
          AuctionEvent value, $Res Function(AuctionEvent) then) =
      _$AuctionEventCopyWithImpl<$Res, AuctionEvent>;
  @useResult
  $Res call({int lotId, LotUpdate? lotUpdate});

  $LotUpdateCopyWith<$Res>? get lotUpdate;
}

/// @nodoc
class _$AuctionEventCopyWithImpl<$Res, $Val extends AuctionEvent>
    implements $AuctionEventCopyWith<$Res> {
  _$AuctionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? lotUpdate = freezed,
  }) {
    return _then(_value.copyWith(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      lotUpdate: freezed == lotUpdate
          ? _value.lotUpdate
          : lotUpdate // ignore: cast_nullable_to_non_nullable
              as LotUpdate?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LotUpdateCopyWith<$Res>? get lotUpdate {
    if (_value.lotUpdate == null) {
      return null;
    }

    return $LotUpdateCopyWith<$Res>(_value.lotUpdate!, (value) {
      return _then(_value.copyWith(lotUpdate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BidPlacedImplCopyWith<$Res>
    implements $AuctionEventCopyWith<$Res> {
  factory _$$BidPlacedImplCopyWith(
          _$BidPlacedImpl value, $Res Function(_$BidPlacedImpl) then) =
      __$$BidPlacedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int lotId, LotUpdate? lotUpdate, Bid bid});

  @override
  $LotUpdateCopyWith<$Res>? get lotUpdate;
  $BidCopyWith<$Res> get bid;
}

/// @nodoc
class __$$BidPlacedImplCopyWithImpl<$Res>
    extends _$AuctionEventCopyWithImpl<$Res, _$BidPlacedImpl>
    implements _$$BidPlacedImplCopyWith<$Res> {
  __$$BidPlacedImplCopyWithImpl(
      _$BidPlacedImpl _value, $Res Function(_$BidPlacedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? lotUpdate = freezed,
    Object? bid = null,
  }) {
    return _then(_$BidPlacedImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      lotUpdate: freezed == lotUpdate
          ? _value.lotUpdate
          : lotUpdate // ignore: cast_nullable_to_non_nullable
              as LotUpdate?,
      bid: null == bid
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as Bid,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BidCopyWith<$Res> get bid {
    return $BidCopyWith<$Res>(_value.bid, (value) {
      return _then(_value.copyWith(bid: value));
    });
  }
}

/// @nodoc

class _$BidPlacedImpl extends BidPlaced {
  const _$BidPlacedImpl(
      {required this.lotId, this.lotUpdate, required this.bid})
      : super._();

  @override
  final int lotId;
  @override
  final LotUpdate? lotUpdate;
  @override
  final Bid bid;

  @override
  String toString() {
    return 'AuctionEvent.bidPlaced(lotId: $lotId, lotUpdate: $lotUpdate, bid: $bid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidPlacedImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.lotUpdate, lotUpdate) ||
                other.lotUpdate == lotUpdate) &&
            (identical(other.bid, bid) || other.bid == bid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lotId, lotUpdate, bid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BidPlacedImplCopyWith<_$BidPlacedImpl> get copyWith =>
      __$$BidPlacedImplCopyWithImpl<_$BidPlacedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)
        bidPlaced,
    required TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)
        pastBids,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) disconnected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) started,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopping,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopCancelled,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopped,
    required TResult Function(int lotId, LotUpdate? lotUpdate, String? message)
        error,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connectionReset,
    required TResult Function(int lotId, LotUpdate? lotUpdate) kicked,
  }) {
    return bidPlaced(lotId, lotUpdate, bid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult? Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)?
        pastBids,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult? Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? kicked,
  }) {
    return bidPlaced?.call(lotId, lotUpdate, bid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)? pastBids,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult Function(int lotId, LotUpdate? lotUpdate)? kicked,
    required TResult orElse(),
  }) {
    if (bidPlaced != null) {
      return bidPlaced(lotId, lotUpdate, bid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BidPlaced value) bidPlaced,
    required TResult Function(PastBids value) pastBids,
    required TResult Function(AuctionConnected value) connected,
    required TResult Function(AuctionDisconnected value) disconnected,
    required TResult Function(AuctionStarted value) started,
    required TResult Function(AuctionStopping value) stopping,
    required TResult Function(AuctionStopCancelled value) stopCancelled,
    required TResult Function(AuctionStopped value) stopped,
    required TResult Function(AuctionError value) error,
    required TResult Function(AuctionConnectionReset value) connectionReset,
    required TResult Function(AuctionKicked value) kicked,
  }) {
    return bidPlaced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BidPlaced value)? bidPlaced,
    TResult? Function(PastBids value)? pastBids,
    TResult? Function(AuctionConnected value)? connected,
    TResult? Function(AuctionDisconnected value)? disconnected,
    TResult? Function(AuctionStarted value)? started,
    TResult? Function(AuctionStopping value)? stopping,
    TResult? Function(AuctionStopCancelled value)? stopCancelled,
    TResult? Function(AuctionStopped value)? stopped,
    TResult? Function(AuctionError value)? error,
    TResult? Function(AuctionConnectionReset value)? connectionReset,
    TResult? Function(AuctionKicked value)? kicked,
  }) {
    return bidPlaced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BidPlaced value)? bidPlaced,
    TResult Function(PastBids value)? pastBids,
    TResult Function(AuctionConnected value)? connected,
    TResult Function(AuctionDisconnected value)? disconnected,
    TResult Function(AuctionStarted value)? started,
    TResult Function(AuctionStopping value)? stopping,
    TResult Function(AuctionStopCancelled value)? stopCancelled,
    TResult Function(AuctionStopped value)? stopped,
    TResult Function(AuctionError value)? error,
    TResult Function(AuctionConnectionReset value)? connectionReset,
    TResult Function(AuctionKicked value)? kicked,
    required TResult orElse(),
  }) {
    if (bidPlaced != null) {
      return bidPlaced(this);
    }
    return orElse();
  }
}

abstract class BidPlaced extends AuctionEvent {
  const factory BidPlaced(
      {required final int lotId,
      final LotUpdate? lotUpdate,
      required final Bid bid}) = _$BidPlacedImpl;
  const BidPlaced._() : super._();

  @override
  int get lotId;
  @override
  LotUpdate? get lotUpdate;
  Bid get bid;
  @override
  @JsonKey(ignore: true)
  _$$BidPlacedImplCopyWith<_$BidPlacedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PastBidsImplCopyWith<$Res>
    implements $AuctionEventCopyWith<$Res> {
  factory _$$PastBidsImplCopyWith(
          _$PastBidsImpl value, $Res Function(_$PastBidsImpl) then) =
      __$$PastBidsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int lotId, LotUpdate? lotUpdate, List<Bid> bids});

  @override
  $LotUpdateCopyWith<$Res>? get lotUpdate;
}

/// @nodoc
class __$$PastBidsImplCopyWithImpl<$Res>
    extends _$AuctionEventCopyWithImpl<$Res, _$PastBidsImpl>
    implements _$$PastBidsImplCopyWith<$Res> {
  __$$PastBidsImplCopyWithImpl(
      _$PastBidsImpl _value, $Res Function(_$PastBidsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? lotUpdate = freezed,
    Object? bids = null,
  }) {
    return _then(_$PastBidsImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      lotUpdate: freezed == lotUpdate
          ? _value.lotUpdate
          : lotUpdate // ignore: cast_nullable_to_non_nullable
              as LotUpdate?,
      bids: null == bids
          ? _value._bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<Bid>,
    ));
  }
}

/// @nodoc

class _$PastBidsImpl extends PastBids {
  const _$PastBidsImpl(
      {required this.lotId, this.lotUpdate, required final List<Bid> bids})
      : _bids = bids,
        super._();

  @override
  final int lotId;
  @override
  final LotUpdate? lotUpdate;
  final List<Bid> _bids;
  @override
  List<Bid> get bids {
    if (_bids is EqualUnmodifiableListView) return _bids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bids);
  }

  @override
  String toString() {
    return 'AuctionEvent.pastBids(lotId: $lotId, lotUpdate: $lotUpdate, bids: $bids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PastBidsImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.lotUpdate, lotUpdate) ||
                other.lotUpdate == lotUpdate) &&
            const DeepCollectionEquality().equals(other._bids, _bids));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lotId, lotUpdate,
      const DeepCollectionEquality().hash(_bids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PastBidsImplCopyWith<_$PastBidsImpl> get copyWith =>
      __$$PastBidsImplCopyWithImpl<_$PastBidsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)
        bidPlaced,
    required TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)
        pastBids,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) disconnected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) started,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopping,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopCancelled,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopped,
    required TResult Function(int lotId, LotUpdate? lotUpdate, String? message)
        error,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connectionReset,
    required TResult Function(int lotId, LotUpdate? lotUpdate) kicked,
  }) {
    return pastBids(lotId, lotUpdate, bids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult? Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)?
        pastBids,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult? Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? kicked,
  }) {
    return pastBids?.call(lotId, lotUpdate, bids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)? pastBids,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult Function(int lotId, LotUpdate? lotUpdate)? kicked,
    required TResult orElse(),
  }) {
    if (pastBids != null) {
      return pastBids(lotId, lotUpdate, bids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BidPlaced value) bidPlaced,
    required TResult Function(PastBids value) pastBids,
    required TResult Function(AuctionConnected value) connected,
    required TResult Function(AuctionDisconnected value) disconnected,
    required TResult Function(AuctionStarted value) started,
    required TResult Function(AuctionStopping value) stopping,
    required TResult Function(AuctionStopCancelled value) stopCancelled,
    required TResult Function(AuctionStopped value) stopped,
    required TResult Function(AuctionError value) error,
    required TResult Function(AuctionConnectionReset value) connectionReset,
    required TResult Function(AuctionKicked value) kicked,
  }) {
    return pastBids(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BidPlaced value)? bidPlaced,
    TResult? Function(PastBids value)? pastBids,
    TResult? Function(AuctionConnected value)? connected,
    TResult? Function(AuctionDisconnected value)? disconnected,
    TResult? Function(AuctionStarted value)? started,
    TResult? Function(AuctionStopping value)? stopping,
    TResult? Function(AuctionStopCancelled value)? stopCancelled,
    TResult? Function(AuctionStopped value)? stopped,
    TResult? Function(AuctionError value)? error,
    TResult? Function(AuctionConnectionReset value)? connectionReset,
    TResult? Function(AuctionKicked value)? kicked,
  }) {
    return pastBids?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BidPlaced value)? bidPlaced,
    TResult Function(PastBids value)? pastBids,
    TResult Function(AuctionConnected value)? connected,
    TResult Function(AuctionDisconnected value)? disconnected,
    TResult Function(AuctionStarted value)? started,
    TResult Function(AuctionStopping value)? stopping,
    TResult Function(AuctionStopCancelled value)? stopCancelled,
    TResult Function(AuctionStopped value)? stopped,
    TResult Function(AuctionError value)? error,
    TResult Function(AuctionConnectionReset value)? connectionReset,
    TResult Function(AuctionKicked value)? kicked,
    required TResult orElse(),
  }) {
    if (pastBids != null) {
      return pastBids(this);
    }
    return orElse();
  }
}

abstract class PastBids extends AuctionEvent {
  const factory PastBids(
      {required final int lotId,
      final LotUpdate? lotUpdate,
      required final List<Bid> bids}) = _$PastBidsImpl;
  const PastBids._() : super._();

  @override
  int get lotId;
  @override
  LotUpdate? get lotUpdate;
  List<Bid> get bids;
  @override
  @JsonKey(ignore: true)
  _$$PastBidsImplCopyWith<_$PastBidsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuctionConnectedImplCopyWith<$Res>
    implements $AuctionEventCopyWith<$Res> {
  factory _$$AuctionConnectedImplCopyWith(_$AuctionConnectedImpl value,
          $Res Function(_$AuctionConnectedImpl) then) =
      __$$AuctionConnectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int lotId, LotUpdate? lotUpdate});

  @override
  $LotUpdateCopyWith<$Res>? get lotUpdate;
}

/// @nodoc
class __$$AuctionConnectedImplCopyWithImpl<$Res>
    extends _$AuctionEventCopyWithImpl<$Res, _$AuctionConnectedImpl>
    implements _$$AuctionConnectedImplCopyWith<$Res> {
  __$$AuctionConnectedImplCopyWithImpl(_$AuctionConnectedImpl _value,
      $Res Function(_$AuctionConnectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? lotUpdate = freezed,
  }) {
    return _then(_$AuctionConnectedImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      lotUpdate: freezed == lotUpdate
          ? _value.lotUpdate
          : lotUpdate // ignore: cast_nullable_to_non_nullable
              as LotUpdate?,
    ));
  }
}

/// @nodoc

class _$AuctionConnectedImpl extends AuctionConnected {
  const _$AuctionConnectedImpl({required this.lotId, this.lotUpdate})
      : super._();

  @override
  final int lotId;
  @override
  final LotUpdate? lotUpdate;

  @override
  String toString() {
    return 'AuctionEvent.connected(lotId: $lotId, lotUpdate: $lotUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionConnectedImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.lotUpdate, lotUpdate) ||
                other.lotUpdate == lotUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lotId, lotUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionConnectedImplCopyWith<_$AuctionConnectedImpl> get copyWith =>
      __$$AuctionConnectedImplCopyWithImpl<_$AuctionConnectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)
        bidPlaced,
    required TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)
        pastBids,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) disconnected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) started,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopping,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopCancelled,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopped,
    required TResult Function(int lotId, LotUpdate? lotUpdate, String? message)
        error,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connectionReset,
    required TResult Function(int lotId, LotUpdate? lotUpdate) kicked,
  }) {
    return connected(lotId, lotUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult? Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)?
        pastBids,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult? Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? kicked,
  }) {
    return connected?.call(lotId, lotUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)? pastBids,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult Function(int lotId, LotUpdate? lotUpdate)? kicked,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(lotId, lotUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BidPlaced value) bidPlaced,
    required TResult Function(PastBids value) pastBids,
    required TResult Function(AuctionConnected value) connected,
    required TResult Function(AuctionDisconnected value) disconnected,
    required TResult Function(AuctionStarted value) started,
    required TResult Function(AuctionStopping value) stopping,
    required TResult Function(AuctionStopCancelled value) stopCancelled,
    required TResult Function(AuctionStopped value) stopped,
    required TResult Function(AuctionError value) error,
    required TResult Function(AuctionConnectionReset value) connectionReset,
    required TResult Function(AuctionKicked value) kicked,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BidPlaced value)? bidPlaced,
    TResult? Function(PastBids value)? pastBids,
    TResult? Function(AuctionConnected value)? connected,
    TResult? Function(AuctionDisconnected value)? disconnected,
    TResult? Function(AuctionStarted value)? started,
    TResult? Function(AuctionStopping value)? stopping,
    TResult? Function(AuctionStopCancelled value)? stopCancelled,
    TResult? Function(AuctionStopped value)? stopped,
    TResult? Function(AuctionError value)? error,
    TResult? Function(AuctionConnectionReset value)? connectionReset,
    TResult? Function(AuctionKicked value)? kicked,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BidPlaced value)? bidPlaced,
    TResult Function(PastBids value)? pastBids,
    TResult Function(AuctionConnected value)? connected,
    TResult Function(AuctionDisconnected value)? disconnected,
    TResult Function(AuctionStarted value)? started,
    TResult Function(AuctionStopping value)? stopping,
    TResult Function(AuctionStopCancelled value)? stopCancelled,
    TResult Function(AuctionStopped value)? stopped,
    TResult Function(AuctionError value)? error,
    TResult Function(AuctionConnectionReset value)? connectionReset,
    TResult Function(AuctionKicked value)? kicked,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class AuctionConnected extends AuctionEvent {
  const factory AuctionConnected(
      {required final int lotId,
      final LotUpdate? lotUpdate}) = _$AuctionConnectedImpl;
  const AuctionConnected._() : super._();

  @override
  int get lotId;
  @override
  LotUpdate? get lotUpdate;
  @override
  @JsonKey(ignore: true)
  _$$AuctionConnectedImplCopyWith<_$AuctionConnectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuctionDisconnectedImplCopyWith<$Res>
    implements $AuctionEventCopyWith<$Res> {
  factory _$$AuctionDisconnectedImplCopyWith(_$AuctionDisconnectedImpl value,
          $Res Function(_$AuctionDisconnectedImpl) then) =
      __$$AuctionDisconnectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int lotId, LotUpdate? lotUpdate});

  @override
  $LotUpdateCopyWith<$Res>? get lotUpdate;
}

/// @nodoc
class __$$AuctionDisconnectedImplCopyWithImpl<$Res>
    extends _$AuctionEventCopyWithImpl<$Res, _$AuctionDisconnectedImpl>
    implements _$$AuctionDisconnectedImplCopyWith<$Res> {
  __$$AuctionDisconnectedImplCopyWithImpl(_$AuctionDisconnectedImpl _value,
      $Res Function(_$AuctionDisconnectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? lotUpdate = freezed,
  }) {
    return _then(_$AuctionDisconnectedImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      lotUpdate: freezed == lotUpdate
          ? _value.lotUpdate
          : lotUpdate // ignore: cast_nullable_to_non_nullable
              as LotUpdate?,
    ));
  }
}

/// @nodoc

class _$AuctionDisconnectedImpl extends AuctionDisconnected {
  const _$AuctionDisconnectedImpl({required this.lotId, this.lotUpdate})
      : super._();

  @override
  final int lotId;
  @override
  final LotUpdate? lotUpdate;

  @override
  String toString() {
    return 'AuctionEvent.disconnected(lotId: $lotId, lotUpdate: $lotUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionDisconnectedImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.lotUpdate, lotUpdate) ||
                other.lotUpdate == lotUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lotId, lotUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionDisconnectedImplCopyWith<_$AuctionDisconnectedImpl> get copyWith =>
      __$$AuctionDisconnectedImplCopyWithImpl<_$AuctionDisconnectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)
        bidPlaced,
    required TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)
        pastBids,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) disconnected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) started,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopping,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopCancelled,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopped,
    required TResult Function(int lotId, LotUpdate? lotUpdate, String? message)
        error,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connectionReset,
    required TResult Function(int lotId, LotUpdate? lotUpdate) kicked,
  }) {
    return disconnected(lotId, lotUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult? Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)?
        pastBids,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult? Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? kicked,
  }) {
    return disconnected?.call(lotId, lotUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)? pastBids,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult Function(int lotId, LotUpdate? lotUpdate)? kicked,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(lotId, lotUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BidPlaced value) bidPlaced,
    required TResult Function(PastBids value) pastBids,
    required TResult Function(AuctionConnected value) connected,
    required TResult Function(AuctionDisconnected value) disconnected,
    required TResult Function(AuctionStarted value) started,
    required TResult Function(AuctionStopping value) stopping,
    required TResult Function(AuctionStopCancelled value) stopCancelled,
    required TResult Function(AuctionStopped value) stopped,
    required TResult Function(AuctionError value) error,
    required TResult Function(AuctionConnectionReset value) connectionReset,
    required TResult Function(AuctionKicked value) kicked,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BidPlaced value)? bidPlaced,
    TResult? Function(PastBids value)? pastBids,
    TResult? Function(AuctionConnected value)? connected,
    TResult? Function(AuctionDisconnected value)? disconnected,
    TResult? Function(AuctionStarted value)? started,
    TResult? Function(AuctionStopping value)? stopping,
    TResult? Function(AuctionStopCancelled value)? stopCancelled,
    TResult? Function(AuctionStopped value)? stopped,
    TResult? Function(AuctionError value)? error,
    TResult? Function(AuctionConnectionReset value)? connectionReset,
    TResult? Function(AuctionKicked value)? kicked,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BidPlaced value)? bidPlaced,
    TResult Function(PastBids value)? pastBids,
    TResult Function(AuctionConnected value)? connected,
    TResult Function(AuctionDisconnected value)? disconnected,
    TResult Function(AuctionStarted value)? started,
    TResult Function(AuctionStopping value)? stopping,
    TResult Function(AuctionStopCancelled value)? stopCancelled,
    TResult Function(AuctionStopped value)? stopped,
    TResult Function(AuctionError value)? error,
    TResult Function(AuctionConnectionReset value)? connectionReset,
    TResult Function(AuctionKicked value)? kicked,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class AuctionDisconnected extends AuctionEvent {
  const factory AuctionDisconnected(
      {required final int lotId,
      final LotUpdate? lotUpdate}) = _$AuctionDisconnectedImpl;
  const AuctionDisconnected._() : super._();

  @override
  int get lotId;
  @override
  LotUpdate? get lotUpdate;
  @override
  @JsonKey(ignore: true)
  _$$AuctionDisconnectedImplCopyWith<_$AuctionDisconnectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuctionStartedImplCopyWith<$Res>
    implements $AuctionEventCopyWith<$Res> {
  factory _$$AuctionStartedImplCopyWith(_$AuctionStartedImpl value,
          $Res Function(_$AuctionStartedImpl) then) =
      __$$AuctionStartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int lotId, LotUpdate? lotUpdate});

  @override
  $LotUpdateCopyWith<$Res>? get lotUpdate;
}

/// @nodoc
class __$$AuctionStartedImplCopyWithImpl<$Res>
    extends _$AuctionEventCopyWithImpl<$Res, _$AuctionStartedImpl>
    implements _$$AuctionStartedImplCopyWith<$Res> {
  __$$AuctionStartedImplCopyWithImpl(
      _$AuctionStartedImpl _value, $Res Function(_$AuctionStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? lotUpdate = freezed,
  }) {
    return _then(_$AuctionStartedImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      lotUpdate: freezed == lotUpdate
          ? _value.lotUpdate
          : lotUpdate // ignore: cast_nullable_to_non_nullable
              as LotUpdate?,
    ));
  }
}

/// @nodoc

class _$AuctionStartedImpl extends AuctionStarted {
  const _$AuctionStartedImpl({required this.lotId, this.lotUpdate}) : super._();

  @override
  final int lotId;
  @override
  final LotUpdate? lotUpdate;

  @override
  String toString() {
    return 'AuctionEvent.started(lotId: $lotId, lotUpdate: $lotUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionStartedImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.lotUpdate, lotUpdate) ||
                other.lotUpdate == lotUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lotId, lotUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionStartedImplCopyWith<_$AuctionStartedImpl> get copyWith =>
      __$$AuctionStartedImplCopyWithImpl<_$AuctionStartedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)
        bidPlaced,
    required TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)
        pastBids,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) disconnected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) started,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopping,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopCancelled,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopped,
    required TResult Function(int lotId, LotUpdate? lotUpdate, String? message)
        error,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connectionReset,
    required TResult Function(int lotId, LotUpdate? lotUpdate) kicked,
  }) {
    return started(lotId, lotUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult? Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)?
        pastBids,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult? Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? kicked,
  }) {
    return started?.call(lotId, lotUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)? pastBids,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult Function(int lotId, LotUpdate? lotUpdate)? kicked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(lotId, lotUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BidPlaced value) bidPlaced,
    required TResult Function(PastBids value) pastBids,
    required TResult Function(AuctionConnected value) connected,
    required TResult Function(AuctionDisconnected value) disconnected,
    required TResult Function(AuctionStarted value) started,
    required TResult Function(AuctionStopping value) stopping,
    required TResult Function(AuctionStopCancelled value) stopCancelled,
    required TResult Function(AuctionStopped value) stopped,
    required TResult Function(AuctionError value) error,
    required TResult Function(AuctionConnectionReset value) connectionReset,
    required TResult Function(AuctionKicked value) kicked,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BidPlaced value)? bidPlaced,
    TResult? Function(PastBids value)? pastBids,
    TResult? Function(AuctionConnected value)? connected,
    TResult? Function(AuctionDisconnected value)? disconnected,
    TResult? Function(AuctionStarted value)? started,
    TResult? Function(AuctionStopping value)? stopping,
    TResult? Function(AuctionStopCancelled value)? stopCancelled,
    TResult? Function(AuctionStopped value)? stopped,
    TResult? Function(AuctionError value)? error,
    TResult? Function(AuctionConnectionReset value)? connectionReset,
    TResult? Function(AuctionKicked value)? kicked,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BidPlaced value)? bidPlaced,
    TResult Function(PastBids value)? pastBids,
    TResult Function(AuctionConnected value)? connected,
    TResult Function(AuctionDisconnected value)? disconnected,
    TResult Function(AuctionStarted value)? started,
    TResult Function(AuctionStopping value)? stopping,
    TResult Function(AuctionStopCancelled value)? stopCancelled,
    TResult Function(AuctionStopped value)? stopped,
    TResult Function(AuctionError value)? error,
    TResult Function(AuctionConnectionReset value)? connectionReset,
    TResult Function(AuctionKicked value)? kicked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class AuctionStarted extends AuctionEvent {
  const factory AuctionStarted(
      {required final int lotId,
      final LotUpdate? lotUpdate}) = _$AuctionStartedImpl;
  const AuctionStarted._() : super._();

  @override
  int get lotId;
  @override
  LotUpdate? get lotUpdate;
  @override
  @JsonKey(ignore: true)
  _$$AuctionStartedImplCopyWith<_$AuctionStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuctionStoppingImplCopyWith<$Res>
    implements $AuctionEventCopyWith<$Res> {
  factory _$$AuctionStoppingImplCopyWith(_$AuctionStoppingImpl value,
          $Res Function(_$AuctionStoppingImpl) then) =
      __$$AuctionStoppingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int lotId, LotUpdate? lotUpdate});

  @override
  $LotUpdateCopyWith<$Res>? get lotUpdate;
}

/// @nodoc
class __$$AuctionStoppingImplCopyWithImpl<$Res>
    extends _$AuctionEventCopyWithImpl<$Res, _$AuctionStoppingImpl>
    implements _$$AuctionStoppingImplCopyWith<$Res> {
  __$$AuctionStoppingImplCopyWithImpl(
      _$AuctionStoppingImpl _value, $Res Function(_$AuctionStoppingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? lotUpdate = freezed,
  }) {
    return _then(_$AuctionStoppingImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      lotUpdate: freezed == lotUpdate
          ? _value.lotUpdate
          : lotUpdate // ignore: cast_nullable_to_non_nullable
              as LotUpdate?,
    ));
  }
}

/// @nodoc

class _$AuctionStoppingImpl extends AuctionStopping {
  const _$AuctionStoppingImpl({required this.lotId, this.lotUpdate})
      : super._();

  @override
  final int lotId;
  @override
  final LotUpdate? lotUpdate;

  @override
  String toString() {
    return 'AuctionEvent.stopping(lotId: $lotId, lotUpdate: $lotUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionStoppingImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.lotUpdate, lotUpdate) ||
                other.lotUpdate == lotUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lotId, lotUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionStoppingImplCopyWith<_$AuctionStoppingImpl> get copyWith =>
      __$$AuctionStoppingImplCopyWithImpl<_$AuctionStoppingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)
        bidPlaced,
    required TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)
        pastBids,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) disconnected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) started,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopping,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopCancelled,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopped,
    required TResult Function(int lotId, LotUpdate? lotUpdate, String? message)
        error,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connectionReset,
    required TResult Function(int lotId, LotUpdate? lotUpdate) kicked,
  }) {
    return stopping(lotId, lotUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult? Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)?
        pastBids,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult? Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? kicked,
  }) {
    return stopping?.call(lotId, lotUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)? pastBids,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult Function(int lotId, LotUpdate? lotUpdate)? kicked,
    required TResult orElse(),
  }) {
    if (stopping != null) {
      return stopping(lotId, lotUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BidPlaced value) bidPlaced,
    required TResult Function(PastBids value) pastBids,
    required TResult Function(AuctionConnected value) connected,
    required TResult Function(AuctionDisconnected value) disconnected,
    required TResult Function(AuctionStarted value) started,
    required TResult Function(AuctionStopping value) stopping,
    required TResult Function(AuctionStopCancelled value) stopCancelled,
    required TResult Function(AuctionStopped value) stopped,
    required TResult Function(AuctionError value) error,
    required TResult Function(AuctionConnectionReset value) connectionReset,
    required TResult Function(AuctionKicked value) kicked,
  }) {
    return stopping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BidPlaced value)? bidPlaced,
    TResult? Function(PastBids value)? pastBids,
    TResult? Function(AuctionConnected value)? connected,
    TResult? Function(AuctionDisconnected value)? disconnected,
    TResult? Function(AuctionStarted value)? started,
    TResult? Function(AuctionStopping value)? stopping,
    TResult? Function(AuctionStopCancelled value)? stopCancelled,
    TResult? Function(AuctionStopped value)? stopped,
    TResult? Function(AuctionError value)? error,
    TResult? Function(AuctionConnectionReset value)? connectionReset,
    TResult? Function(AuctionKicked value)? kicked,
  }) {
    return stopping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BidPlaced value)? bidPlaced,
    TResult Function(PastBids value)? pastBids,
    TResult Function(AuctionConnected value)? connected,
    TResult Function(AuctionDisconnected value)? disconnected,
    TResult Function(AuctionStarted value)? started,
    TResult Function(AuctionStopping value)? stopping,
    TResult Function(AuctionStopCancelled value)? stopCancelled,
    TResult Function(AuctionStopped value)? stopped,
    TResult Function(AuctionError value)? error,
    TResult Function(AuctionConnectionReset value)? connectionReset,
    TResult Function(AuctionKicked value)? kicked,
    required TResult orElse(),
  }) {
    if (stopping != null) {
      return stopping(this);
    }
    return orElse();
  }
}

abstract class AuctionStopping extends AuctionEvent {
  const factory AuctionStopping(
      {required final int lotId,
      final LotUpdate? lotUpdate}) = _$AuctionStoppingImpl;
  const AuctionStopping._() : super._();

  @override
  int get lotId;
  @override
  LotUpdate? get lotUpdate;
  @override
  @JsonKey(ignore: true)
  _$$AuctionStoppingImplCopyWith<_$AuctionStoppingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuctionStopCancelledImplCopyWith<$Res>
    implements $AuctionEventCopyWith<$Res> {
  factory _$$AuctionStopCancelledImplCopyWith(_$AuctionStopCancelledImpl value,
          $Res Function(_$AuctionStopCancelledImpl) then) =
      __$$AuctionStopCancelledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int lotId, LotUpdate? lotUpdate});

  @override
  $LotUpdateCopyWith<$Res>? get lotUpdate;
}

/// @nodoc
class __$$AuctionStopCancelledImplCopyWithImpl<$Res>
    extends _$AuctionEventCopyWithImpl<$Res, _$AuctionStopCancelledImpl>
    implements _$$AuctionStopCancelledImplCopyWith<$Res> {
  __$$AuctionStopCancelledImplCopyWithImpl(_$AuctionStopCancelledImpl _value,
      $Res Function(_$AuctionStopCancelledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? lotUpdate = freezed,
  }) {
    return _then(_$AuctionStopCancelledImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      lotUpdate: freezed == lotUpdate
          ? _value.lotUpdate
          : lotUpdate // ignore: cast_nullable_to_non_nullable
              as LotUpdate?,
    ));
  }
}

/// @nodoc

class _$AuctionStopCancelledImpl extends AuctionStopCancelled {
  const _$AuctionStopCancelledImpl({required this.lotId, this.lotUpdate})
      : super._();

  @override
  final int lotId;
  @override
  final LotUpdate? lotUpdate;

  @override
  String toString() {
    return 'AuctionEvent.stopCancelled(lotId: $lotId, lotUpdate: $lotUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionStopCancelledImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.lotUpdate, lotUpdate) ||
                other.lotUpdate == lotUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lotId, lotUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionStopCancelledImplCopyWith<_$AuctionStopCancelledImpl>
      get copyWith =>
          __$$AuctionStopCancelledImplCopyWithImpl<_$AuctionStopCancelledImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)
        bidPlaced,
    required TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)
        pastBids,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) disconnected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) started,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopping,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopCancelled,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopped,
    required TResult Function(int lotId, LotUpdate? lotUpdate, String? message)
        error,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connectionReset,
    required TResult Function(int lotId, LotUpdate? lotUpdate) kicked,
  }) {
    return stopCancelled(lotId, lotUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult? Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)?
        pastBids,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult? Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? kicked,
  }) {
    return stopCancelled?.call(lotId, lotUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)? pastBids,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult Function(int lotId, LotUpdate? lotUpdate)? kicked,
    required TResult orElse(),
  }) {
    if (stopCancelled != null) {
      return stopCancelled(lotId, lotUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BidPlaced value) bidPlaced,
    required TResult Function(PastBids value) pastBids,
    required TResult Function(AuctionConnected value) connected,
    required TResult Function(AuctionDisconnected value) disconnected,
    required TResult Function(AuctionStarted value) started,
    required TResult Function(AuctionStopping value) stopping,
    required TResult Function(AuctionStopCancelled value) stopCancelled,
    required TResult Function(AuctionStopped value) stopped,
    required TResult Function(AuctionError value) error,
    required TResult Function(AuctionConnectionReset value) connectionReset,
    required TResult Function(AuctionKicked value) kicked,
  }) {
    return stopCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BidPlaced value)? bidPlaced,
    TResult? Function(PastBids value)? pastBids,
    TResult? Function(AuctionConnected value)? connected,
    TResult? Function(AuctionDisconnected value)? disconnected,
    TResult? Function(AuctionStarted value)? started,
    TResult? Function(AuctionStopping value)? stopping,
    TResult? Function(AuctionStopCancelled value)? stopCancelled,
    TResult? Function(AuctionStopped value)? stopped,
    TResult? Function(AuctionError value)? error,
    TResult? Function(AuctionConnectionReset value)? connectionReset,
    TResult? Function(AuctionKicked value)? kicked,
  }) {
    return stopCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BidPlaced value)? bidPlaced,
    TResult Function(PastBids value)? pastBids,
    TResult Function(AuctionConnected value)? connected,
    TResult Function(AuctionDisconnected value)? disconnected,
    TResult Function(AuctionStarted value)? started,
    TResult Function(AuctionStopping value)? stopping,
    TResult Function(AuctionStopCancelled value)? stopCancelled,
    TResult Function(AuctionStopped value)? stopped,
    TResult Function(AuctionError value)? error,
    TResult Function(AuctionConnectionReset value)? connectionReset,
    TResult Function(AuctionKicked value)? kicked,
    required TResult orElse(),
  }) {
    if (stopCancelled != null) {
      return stopCancelled(this);
    }
    return orElse();
  }
}

abstract class AuctionStopCancelled extends AuctionEvent {
  const factory AuctionStopCancelled(
      {required final int lotId,
      final LotUpdate? lotUpdate}) = _$AuctionStopCancelledImpl;
  const AuctionStopCancelled._() : super._();

  @override
  int get lotId;
  @override
  LotUpdate? get lotUpdate;
  @override
  @JsonKey(ignore: true)
  _$$AuctionStopCancelledImplCopyWith<_$AuctionStopCancelledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuctionStoppedImplCopyWith<$Res>
    implements $AuctionEventCopyWith<$Res> {
  factory _$$AuctionStoppedImplCopyWith(_$AuctionStoppedImpl value,
          $Res Function(_$AuctionStoppedImpl) then) =
      __$$AuctionStoppedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int lotId, LotUpdate? lotUpdate});

  @override
  $LotUpdateCopyWith<$Res>? get lotUpdate;
}

/// @nodoc
class __$$AuctionStoppedImplCopyWithImpl<$Res>
    extends _$AuctionEventCopyWithImpl<$Res, _$AuctionStoppedImpl>
    implements _$$AuctionStoppedImplCopyWith<$Res> {
  __$$AuctionStoppedImplCopyWithImpl(
      _$AuctionStoppedImpl _value, $Res Function(_$AuctionStoppedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? lotUpdate = freezed,
  }) {
    return _then(_$AuctionStoppedImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      lotUpdate: freezed == lotUpdate
          ? _value.lotUpdate
          : lotUpdate // ignore: cast_nullable_to_non_nullable
              as LotUpdate?,
    ));
  }
}

/// @nodoc

class _$AuctionStoppedImpl extends AuctionStopped {
  const _$AuctionStoppedImpl({required this.lotId, this.lotUpdate}) : super._();

  @override
  final int lotId;
  @override
  final LotUpdate? lotUpdate;

  @override
  String toString() {
    return 'AuctionEvent.stopped(lotId: $lotId, lotUpdate: $lotUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionStoppedImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.lotUpdate, lotUpdate) ||
                other.lotUpdate == lotUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lotId, lotUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionStoppedImplCopyWith<_$AuctionStoppedImpl> get copyWith =>
      __$$AuctionStoppedImplCopyWithImpl<_$AuctionStoppedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)
        bidPlaced,
    required TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)
        pastBids,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) disconnected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) started,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopping,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopCancelled,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopped,
    required TResult Function(int lotId, LotUpdate? lotUpdate, String? message)
        error,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connectionReset,
    required TResult Function(int lotId, LotUpdate? lotUpdate) kicked,
  }) {
    return stopped(lotId, lotUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult? Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)?
        pastBids,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult? Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? kicked,
  }) {
    return stopped?.call(lotId, lotUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)? pastBids,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult Function(int lotId, LotUpdate? lotUpdate)? kicked,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(lotId, lotUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BidPlaced value) bidPlaced,
    required TResult Function(PastBids value) pastBids,
    required TResult Function(AuctionConnected value) connected,
    required TResult Function(AuctionDisconnected value) disconnected,
    required TResult Function(AuctionStarted value) started,
    required TResult Function(AuctionStopping value) stopping,
    required TResult Function(AuctionStopCancelled value) stopCancelled,
    required TResult Function(AuctionStopped value) stopped,
    required TResult Function(AuctionError value) error,
    required TResult Function(AuctionConnectionReset value) connectionReset,
    required TResult Function(AuctionKicked value) kicked,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BidPlaced value)? bidPlaced,
    TResult? Function(PastBids value)? pastBids,
    TResult? Function(AuctionConnected value)? connected,
    TResult? Function(AuctionDisconnected value)? disconnected,
    TResult? Function(AuctionStarted value)? started,
    TResult? Function(AuctionStopping value)? stopping,
    TResult? Function(AuctionStopCancelled value)? stopCancelled,
    TResult? Function(AuctionStopped value)? stopped,
    TResult? Function(AuctionError value)? error,
    TResult? Function(AuctionConnectionReset value)? connectionReset,
    TResult? Function(AuctionKicked value)? kicked,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BidPlaced value)? bidPlaced,
    TResult Function(PastBids value)? pastBids,
    TResult Function(AuctionConnected value)? connected,
    TResult Function(AuctionDisconnected value)? disconnected,
    TResult Function(AuctionStarted value)? started,
    TResult Function(AuctionStopping value)? stopping,
    TResult Function(AuctionStopCancelled value)? stopCancelled,
    TResult Function(AuctionStopped value)? stopped,
    TResult Function(AuctionError value)? error,
    TResult Function(AuctionConnectionReset value)? connectionReset,
    TResult Function(AuctionKicked value)? kicked,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class AuctionStopped extends AuctionEvent {
  const factory AuctionStopped(
      {required final int lotId,
      final LotUpdate? lotUpdate}) = _$AuctionStoppedImpl;
  const AuctionStopped._() : super._();

  @override
  int get lotId;
  @override
  LotUpdate? get lotUpdate;
  @override
  @JsonKey(ignore: true)
  _$$AuctionStoppedImplCopyWith<_$AuctionStoppedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuctionErrorImplCopyWith<$Res>
    implements $AuctionEventCopyWith<$Res> {
  factory _$$AuctionErrorImplCopyWith(
          _$AuctionErrorImpl value, $Res Function(_$AuctionErrorImpl) then) =
      __$$AuctionErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int lotId, LotUpdate? lotUpdate, String? message});

  @override
  $LotUpdateCopyWith<$Res>? get lotUpdate;
}

/// @nodoc
class __$$AuctionErrorImplCopyWithImpl<$Res>
    extends _$AuctionEventCopyWithImpl<$Res, _$AuctionErrorImpl>
    implements _$$AuctionErrorImplCopyWith<$Res> {
  __$$AuctionErrorImplCopyWithImpl(
      _$AuctionErrorImpl _value, $Res Function(_$AuctionErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? lotUpdate = freezed,
    Object? message = freezed,
  }) {
    return _then(_$AuctionErrorImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      lotUpdate: freezed == lotUpdate
          ? _value.lotUpdate
          : lotUpdate // ignore: cast_nullable_to_non_nullable
              as LotUpdate?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuctionErrorImpl extends AuctionError {
  const _$AuctionErrorImpl({required this.lotId, this.lotUpdate, this.message})
      : super._();

  @override
  final int lotId;
  @override
  final LotUpdate? lotUpdate;
  @override
  final String? message;

  @override
  String toString() {
    return 'AuctionEvent.error(lotId: $lotId, lotUpdate: $lotUpdate, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionErrorImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.lotUpdate, lotUpdate) ||
                other.lotUpdate == lotUpdate) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lotId, lotUpdate, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionErrorImplCopyWith<_$AuctionErrorImpl> get copyWith =>
      __$$AuctionErrorImplCopyWithImpl<_$AuctionErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)
        bidPlaced,
    required TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)
        pastBids,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) disconnected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) started,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopping,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopCancelled,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopped,
    required TResult Function(int lotId, LotUpdate? lotUpdate, String? message)
        error,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connectionReset,
    required TResult Function(int lotId, LotUpdate? lotUpdate) kicked,
  }) {
    return error(lotId, lotUpdate, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult? Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)?
        pastBids,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult? Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? kicked,
  }) {
    return error?.call(lotId, lotUpdate, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)? pastBids,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult Function(int lotId, LotUpdate? lotUpdate)? kicked,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(lotId, lotUpdate, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BidPlaced value) bidPlaced,
    required TResult Function(PastBids value) pastBids,
    required TResult Function(AuctionConnected value) connected,
    required TResult Function(AuctionDisconnected value) disconnected,
    required TResult Function(AuctionStarted value) started,
    required TResult Function(AuctionStopping value) stopping,
    required TResult Function(AuctionStopCancelled value) stopCancelled,
    required TResult Function(AuctionStopped value) stopped,
    required TResult Function(AuctionError value) error,
    required TResult Function(AuctionConnectionReset value) connectionReset,
    required TResult Function(AuctionKicked value) kicked,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BidPlaced value)? bidPlaced,
    TResult? Function(PastBids value)? pastBids,
    TResult? Function(AuctionConnected value)? connected,
    TResult? Function(AuctionDisconnected value)? disconnected,
    TResult? Function(AuctionStarted value)? started,
    TResult? Function(AuctionStopping value)? stopping,
    TResult? Function(AuctionStopCancelled value)? stopCancelled,
    TResult? Function(AuctionStopped value)? stopped,
    TResult? Function(AuctionError value)? error,
    TResult? Function(AuctionConnectionReset value)? connectionReset,
    TResult? Function(AuctionKicked value)? kicked,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BidPlaced value)? bidPlaced,
    TResult Function(PastBids value)? pastBids,
    TResult Function(AuctionConnected value)? connected,
    TResult Function(AuctionDisconnected value)? disconnected,
    TResult Function(AuctionStarted value)? started,
    TResult Function(AuctionStopping value)? stopping,
    TResult Function(AuctionStopCancelled value)? stopCancelled,
    TResult Function(AuctionStopped value)? stopped,
    TResult Function(AuctionError value)? error,
    TResult Function(AuctionConnectionReset value)? connectionReset,
    TResult Function(AuctionKicked value)? kicked,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuctionError extends AuctionEvent {
  const factory AuctionError(
      {required final int lotId,
      final LotUpdate? lotUpdate,
      final String? message}) = _$AuctionErrorImpl;
  const AuctionError._() : super._();

  @override
  int get lotId;
  @override
  LotUpdate? get lotUpdate;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AuctionErrorImplCopyWith<_$AuctionErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuctionConnectionResetImplCopyWith<$Res>
    implements $AuctionEventCopyWith<$Res> {
  factory _$$AuctionConnectionResetImplCopyWith(
          _$AuctionConnectionResetImpl value,
          $Res Function(_$AuctionConnectionResetImpl) then) =
      __$$AuctionConnectionResetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int lotId, LotUpdate? lotUpdate});

  @override
  $LotUpdateCopyWith<$Res>? get lotUpdate;
}

/// @nodoc
class __$$AuctionConnectionResetImplCopyWithImpl<$Res>
    extends _$AuctionEventCopyWithImpl<$Res, _$AuctionConnectionResetImpl>
    implements _$$AuctionConnectionResetImplCopyWith<$Res> {
  __$$AuctionConnectionResetImplCopyWithImpl(
      _$AuctionConnectionResetImpl _value,
      $Res Function(_$AuctionConnectionResetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? lotUpdate = freezed,
  }) {
    return _then(_$AuctionConnectionResetImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      lotUpdate: freezed == lotUpdate
          ? _value.lotUpdate
          : lotUpdate // ignore: cast_nullable_to_non_nullable
              as LotUpdate?,
    ));
  }
}

/// @nodoc

class _$AuctionConnectionResetImpl extends AuctionConnectionReset {
  const _$AuctionConnectionResetImpl({required this.lotId, this.lotUpdate})
      : super._();

  @override
  final int lotId;
  @override
  final LotUpdate? lotUpdate;

  @override
  String toString() {
    return 'AuctionEvent.connectionReset(lotId: $lotId, lotUpdate: $lotUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionConnectionResetImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.lotUpdate, lotUpdate) ||
                other.lotUpdate == lotUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lotId, lotUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionConnectionResetImplCopyWith<_$AuctionConnectionResetImpl>
      get copyWith => __$$AuctionConnectionResetImplCopyWithImpl<
          _$AuctionConnectionResetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)
        bidPlaced,
    required TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)
        pastBids,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) disconnected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) started,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopping,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopCancelled,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopped,
    required TResult Function(int lotId, LotUpdate? lotUpdate, String? message)
        error,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connectionReset,
    required TResult Function(int lotId, LotUpdate? lotUpdate) kicked,
  }) {
    return connectionReset(lotId, lotUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult? Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)?
        pastBids,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult? Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? kicked,
  }) {
    return connectionReset?.call(lotId, lotUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)? pastBids,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult Function(int lotId, LotUpdate? lotUpdate)? kicked,
    required TResult orElse(),
  }) {
    if (connectionReset != null) {
      return connectionReset(lotId, lotUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BidPlaced value) bidPlaced,
    required TResult Function(PastBids value) pastBids,
    required TResult Function(AuctionConnected value) connected,
    required TResult Function(AuctionDisconnected value) disconnected,
    required TResult Function(AuctionStarted value) started,
    required TResult Function(AuctionStopping value) stopping,
    required TResult Function(AuctionStopCancelled value) stopCancelled,
    required TResult Function(AuctionStopped value) stopped,
    required TResult Function(AuctionError value) error,
    required TResult Function(AuctionConnectionReset value) connectionReset,
    required TResult Function(AuctionKicked value) kicked,
  }) {
    return connectionReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BidPlaced value)? bidPlaced,
    TResult? Function(PastBids value)? pastBids,
    TResult? Function(AuctionConnected value)? connected,
    TResult? Function(AuctionDisconnected value)? disconnected,
    TResult? Function(AuctionStarted value)? started,
    TResult? Function(AuctionStopping value)? stopping,
    TResult? Function(AuctionStopCancelled value)? stopCancelled,
    TResult? Function(AuctionStopped value)? stopped,
    TResult? Function(AuctionError value)? error,
    TResult? Function(AuctionConnectionReset value)? connectionReset,
    TResult? Function(AuctionKicked value)? kicked,
  }) {
    return connectionReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BidPlaced value)? bidPlaced,
    TResult Function(PastBids value)? pastBids,
    TResult Function(AuctionConnected value)? connected,
    TResult Function(AuctionDisconnected value)? disconnected,
    TResult Function(AuctionStarted value)? started,
    TResult Function(AuctionStopping value)? stopping,
    TResult Function(AuctionStopCancelled value)? stopCancelled,
    TResult Function(AuctionStopped value)? stopped,
    TResult Function(AuctionError value)? error,
    TResult Function(AuctionConnectionReset value)? connectionReset,
    TResult Function(AuctionKicked value)? kicked,
    required TResult orElse(),
  }) {
    if (connectionReset != null) {
      return connectionReset(this);
    }
    return orElse();
  }
}

abstract class AuctionConnectionReset extends AuctionEvent {
  const factory AuctionConnectionReset(
      {required final int lotId,
      final LotUpdate? lotUpdate}) = _$AuctionConnectionResetImpl;
  const AuctionConnectionReset._() : super._();

  @override
  int get lotId;
  @override
  LotUpdate? get lotUpdate;
  @override
  @JsonKey(ignore: true)
  _$$AuctionConnectionResetImplCopyWith<_$AuctionConnectionResetImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuctionKickedImplCopyWith<$Res>
    implements $AuctionEventCopyWith<$Res> {
  factory _$$AuctionKickedImplCopyWith(
          _$AuctionKickedImpl value, $Res Function(_$AuctionKickedImpl) then) =
      __$$AuctionKickedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int lotId, LotUpdate? lotUpdate});

  @override
  $LotUpdateCopyWith<$Res>? get lotUpdate;
}

/// @nodoc
class __$$AuctionKickedImplCopyWithImpl<$Res>
    extends _$AuctionEventCopyWithImpl<$Res, _$AuctionKickedImpl>
    implements _$$AuctionKickedImplCopyWith<$Res> {
  __$$AuctionKickedImplCopyWithImpl(
      _$AuctionKickedImpl _value, $Res Function(_$AuctionKickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? lotUpdate = freezed,
  }) {
    return _then(_$AuctionKickedImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      lotUpdate: freezed == lotUpdate
          ? _value.lotUpdate
          : lotUpdate // ignore: cast_nullable_to_non_nullable
              as LotUpdate?,
    ));
  }
}

/// @nodoc

class _$AuctionKickedImpl extends AuctionKicked {
  const _$AuctionKickedImpl({required this.lotId, this.lotUpdate}) : super._();

  @override
  final int lotId;
  @override
  final LotUpdate? lotUpdate;

  @override
  String toString() {
    return 'AuctionEvent.kicked(lotId: $lotId, lotUpdate: $lotUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionKickedImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.lotUpdate, lotUpdate) ||
                other.lotUpdate == lotUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lotId, lotUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionKickedImplCopyWith<_$AuctionKickedImpl> get copyWith =>
      __$$AuctionKickedImplCopyWithImpl<_$AuctionKickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)
        bidPlaced,
    required TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)
        pastBids,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) disconnected,
    required TResult Function(int lotId, LotUpdate? lotUpdate) started,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopping,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopCancelled,
    required TResult Function(int lotId, LotUpdate? lotUpdate) stopped,
    required TResult Function(int lotId, LotUpdate? lotUpdate, String? message)
        error,
    required TResult Function(int lotId, LotUpdate? lotUpdate) connectionReset,
    required TResult Function(int lotId, LotUpdate? lotUpdate) kicked,
  }) {
    return kicked(lotId, lotUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult? Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)?
        pastBids,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult? Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult? Function(int lotId, LotUpdate? lotUpdate)? kicked,
  }) {
    return kicked?.call(lotId, lotUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lotId, LotUpdate? lotUpdate, Bid bid)? bidPlaced,
    TResult Function(int lotId, LotUpdate? lotUpdate, List<Bid> bids)? pastBids,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? disconnected,
    TResult Function(int lotId, LotUpdate? lotUpdate)? started,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopping,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopCancelled,
    TResult Function(int lotId, LotUpdate? lotUpdate)? stopped,
    TResult Function(int lotId, LotUpdate? lotUpdate, String? message)? error,
    TResult Function(int lotId, LotUpdate? lotUpdate)? connectionReset,
    TResult Function(int lotId, LotUpdate? lotUpdate)? kicked,
    required TResult orElse(),
  }) {
    if (kicked != null) {
      return kicked(lotId, lotUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BidPlaced value) bidPlaced,
    required TResult Function(PastBids value) pastBids,
    required TResult Function(AuctionConnected value) connected,
    required TResult Function(AuctionDisconnected value) disconnected,
    required TResult Function(AuctionStarted value) started,
    required TResult Function(AuctionStopping value) stopping,
    required TResult Function(AuctionStopCancelled value) stopCancelled,
    required TResult Function(AuctionStopped value) stopped,
    required TResult Function(AuctionError value) error,
    required TResult Function(AuctionConnectionReset value) connectionReset,
    required TResult Function(AuctionKicked value) kicked,
  }) {
    return kicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BidPlaced value)? bidPlaced,
    TResult? Function(PastBids value)? pastBids,
    TResult? Function(AuctionConnected value)? connected,
    TResult? Function(AuctionDisconnected value)? disconnected,
    TResult? Function(AuctionStarted value)? started,
    TResult? Function(AuctionStopping value)? stopping,
    TResult? Function(AuctionStopCancelled value)? stopCancelled,
    TResult? Function(AuctionStopped value)? stopped,
    TResult? Function(AuctionError value)? error,
    TResult? Function(AuctionConnectionReset value)? connectionReset,
    TResult? Function(AuctionKicked value)? kicked,
  }) {
    return kicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BidPlaced value)? bidPlaced,
    TResult Function(PastBids value)? pastBids,
    TResult Function(AuctionConnected value)? connected,
    TResult Function(AuctionDisconnected value)? disconnected,
    TResult Function(AuctionStarted value)? started,
    TResult Function(AuctionStopping value)? stopping,
    TResult Function(AuctionStopCancelled value)? stopCancelled,
    TResult Function(AuctionStopped value)? stopped,
    TResult Function(AuctionError value)? error,
    TResult Function(AuctionConnectionReset value)? connectionReset,
    TResult Function(AuctionKicked value)? kicked,
    required TResult orElse(),
  }) {
    if (kicked != null) {
      return kicked(this);
    }
    return orElse();
  }
}

abstract class AuctionKicked extends AuctionEvent {
  const factory AuctionKicked(
      {required final int lotId,
      final LotUpdate? lotUpdate}) = _$AuctionKickedImpl;
  const AuctionKicked._() : super._();

  @override
  int get lotId;
  @override
  LotUpdate? get lotUpdate;
  @override
  @JsonKey(ignore: true)
  _$$AuctionKickedImplCopyWith<_$AuctionKickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LotUpdate {
  int get lotId => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  DateTime? get stopTime => throw _privateConstructorUsedError;
  DateTime? get actualStopTime => throw _privateConstructorUsedError;
  Bid? get winningBid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LotUpdateCopyWith<LotUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotUpdateCopyWith<$Res> {
  factory $LotUpdateCopyWith(LotUpdate value, $Res Function(LotUpdate) then) =
      _$LotUpdateCopyWithImpl<$Res, LotUpdate>;
  @useResult
  $Res call(
      {int lotId,
      DateTime? startTime,
      DateTime? stopTime,
      DateTime? actualStopTime,
      Bid? winningBid});

  $BidCopyWith<$Res>? get winningBid;
}

/// @nodoc
class _$LotUpdateCopyWithImpl<$Res, $Val extends LotUpdate>
    implements $LotUpdateCopyWith<$Res> {
  _$LotUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? startTime = freezed,
    Object? stopTime = freezed,
    Object? actualStopTime = freezed,
    Object? winningBid = freezed,
  }) {
    return _then(_value.copyWith(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stopTime: freezed == stopTime
          ? _value.stopTime
          : stopTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualStopTime: freezed == actualStopTime
          ? _value.actualStopTime
          : actualStopTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      winningBid: freezed == winningBid
          ? _value.winningBid
          : winningBid // ignore: cast_nullable_to_non_nullable
              as Bid?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BidCopyWith<$Res>? get winningBid {
    if (_value.winningBid == null) {
      return null;
    }

    return $BidCopyWith<$Res>(_value.winningBid!, (value) {
      return _then(_value.copyWith(winningBid: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LotUpdateImplCopyWith<$Res>
    implements $LotUpdateCopyWith<$Res> {
  factory _$$LotUpdateImplCopyWith(
          _$LotUpdateImpl value, $Res Function(_$LotUpdateImpl) then) =
      __$$LotUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int lotId,
      DateTime? startTime,
      DateTime? stopTime,
      DateTime? actualStopTime,
      Bid? winningBid});

  @override
  $BidCopyWith<$Res>? get winningBid;
}

/// @nodoc
class __$$LotUpdateImplCopyWithImpl<$Res>
    extends _$LotUpdateCopyWithImpl<$Res, _$LotUpdateImpl>
    implements _$$LotUpdateImplCopyWith<$Res> {
  __$$LotUpdateImplCopyWithImpl(
      _$LotUpdateImpl _value, $Res Function(_$LotUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? startTime = freezed,
    Object? stopTime = freezed,
    Object? actualStopTime = freezed,
    Object? winningBid = freezed,
  }) {
    return _then(_$LotUpdateImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stopTime: freezed == stopTime
          ? _value.stopTime
          : stopTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualStopTime: freezed == actualStopTime
          ? _value.actualStopTime
          : actualStopTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      winningBid: freezed == winningBid
          ? _value.winningBid
          : winningBid // ignore: cast_nullable_to_non_nullable
              as Bid?,
    ));
  }
}

/// @nodoc

class _$LotUpdateImpl extends _LotUpdate {
  const _$LotUpdateImpl(
      {required this.lotId,
      this.startTime,
      this.stopTime,
      this.actualStopTime,
      this.winningBid})
      : super._();

  @override
  final int lotId;
  @override
  final DateTime? startTime;
  @override
  final DateTime? stopTime;
  @override
  final DateTime? actualStopTime;
  @override
  final Bid? winningBid;

  @override
  String toString() {
    return 'LotUpdate(lotId: $lotId, startTime: $startTime, stopTime: $stopTime, actualStopTime: $actualStopTime, winningBid: $winningBid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotUpdateImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.stopTime, stopTime) ||
                other.stopTime == stopTime) &&
            (identical(other.actualStopTime, actualStopTime) ||
                other.actualStopTime == actualStopTime) &&
            (identical(other.winningBid, winningBid) ||
                other.winningBid == winningBid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, lotId, startTime, stopTime, actualStopTime, winningBid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotUpdateImplCopyWith<_$LotUpdateImpl> get copyWith =>
      __$$LotUpdateImplCopyWithImpl<_$LotUpdateImpl>(this, _$identity);
}

abstract class _LotUpdate extends LotUpdate {
  const factory _LotUpdate(
      {required final int lotId,
      final DateTime? startTime,
      final DateTime? stopTime,
      final DateTime? actualStopTime,
      final Bid? winningBid}) = _$LotUpdateImpl;
  const _LotUpdate._() : super._();

  @override
  int get lotId;
  @override
  DateTime? get startTime;
  @override
  DateTime? get stopTime;
  @override
  DateTime? get actualStopTime;
  @override
  Bid? get winningBid;
  @override
  @JsonKey(ignore: true)
  _$$LotUpdateImplCopyWith<_$LotUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
