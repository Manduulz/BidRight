// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuctionDetail _$AuctionDetailFromJson(Map<String, dynamic> json) {
  return _AuctionDetail.fromJson(json);
}

/// @nodoc
mixin _$AuctionDetail {
  int get id => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get stopTime => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: AuctionType.other)
  AuctionType get type => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: AuctionStartType.other)
  AuctionStartType get startType => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeLeft')
  num get extensionWindow => throw _privateConstructorUsedError;
  @JsonKey(name: 'extraTime')
  num get extensionDuration => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get hostName => throw _privateConstructorUsedError;
  String? get hostLogoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuctionDetailCopyWith<AuctionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionDetailCopyWith<$Res> {
  factory $AuctionDetailCopyWith(
          AuctionDetail value, $Res Function(AuctionDetail) then) =
      _$AuctionDetailCopyWithImpl<$Res, AuctionDetail>;
  @useResult
  $Res call(
      {int id,
      DateTime startTime,
      DateTime stopTime,
      bool isOpen,
      @JsonKey(unknownEnumValue: AuctionType.other)
          AuctionType type,
      @JsonKey(unknownEnumValue: AuctionStartType.other)
          AuctionStartType startType,
      @JsonKey(name: 'timeLeft')
          num extensionWindow,
      @JsonKey(name: 'extraTime')
          num extensionDuration,
      String? location,
      String? hostName,
      String? hostLogoUrl});
}

/// @nodoc
class _$AuctionDetailCopyWithImpl<$Res, $Val extends AuctionDetail>
    implements $AuctionDetailCopyWith<$Res> {
  _$AuctionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? stopTime = null,
    Object? isOpen = null,
    Object? type = null,
    Object? startType = null,
    Object? extensionWindow = null,
    Object? extensionDuration = null,
    Object? location = freezed,
    Object? hostName = freezed,
    Object? hostLogoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stopTime: null == stopTime
          ? _value.stopTime
          : stopTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AuctionType,
      startType: null == startType
          ? _value.startType
          : startType // ignore: cast_nullable_to_non_nullable
              as AuctionStartType,
      extensionWindow: null == extensionWindow
          ? _value.extensionWindow
          : extensionWindow // ignore: cast_nullable_to_non_nullable
              as num,
      extensionDuration: null == extensionDuration
          ? _value.extensionDuration
          : extensionDuration // ignore: cast_nullable_to_non_nullable
              as num,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      hostName: freezed == hostName
          ? _value.hostName
          : hostName // ignore: cast_nullable_to_non_nullable
              as String?,
      hostLogoUrl: freezed == hostLogoUrl
          ? _value.hostLogoUrl
          : hostLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuctionDetailImplCopyWith<$Res>
    implements $AuctionDetailCopyWith<$Res> {
  factory _$$AuctionDetailImplCopyWith(
          _$AuctionDetailImpl value, $Res Function(_$AuctionDetailImpl) then) =
      __$$AuctionDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime startTime,
      DateTime stopTime,
      bool isOpen,
      @JsonKey(unknownEnumValue: AuctionType.other)
          AuctionType type,
      @JsonKey(unknownEnumValue: AuctionStartType.other)
          AuctionStartType startType,
      @JsonKey(name: 'timeLeft')
          num extensionWindow,
      @JsonKey(name: 'extraTime')
          num extensionDuration,
      String? location,
      String? hostName,
      String? hostLogoUrl});
}

