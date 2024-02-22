// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lot_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LotDetailDto _$LotDetailDtoFromJson(Map<String, dynamic> json) {
  return _LotDetailDto.fromJson(json);
}

/// @nodoc
mixin _$LotDetailDto {
  int get id => throw _privateConstructorUsedError;
  bool get isPinned => throw _privateConstructorUsedError;
  num? get minBidIncrements => throw _privateConstructorUsedError;
  DateTime? get startedTime => throw _privateConstructorUsedError;
  DateTime? get stoppedTime => throw _privateConstructorUsedError;
  DateTime? get stopTime => throw _privateConstructorUsedError;
  String get lotStatus => throw _privateConstructorUsedError;
  AuctionDetail get auction => throw _privateConstructorUsedError;
  int? get winnerBidId => throw _privateConstructorUsedError;
  AuctionBidder? get auctionBidder => throw _privateConstructorUsedError;
  @JsonKey(name: 'auctionBidderLot')
  LotBidder? get lotBidder => throw _privateConstructorUsedError;
  List<Bid> get bids => throw _privateConstructorUsedError;
  num get requiredDown => throw _privateConstructorUsedError;
  num get openingPrice => throw _privateConstructorUsedError;
  PropertyDto get property => throw _privateConstructorUsedError;
  int get propertyCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotDetailDtoCopyWith<LotDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotDetailDtoCopyWith<$Res> {
  factory $LotDetailDtoCopyWith(
          LotDetailDto value, $Res Function(LotDetailDto) then) =
      _$LotDetailDtoCopyWithImpl<$Res, LotDetailDto>;
  @useResult
  $Res call(
      {int id,
      bool isPinned,
      num? minBidIncrements,
      DateTime? startedTime,
      DateTime? stoppedTime,
      DateTime? stopTime,
      String lotStatus,
      AuctionDetail auction,
      int? winnerBidId,
      AuctionBidder? auctionBidder,
      @JsonKey(name: 'auctionBidderLot') LotBidder? lotBidder,
      List<Bid> bids,
      num requiredDown,
      num openingPrice,
      PropertyDto property,
      int propertyCount});

  $AuctionDetailCopyWith<$Res> get auction;
  $AuctionBidderCopyWith<$Res>? get auctionBidder;
  $LotBidderCopyWith<$Res>? get lotBidder;
  $PropertyDtoCopyWith<$Res> get property;
}

/// @nodoc
class _$LotDetailDtoCopyWithImpl<$Res, $Val extends LotDetailDto>
    implements $LotDetailDtoCopyWith<$Res> {
  _$LotDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isPinned = null,
    Object? minBidIncrements = freezed,
    Object? startedTime = freezed,
    Object? stoppedTime = freezed,
    Object? stopTime = freezed,
    Object? lotStatus = null,
    Object? auction = null,
    Object? winnerBidId = freezed,
    Object? auctionBidder = freezed,
    Object? lotBidder = freezed,
    Object? bids = null,
    Object? requiredDown = null,
    Object? openingPrice = null,
    Object? property = null,
    Object? propertyCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      minBidIncrements: freezed == minBidIncrements
          ? _value.minBidIncrements
          : minBidIncrements // ignore: cast_nullable_to_non_nullable
              as num?,
      startedTime: freezed == startedTime
          ? _value.startedTime
          : startedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stoppedTime: freezed == stoppedTime
          ? _value.stoppedTime
          : stoppedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stopTime: freezed == stopTime
          ? _value.stopTime
          : stopTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lotStatus: null == lotStatus
          ? _value.lotStatus
          : lotStatus // ignore: cast_nullable_to_non_nullable
              as String,
      auction: null == auction
          ? _value.auction
          : auction // ignore: cast_nullable_to_non_nullable
              as AuctionDetail,
      winnerBidId: freezed == winnerBidId
          ? _value.winnerBidId
          : winnerBidId // ignore: cast_nullable_to_non_nullable
              as int?,
      auctionBidder: freezed == auctionBidder
          ? _value.auctionBidder
          : auctionBidder // ignore: cast_nullable_to_non_nullable
              as AuctionBidder?,
      lotBidder: freezed == lotBidder
          ? _value.lotBidder
          : lotBidder // ignore: cast_nullable_to_non_nullable
              as LotBidder?,
      bids: null == bids
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<Bid>,
      requiredDown: null == requiredDown
          ? _value.requiredDown
          : requiredDown // ignore: cast_nullable_to_non_nullable
              as num,
      openingPrice: null == openingPrice
          ? _value.openingPrice
          : openingPrice // ignore: cast_nullable_to_non_nullable
              as num,
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as PropertyDto,
      propertyCount: null == propertyCount
          ? _value.propertyCount
          : propertyCount // ignore: cast_nullable_to_non_nullable
              as int,
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
  $AuctionBidderCopyWith<$Res>? get auctionBidder {
    if (_value.auctionBidder == null) {
      return null;
    }

    return $AuctionBidderCopyWith<$Res>(_value.auctionBidder!, (value) {
      return _then(_value.copyWith(auctionBidder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LotBidderCopyWith<$Res>? get lotBidder {
    if (_value.lotBidder == null) {
      return null;
    }

    return $LotBidderCopyWith<$Res>(_value.lotBidder!, (value) {
      return _then(_value.copyWith(lotBidder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyDtoCopyWith<$Res> get property {
    return $PropertyDtoCopyWith<$Res>(_value.property, (value) {
      return _then(_value.copyWith(property: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LotDetailDtoImplCopyWith<$Res>
    implements $LotDetailDtoCopyWith<$Res> {
  factory _$$LotDetailDtoImplCopyWith(
          _$LotDetailDtoImpl value, $Res Function(_$LotDetailDtoImpl) then) =
      __$$LotDetailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool isPinned,
      num? minBidIncrements,
      DateTime? startedTime,
      DateTime? stoppedTime,
      DateTime? stopTime,
      String lotStatus,
      AuctionDetail auction,
      int? winnerBidId,
      AuctionBidder? auctionBidder,
      @JsonKey(name: 'auctionBidderLot') LotBidder? lotBidder,
      List<Bid> bids,
      num requiredDown,
      num openingPrice,
      PropertyDto property,
      int propertyCount});

  @override
  $AuctionDetailCopyWith<$Res> get auction;
  @override
  $AuctionBidderCopyWith<$Res>? get auctionBidder;
  @override
  $LotBidderCopyWith<$Res>? get lotBidder;
  @override
  $PropertyDtoCopyWith<$Res> get property;
}

/// @nodoc
class __$$LotDetailDtoImplCopyWithImpl<$Res>
    extends _$LotDetailDtoCopyWithImpl<$Res, _$LotDetailDtoImpl>
    implements _$$LotDetailDtoImplCopyWith<$Res> {
  __$$LotDetailDtoImplCopyWithImpl(
      _$LotDetailDtoImpl _value, $Res Function(_$LotDetailDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isPinned = null,
    Object? minBidIncrements = freezed,
    Object? startedTime = freezed,
    Object? stoppedTime = freezed,
    Object? stopTime = freezed,
    Object? lotStatus = null,
    Object? auction = null,
    Object? winnerBidId = freezed,
    Object? auctionBidder = freezed,
    Object? lotBidder = freezed,
    Object? bids = null,
    Object? requiredDown = null,
    Object? openingPrice = null,
    Object? property = null,
    Object? propertyCount = null,
  }) {
    return _then(_$LotDetailDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      minBidIncrements: freezed == minBidIncrements
          ? _value.minBidIncrements
          : minBidIncrements // ignore: cast_nullable_to_non_nullable
              as num?,
      startedTime: freezed == startedTime
          ? _value.startedTime
          : startedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stoppedTime: freezed == stoppedTime
          ? _value.stoppedTime
          : stoppedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stopTime: freezed == stopTime
          ? _value.stopTime
          : stopTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lotStatus: null == lotStatus
          ? _value.lotStatus
          : lotStatus // ignore: cast_nullable_to_non_nullable
              as String,
      auction: null == auction
          ? _value.auction
          : auction // ignore: cast_nullable_to_non_nullable
              as AuctionDetail,
      winnerBidId: freezed == winnerBidId
          ? _value.winnerBidId
          : winnerBidId // ignore: cast_nullable_to_non_nullable
              as int?,
      auctionBidder: freezed == auctionBidder
          ? _value.auctionBidder
          : auctionBidder // ignore: cast_nullable_to_non_nullable
              as AuctionBidder?,
      lotBidder: freezed == lotBidder
          ? _value.lotBidder
          : lotBidder // ignore: cast_nullable_to_non_nullable
              as LotBidder?,
      bids: null == bids
          ? _value._bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<Bid>,
      requiredDown: null == requiredDown
          ? _value.requiredDown
          : requiredDown // ignore: cast_nullable_to_non_nullable
              as num,
      openingPrice: null == openingPrice
          ? _value.openingPrice
          : openingPrice // ignore: cast_nullable_to_non_nullable
              as num,
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as PropertyDto,
      propertyCount: null == propertyCount
          ? _value.propertyCount
          : propertyCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotDetailDtoImpl extends _LotDetailDto {
  const _$LotDetailDtoImpl(
      {required this.id,
      required this.isPinned,
      this.minBidIncrements,
      this.startedTime,
      this.stoppedTime,
      this.stopTime,
      required this.lotStatus,
      required this.auction,
      this.winnerBidId,
      this.auctionBidder,
      @JsonKey(name: 'auctionBidderLot') this.lotBidder,
      final List<Bid> bids = const [],
      required this.requiredDown,
      required this.openingPrice,
      required this.property,
      required this.propertyCount})
      : _bids = bids,
        super._();

  factory _$LotDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotDetailDtoImplFromJson(json);

  @override
  final int id;
  @override
  final bool isPinned;
  @override
  final num? minBidIncrements;
  @override
  final DateTime? startedTime;
  @override
  final DateTime? stoppedTime;
  @override
  final DateTime? stopTime;
  @override
  final String lotStatus;
  @override
  final AuctionDetail auction;
  @override
  final int? winnerBidId;
  @override
  final AuctionBidder? auctionBidder;
  @override
  @JsonKey(name: 'auctionBidderLot')
  final LotBidder? lotBidder;
  final List<Bid> _bids;
  @override
  @JsonKey()
  List<Bid> get bids {
    if (_bids is EqualUnmodifiableListView) return _bids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bids);
  }

  @override
  final num requiredDown;
  @override
  final num openingPrice;
  @override
  final PropertyDto property;
  @override
  final int propertyCount;

  @override
  String toString() {
    return 'LotDetailDto(id: $id, isPinned: $isPinned, minBidIncrements: $minBidIncrements, startedTime: $startedTime, stoppedTime: $stoppedTime, stopTime: $stopTime, lotStatus: $lotStatus, auction: $auction, winnerBidId: $winnerBidId, auctionBidder: $auctionBidder, lotBidder: $lotBidder, bids: $bids, requiredDown: $requiredDown, openingPrice: $openingPrice, property: $property, propertyCount: $propertyCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotDetailDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.minBidIncrements, minBidIncrements) ||
                other.minBidIncrements == minBidIncrements) &&
            (identical(other.startedTime, startedTime) ||
                other.startedTime == startedTime) &&
            (identical(other.stoppedTime, stoppedTime) ||
                other.stoppedTime == stoppedTime) &&
            (identical(other.stopTime, stopTime) ||
                other.stopTime == stopTime) &&
            (identical(other.lotStatus, lotStatus) ||
                other.lotStatus == lotStatus) &&
            (identical(other.auction, auction) || other.auction == auction) &&
            (identical(other.winnerBidId, winnerBidId) ||
                other.winnerBidId == winnerBidId) &&
            (identical(other.auctionBidder, auctionBidder) ||
                other.auctionBidder == auctionBidder) &&
            (identical(other.lotBidder, lotBidder) ||
                other.lotBidder == lotBidder) &&
            const DeepCollectionEquality().equals(other._bids, _bids) &&
            (identical(other.requiredDown, requiredDown) ||
                other.requiredDown == requiredDown) &&
            (identical(other.openingPrice, openingPrice) ||
                other.openingPrice == openingPrice) &&
            (identical(other.property, property) ||
                other.property == property) &&
            (identical(other.propertyCount, propertyCount) ||
                other.propertyCount == propertyCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isPinned,
      minBidIncrements,
      startedTime,
      stoppedTime,
      stopTime,
      lotStatus,
      auction,
      winnerBidId,
      auctionBidder,
      lotBidder,
      const DeepCollectionEquality().hash(_bids),
      requiredDown,
      openingPrice,
      property,
      propertyCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotDetailDtoImplCopyWith<_$LotDetailDtoImpl> get copyWith =>
      __$$LotDetailDtoImplCopyWithImpl<_$LotDetailDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotDetailDtoImplToJson(
      this,
    );
  }
}

abstract class _LotDetailDto extends LotDetailDto {
  const factory _LotDetailDto(
      {required final int id,
      required final bool isPinned,
      final num? minBidIncrements,
      final DateTime? startedTime,
      final DateTime? stoppedTime,
      final DateTime? stopTime,
      required final String lotStatus,
      required final AuctionDetail auction,
      final int? winnerBidId,
      final AuctionBidder? auctionBidder,
      @JsonKey(name: 'auctionBidderLot') final LotBidder? lotBidder,
      final List<Bid> bids,
      required final num requiredDown,
      required final num openingPrice,
      required final PropertyDto property,
      required final int propertyCount}) = _$LotDetailDtoImpl;
  const _LotDetailDto._() : super._();

  factory _LotDetailDto.fromJson(Map<String, dynamic> json) =
      _$LotDetailDtoImpl.fromJson;

  @override
  int get id;
  @override
  bool get isPinned;
  @override
  num? get minBidIncrements;
  @override
  DateTime? get startedTime;
  @override
  DateTime? get stoppedTime;
  @override
  DateTime? get stopTime;
  @override
  String get lotStatus;
  @override
  AuctionDetail get auction;
  @override
  int? get winnerBidId;
  @override
  AuctionBidder? get auctionBidder;
  @override
  @JsonKey(name: 'auctionBidderLot')
  LotBidder? get lotBidder;
  @override
  List<Bid> get bids;
  @override
  num get requiredDown;
  @override
  num get openingPrice;
  @override
  PropertyDto get property;
  @override
  int get propertyCount;
  @override
  @JsonKey(ignore: true)
  _$$LotDetailDtoImplCopyWith<_$LotDetailDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PropertyDto _$PropertyDtoFromJson(Map<String, dynamic> json) {
  return _PropertyDto.fromJson(json);
}

/// @nodoc
mixin _$PropertyDto {
  int get id => throw _privateConstructorUsedError;
  String? get streetLine1 => throw _privateConstructorUsedError;
  String? get streetLine2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;
  String? get stateCode => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get county => throw _privateConstructorUsedError;
  num? get latitude => throw _privateConstructorUsedError;
  num? get longitude => throw _privateConstructorUsedError;
  List<PropertyAttribute> get extendedData =>
      throw _privateConstructorUsedError;
  List<PropertyImage> get imageData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyDtoCopyWith<PropertyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyDtoCopyWith<$Res> {
  factory $PropertyDtoCopyWith(
          PropertyDto value, $Res Function(PropertyDto) then) =
      _$PropertyDtoCopyWithImpl<$Res, PropertyDto>;
  @useResult
  $Res call(
      {int id,
      String? streetLine1,
      String? streetLine2,
      String? city,
      String? zipCode,
      String? stateCode,
      String? countryCode,
      String? county,
      num? latitude,
      num? longitude,
      List<PropertyAttribute> extendedData,
      List<PropertyImage> imageData});
}

/// @nodoc
class _$PropertyDtoCopyWithImpl<$Res, $Val extends PropertyDto>
    implements $PropertyDtoCopyWith<$Res> {
  _$PropertyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetLine1 = freezed,
    Object? streetLine2 = freezed,
    Object? city = freezed,
    Object? zipCode = freezed,
    Object? stateCode = freezed,
    Object? countryCode = freezed,
    Object? county = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? extendedData = null,
    Object? imageData = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      streetLine1: freezed == streetLine1
          ? _value.streetLine1
          : streetLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      streetLine2: freezed == streetLine2
          ? _value.streetLine2
          : streetLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      stateCode: freezed == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num?,
      extendedData: null == extendedData
          ? _value.extendedData
          : extendedData // ignore: cast_nullable_to_non_nullable
              as List<PropertyAttribute>,
      imageData: null == imageData
          ? _value.imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as List<PropertyImage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyDtoImplCopyWith<$Res>
    implements $PropertyDtoCopyWith<$Res> {
  factory _$$PropertyDtoImplCopyWith(
          _$PropertyDtoImpl value, $Res Function(_$PropertyDtoImpl) then) =
      __$$PropertyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? streetLine1,
      String? streetLine2,
      String? city,
      String? zipCode,
      String? stateCode,
      String? countryCode,
      String? county,
      num? latitude,
      num? longitude,
      List<PropertyAttribute> extendedData,
      List<PropertyImage> imageData});
}

/// @nodoc
class __$$PropertyDtoImplCopyWithImpl<$Res>
    extends _$PropertyDtoCopyWithImpl<$Res, _$PropertyDtoImpl>
    implements _$$PropertyDtoImplCopyWith<$Res> {
  __$$PropertyDtoImplCopyWithImpl(
      _$PropertyDtoImpl _value, $Res Function(_$PropertyDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetLine1 = freezed,
    Object? streetLine2 = freezed,
    Object? city = freezed,
    Object? zipCode = freezed,
    Object? stateCode = freezed,
    Object? countryCode = freezed,
    Object? county = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? extendedData = null,
    Object? imageData = null,
  }) {
    return _then(_$PropertyDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      streetLine1: freezed == streetLine1
          ? _value.streetLine1
          : streetLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      streetLine2: freezed == streetLine2
          ? _value.streetLine2
          : streetLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      stateCode: freezed == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num?,
      extendedData: null == extendedData
          ? _value._extendedData
          : extendedData // ignore: cast_nullable_to_non_nullable
              as List<PropertyAttribute>,
      imageData: null == imageData
          ? _value._imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as List<PropertyImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyDtoImpl extends _PropertyDto {
  const _$PropertyDtoImpl(
      {required this.id,
      this.streetLine1,
      this.streetLine2,
      this.city,
      this.zipCode,
      this.stateCode,
      this.countryCode,
      this.county,
      this.latitude,
      this.longitude,
      final List<PropertyAttribute> extendedData = const [],
      final List<PropertyImage> imageData = const []})
      : _extendedData = extendedData,
        _imageData = imageData,
        super._();

  factory _$PropertyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String? streetLine1;
  @override
  final String? streetLine2;
  @override
  final String? city;
  @override
  final String? zipCode;
  @override
  final String? stateCode;
  @override
  final String? countryCode;
  @override
  final String? county;
  @override
  final num? latitude;
  @override
  final num? longitude;
  final List<PropertyAttribute> _extendedData;
  @override
  @JsonKey()
  List<PropertyAttribute> get extendedData {
    if (_extendedData is EqualUnmodifiableListView) return _extendedData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extendedData);
  }

  final List<PropertyImage> _imageData;
  @override
  @JsonKey()
  List<PropertyImage> get imageData {
    if (_imageData is EqualUnmodifiableListView) return _imageData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageData);
  }

  @override
  String toString() {
    return 'PropertyDto(id: $id, streetLine1: $streetLine1, streetLine2: $streetLine2, city: $city, zipCode: $zipCode, stateCode: $stateCode, countryCode: $countryCode, county: $county, latitude: $latitude, longitude: $longitude, extendedData: $extendedData, imageData: $imageData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streetLine1, streetLine1) ||
                other.streetLine1 == streetLine1) &&
            (identical(other.streetLine2, streetLine2) ||
                other.streetLine2 == streetLine2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.county, county) || other.county == county) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality()
                .equals(other._extendedData, _extendedData) &&
            const DeepCollectionEquality()
                .equals(other._imageData, _imageData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      streetLine1,
      streetLine2,
      city,
      zipCode,
      stateCode,
      countryCode,
      county,
      latitude,
      longitude,
      const DeepCollectionEquality().hash(_extendedData),
      const DeepCollectionEquality().hash(_imageData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyDtoImplCopyWith<_$PropertyDtoImpl> get copyWith =>
      __$$PropertyDtoImplCopyWithImpl<_$PropertyDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyDtoImplToJson(
      this,
    );
  }
}

abstract class _PropertyDto extends PropertyDto {
  const factory _PropertyDto(
      {required final int id,
      final String? streetLine1,
      final String? streetLine2,
      final String? city,
      final String? zipCode,
      final String? stateCode,
      final String? countryCode,
      final String? county,
      final num? latitude,
      final num? longitude,
      final List<PropertyAttribute> extendedData,
      final List<PropertyImage> imageData}) = _$PropertyDtoImpl;
  const _PropertyDto._() : super._();

  factory _PropertyDto.fromJson(Map<String, dynamic> json) =
      _$PropertyDtoImpl.fromJson;

  @override
  int get id;
  @override
  String? get streetLine1;
  @override
  String? get streetLine2;
  @override
  String? get city;
  @override
  String? get zipCode;
  @override
  String? get stateCode;
  @override
  String? get countryCode;
  @override
  String? get county;
  @override
  num? get latitude;
  @override
  num? get longitude;
  @override
  List<PropertyAttribute> get extendedData;
  @override
  List<PropertyImage> get imageData;
  @override
  @JsonKey(ignore: true)
  _$$PropertyDtoImplCopyWith<_$PropertyDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