/// @nodoc
class __$$AuctionDetailImplCopyWithImpl<$Res>
    extends _$AuctionDetailCopyWithImpl<$Res, _$AuctionDetailImpl>
    implements _$$AuctionDetailImplCopyWith<$Res> {
  __$$AuctionDetailImplCopyWithImpl(
      _$AuctionDetailImpl _value, $Res Function(_$AuctionDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? stopTime = null,
    Object? isOpen = null,
    Object? type = null,
    Object? startType = null,
    Object? extensionWindow = null,
    Object? extensionDuration = null,
    Object? location = freezed,
    Object? hostName = freezed,
    Object? hostLogoUrl = freezed,
  }) {
    return _then(_$AuctionDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stopTime: null == stopTime
          ? _value.stopTime
          : stopTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AuctionType,
      startType: null == startType
          ? _value.startType
          : startType // ignore: cast_nullable_to_non_nullable
              as AuctionStartType,
      extensionWindow: null == extensionWindow
          ? _value.extensionWindow
          : extensionWindow // ignore: cast_nullable_to_non_nullable
              as num,
      extensionDuration: null == extensionDuration
          ? _value.extensionDuration
          : extensionDuration // ignore: cast_nullable_to_non_nullable
              as num,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      hostName: freezed == hostName
          ? _value.hostName
          : hostName // ignore: cast_nullable_to_non_nullable
              as String?,
      hostLogoUrl: freezed == hostLogoUrl
          ? _value.hostLogoUrl
          : hostLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionDetailImpl extends _AuctionDetail {
  const _$AuctionDetailImpl(
      {required this.id,
      required this.startTime,
      required this.stopTime,
      required this.isOpen,
      @JsonKey(unknownEnumValue: AuctionType.other)
          this.type = AuctionType.other,
      @JsonKey(unknownEnumValue: AuctionStartType.other)
          this.startType = AuctionStartType.other,
      @JsonKey(name: 'timeLeft')
          this.extensionWindow = 0,
      @JsonKey(name: 'extraTime')
          this.extensionDuration = 0,
      this.location,
      this.hostName,
      this.hostLogoUrl})
      : super._();

  factory _$AuctionDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionDetailImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime startTime;
  @override
  final DateTime stopTime;
  @override
  final bool isOpen;
  @override
  @JsonKey(unknownEnumValue: AuctionType.other)
  final AuctionType type;
  @override
  @JsonKey(unknownEnumValue: AuctionStartType.other)
  final AuctionStartType startType;
  @override
  @JsonKey(name: 'timeLeft')
  final num extensionWindow;
  @override
  @JsonKey(name: 'extraTime')
  final num extensionDuration;
  @override
  final String? location;
  @override
  final String? hostName;
  @override
  final String? hostLogoUrl;

  @override
  String toString() {
    return 'AuctionDetail(id: $id, startTime: $startTime, stopTime: $stopTime, isOpen: $isOpen, type: $type, startType: $startType, extensionWindow: $extensionWindow, extensionDuration: $extensionDuration, location: $location, hostName: $hostName, hostLogoUrl: $hostLogoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.stopTime, stopTime) ||
                other.stopTime == stopTime) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.startType, startType) ||
                other.startType == startType) &&
            (identical(other.extensionWindow, extensionWindow) ||
                other.extensionWindow == extensionWindow) &&
            (identical(other.extensionDuration, extensionDuration) ||
                other.extensionDuration == extensionDuration) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.hostName, hostName) ||
                other.hostName == hostName) &&
            (identical(other.hostLogoUrl, hostLogoUrl) ||
                other.hostLogoUrl == hostLogoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      startTime,
      stopTime,
      isOpen,
      type,
      startType,
      extensionWindow,
      extensionDuration,
      location,
      hostName,
      hostLogoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionDetailImplCopyWith<_$AuctionDetailImpl> get copyWith =>
      __$$AuctionDetailImplCopyWithImpl<_$AuctionDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionDetailImplToJson(
      this,
    );
  }
}

abstract class _AuctionDetail extends AuctionDetail {
  const factory _AuctionDetail(
      {required final int id,
      required final DateTime startTime,
      required final DateTime stopTime,
      required final bool isOpen,
      @JsonKey(unknownEnumValue: AuctionType.other)
          final AuctionType type,
      @JsonKey(unknownEnumValue: AuctionStartType.other)
          final AuctionStartType startType,
      @JsonKey(name: 'timeLeft')
          final num extensionWindow,
      @JsonKey(name: 'extraTime')
          final num extensionDuration,
      final String? location,
      final String? hostName,
      final String? hostLogoUrl}) = _$AuctionDetailImpl;
  const _AuctionDetail._() : super._();

  factory _AuctionDetail.fromJson(Map<String, dynamic> json) =
      _$AuctionDetailImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get startTime;
  @override
  DateTime get stopTime;
  @override
  bool get isOpen;
  @override
  @JsonKey(unknownEnumValue: AuctionType.other)
  AuctionType get type;
  @override
  @JsonKey(unknownEnumValue: AuctionStartType.other)
  AuctionStartType get startType;
  @override
  @JsonKey(name: 'timeLeft')
  num get extensionWindow;
  @override
  @JsonKey(name: 'extraTime')
  num get extensionDuration;
  @override
  String? get location;
  @override
  String? get hostName;
  @override
  String? get hostLogoUrl;
  @override
  @JsonKey(ignore: true)
  _$$AuctionDetailImplCopyWith<_$AuctionDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuctionDetailWithLot {
  AuctionDetail get auction => throw _privateConstructorUsedError;
  Lot get lot => throw _privateConstructorUsedError;
  LotBidState get bidState => throw _privateConstructorUsedError;
  num get minBidIncrements => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuctionDetailWithLotCopyWith<AuctionDetailWithLot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionDetailWithLotCopyWith<$Res> {
  factory $AuctionDetailWithLotCopyWith(AuctionDetailWithLot value,
          $Res Function(AuctionDetailWithLot) then) =
      _$AuctionDetailWithLotCopyWithImpl<$Res, AuctionDetailWithLot>;
  @useResult
  $Res call(
      {AuctionDetail auction,
      Lot lot,
      LotBidState bidState,
      num minBidIncrements});

  $AuctionDetailCopyWith<$Res> get auction;
  $LotCopyWith<$Res> get lot;
  $LotBidStateCopyWith<$Res> get bidState;
}

/// @nodoc
class _$AuctionDetailWithLotCopyWithImpl<$Res,
        $Val extends AuctionDetailWithLot>
    implements $AuctionDetailWithLotCopyWith<$Res> {
  _$AuctionDetailWithLotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auction = null,
    Object? lot = null,
    Object? bidState = null,
    Object? minBidIncrements = null,
  }) {
    return _then(_value.copyWith(
      auction: null == auction
          ? _value.auction
          : auction // ignore: cast_nullable_to_non_nullable
              as AuctionDetail,
      lot: null == lot
          ? _value.lot
          : lot // ignore: cast_nullable_to_non_nullable
              as Lot,
      bidState: null == bidState
          ? _value.bidState
          : bidState // ignore: cast_nullable_to_non_nullable
              as LotBidState,
      minBidIncrements: null == minBidIncrements
          ? _value.minBidIncrements
          : minBidIncrements // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuctionDetailCopyWith<$Res> get auction {
    return $AuctionDetailCopyWith<$Res>(_value.auction, (value) {
      return _then(_value.copyWith(auction: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LotCopyWith<$Res> get lot {
    return $LotCopyWith<$Res>(_value.lot, (value) {
      return _then(_value.copyWith(lot: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LotBidStateCopyWith<$Res> get bidState {
    return $LotBidStateCopyWith<$Res>(_value.bidState, (value) {
      return _then(_value.copyWith(bidState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuctionDetailWithLotImplCopyWith<$Res>
    implements $AuctionDetailWithLotCopyWith<$Res> {
  factory _$$AuctionDetailWithLotImplCopyWith(_$AuctionDetailWithLotImpl value,
          $Res Function(_$AuctionDetailWithLotImpl) then) =
      __$$AuctionDetailWithLotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuctionDetail auction,
      Lot lot,
      LotBidState bidState,
      num minBidIncrements});

  @override
  $AuctionDetailCopyWith<$Res> get auction;
  @override
  $LotCopyWith<$Res> get lot;
  @override
  $LotBidStateCopyWith<$Res> get bidState;
}

/// @nodoc
class __$$AuctionDetailWithLotImplCopyWithImpl<$Res>
    extends _$AuctionDetailWithLotCopyWithImpl<$Res, _$AuctionDetailWithLotImpl>
    implements _$$AuctionDetailWithLotImplCopyWith<$Res> {
  __$$AuctionDetailWithLotImplCopyWithImpl(_$AuctionDetailWithLotImpl _value,
      $Res Function(_$AuctionDetailWithLotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auction = null,
    Object? lot = null,
    Object? bidState = null,
    Object? minBidIncrements = null,
  }) {
    return _then(_$AuctionDetailWithLotImpl(
      auction: null == auction
          ? _value.auction
          : auction // ignore: cast_nullable_to_non_nullable
              as AuctionDetail,
      lot: null == lot
          ? _value.lot
          : lot // ignore: cast_nullable_to_non_nullable
              as Lot,
      bidState: null == bidState
          ? _value.bidState
          : bidState // ignore: cast_nullable_to_non_nullable
              as LotBidState,
      minBidIncrements: null == minBidIncrements
          ? _value.minBidIncrements
          : minBidIncrements // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$AuctionDetailWithLotImpl extends _AuctionDetailWithLot {
  const _$AuctionDetailWithLotImpl(
      {required this.auction,
      required this.lot,
      required this.bidState,
      required this.minBidIncrements})
      : super._();

  @override
  final AuctionDetail auction;
  @override
  final Lot lot;
  @override
  final LotBidState bidState;
  @override
  final num minBidIncrements;

  @override
  String toString() {
    return 'AuctionDetailWithLot(auction: $auction, lot: $lot, bidState: $bidState, minBidIncrements: $minBidIncrements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionDetailWithLotImpl &&
            (identical(other.auction, auction) || other.auction == auction) &&
            (identical(other.lot, lot) || other.lot == lot) &&
            (identical(other.bidState, bidState) ||
                other.bidState == bidState) &&
            (identical(other.minBidIncrements, minBidIncrements) ||
                other.minBidIncrements == minBidIncrements));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, auction, lot, bidState, minBidIncrements);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionDetailWithLotImplCopyWith<_$AuctionDetailWithLotImpl>
      get copyWith =>
          __$$AuctionDetailWithLotImplCopyWithImpl<_$AuctionDetailWithLotImpl>(
              this, _$identity);
}

abstract class _AuctionDetailWithLot extends AuctionDetailWithLot {
  const factory _AuctionDetailWithLot(
      {required final AuctionDetail auction,
      required final Lot lot,
      required final LotBidState bidState,
      required final num minBidIncrements}) = _$AuctionDetailWithLotImpl;
  const _AuctionDetailWithLot._() : super._();

  @override
  AuctionDetail get auction;
  @override
  Lot get lot;
  @override
  LotBidState get bidState;
  @override
  num get minBidIncrements;
  @override
  @JsonKey(ignore: true)
  _$$AuctionDetailWithLotImplCopyWith<_$AuctionDetailWithLotImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LotBidState {
  AuctionBidder? get bidder => throw _privateConstructorUsedError;
  int? get winnerBidId => throw _privateConstructorUsedError;
  List<Bid> get bids => throw _privateConstructorUsedError;
  bool get isJoined => throw _privateConstructorUsedError;
  num get lockedAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LotBidStateCopyWith<LotBidState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotBidStateCopyWith<$Res> {
  factory $LotBidStateCopyWith(
          LotBidState value, $Res Function(LotBidState) then) =
      _$LotBidStateCopyWithImpl<$Res, LotBidState>;
  @useResult
  $Res call(
      {AuctionBidder? bidder,
      int? winnerBidId,
      List<Bid> bids,
      bool isJoined,
      num lockedAmount});

  $AuctionBidderCopyWith<$Res>? get bidder;
}

/// @nodoc
class _$LotBidStateCopyWithImpl<$Res, $Val extends LotBidState>
    implements $LotBidStateCopyWith<$Res> {
  _$LotBidStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bidder = freezed,
    Object? winnerBidId = freezed,
    Object? bids = null,
    Object? isJoined = null,
    Object? lockedAmount = null,
  }) {
    return _then(_value.copyWith(
      bidder: freezed == bidder
          ? _value.bidder
          : bidder // ignore: cast_nullable_to_non_nullable
              as AuctionBidder?,
      winnerBidId: freezed == winnerBidId
          ? _value.winnerBidId
          : winnerBidId // ignore: cast_nullable_to_non_nullable
              as int?,
      bids: null == bids
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<Bid>,
      isJoined: null == isJoined
          ? _value.isJoined
          : isJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      lockedAmount: null == lockedAmount
          ? _value.lockedAmount
          : lockedAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuctionBidderCopyWith<$Res>? get bidder {
    if (_value.bidder == null) {
      return null;
    }

    return $AuctionBidderCopyWith<$Res>(_value.bidder!, (value) {
      return _then(_value.copyWith(bidder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LotBidStateImplCopyWith<$Res>
    implements $LotBidStateCopyWith<$Res> {
  factory _$$LotBidStateImplCopyWith(
          _$LotBidStateImpl value, $Res Function(_$LotBidStateImpl) then) =
      __$$LotBidStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuctionBidder? bidder,
      int? winnerBidId,
      List<Bid> bids,
      bool isJoined,
      num lockedAmount});

  @override
  $AuctionBidderCopyWith<$Res>? get bidder;
}

/// @nodoc
class __$$LotBidStateImplCopyWithImpl<$Res>
    extends _$LotBidStateCopyWithImpl<$Res, _$LotBidStateImpl>
    implements _$$LotBidStateImplCopyWith<$Res> {
  __$$LotBidStateImplCopyWithImpl(
      _$LotBidStateImpl _value, $Res Function(_$LotBidStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bidder = freezed,
    Object? winnerBidId = freezed,
    Object? bids = null,
    Object? isJoined = null,
    Object? lockedAmount = null,
  }) {
    return _then(_$LotBidStateImpl(
      bidder: freezed == bidder
          ? _value.bidder
          : bidder // ignore: cast_nullable_to_non_nullable
              as AuctionBidder?,
      winnerBidId: freezed == winnerBidId
          ? _value.winnerBidId
          : winnerBidId // ignore: cast_nullable_to_non_nullable
              as int?,
      bids: null == bids
          ? _value._bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<Bid>,
      isJoined: null == isJoined
          ? _value.isJoined
          : isJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      lockedAmount: null == lockedAmount
          ? _value.lockedAmount
          : lockedAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$LotBidStateImpl extends _LotBidState {
  const _$LotBidStateImpl(
      {this.bidder,
      this.winnerBidId,
      required final List<Bid> bids,
      required this.isJoined,
      this.lockedAmount = 0})
      : _bids = bids,
        super._();

  @override
  final AuctionBidder? bidder;
  @override
  final int? winnerBidId;
  final List<Bid> _bids;
  @override
  List<Bid> get bids {
    if (_bids is EqualUnmodifiableListView) return _bids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bids);
  }

  @override
  final bool isJoined;
  @override
  @JsonKey()
  final num lockedAmount;

  @override
  String toString() {
    return 'LotBidState(bidder: $bidder, winnerBidId: $winnerBidId, bids: $bids, isJoined: $isJoined, lockedAmount: $lockedAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotBidStateImpl &&
            (identical(other.bidder, bidder) || other.bidder == bidder) &&
            (identical(other.winnerBidId, winnerBidId) ||
                other.winnerBidId == winnerBidId) &&
            const DeepCollectionEquality().equals(other._bids, _bids) &&
            (identical(other.isJoined, isJoined) ||
                other.isJoined == isJoined) &&
            (identical(other.lockedAmount, lockedAmount) ||
                other.lockedAmount == lockedAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bidder, winnerBidId,
      const DeepCollectionEquality().hash(_bids), isJoined, lockedAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotBidStateImplCopyWith<_$LotBidStateImpl> get copyWith =>
      __$$LotBidStateImplCopyWithImpl<_$LotBidStateImpl>(this, _$identity);
}

abstract class _LotBidState extends LotBidState {
  const factory _LotBidState(
      {final AuctionBidder? bidder,
      final int? winnerBidId,
      required final List<Bid> bids,
      required final bool isJoined,
      final num lockedAmount}) = _$LotBidStateImpl;
  const _LotBidState._() : super._();

  @override
  AuctionBidder? get bidder;
  @override
  int? get winnerBidId;
  @override
  List<Bid> get bids;
  @override
  bool get isJoined;
  @override
  num get lockedAmount;
  @override
  @JsonKey(ignore: true)
  _$$LotBidStateImplCopyWith<_$LotBidStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
