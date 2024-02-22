// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LotBidderState {
  Lot get lot => throw _privateConstructorUsedError;
  bool get isPinned => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LotBidderStateCopyWith<LotBidderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotBidderStateCopyWith<$Res> {
  factory $LotBidderStateCopyWith(
          LotBidderState value, $Res Function(LotBidderState) then) =
      _$LotBidderStateCopyWithImpl<$Res, LotBidderState>;
  @useResult
  $Res call({Lot lot, bool isPinned});

  $LotCopyWith<$Res> get lot;
}

/// @nodoc
class _$LotBidderStateCopyWithImpl<$Res, $Val extends LotBidderState>
    implements $LotBidderStateCopyWith<$Res> {
  _$LotBidderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lot = null,
    Object? isPinned = null,
  }) {
    return _then(_value.copyWith(
      lot: null == lot
          ? _value.lot
          : lot // ignore: cast_nullable_to_non_nullable
              as Lot,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LotCopyWith<$Res> get lot {
    return $LotCopyWith<$Res>(_value.lot, (value) {
      return _then(_value.copyWith(lot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LotBidderStateImplCopyWith<$Res>
    implements $LotBidderStateCopyWith<$Res> {
  factory _$$LotBidderStateImplCopyWith(_$LotBidderStateImpl value,
          $Res Function(_$LotBidderStateImpl) then) =
      __$$LotBidderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Lot lot, bool isPinned});

  @override
  $LotCopyWith<$Res> get lot;
}

/// @nodoc
class __$$LotBidderStateImplCopyWithImpl<$Res>
    extends _$LotBidderStateCopyWithImpl<$Res, _$LotBidderStateImpl>
    implements _$$LotBidderStateImplCopyWith<$Res> {
  __$$LotBidderStateImplCopyWithImpl(
      _$LotBidderStateImpl _value, $Res Function(_$LotBidderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lot = null,
    Object? isPinned = null,
  }) {
    return _then(_$LotBidderStateImpl(
      lot: null == lot
          ? _value.lot
          : lot // ignore: cast_nullable_to_non_nullable
              as Lot,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LotBidderStateImpl implements _LotBidderState {
  const _$LotBidderStateImpl({required this.lot, required this.isPinned});

  @override
  final Lot lot;
  @override
  final bool isPinned;

  @override
  String toString() {
    return 'LotBidderState(lot: $lot, isPinned: $isPinned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotBidderStateImpl &&
            (identical(other.lot, lot) || other.lot == lot) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lot, isPinned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotBidderStateImplCopyWith<_$LotBidderStateImpl> get copyWith =>
      __$$LotBidderStateImplCopyWithImpl<_$LotBidderStateImpl>(
          this, _$identity);
}

abstract class _LotBidderState implements LotBidderState {
  const factory _LotBidderState(
      {required final Lot lot,
      required final bool isPinned}) = _$LotBidderStateImpl;

  @override
  Lot get lot;
  @override
  bool get isPinned;
  @override
  @JsonKey(ignore: true)
  _$$LotBidderStateImplCopyWith<_$LotBidderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Lot {
  int get id => throw _privateConstructorUsedError;
  int get auctionId => throw _privateConstructorUsedError;
  DateTime? get actualStartTime => throw _privateConstructorUsedError;
  DateTime? get stopTime => throw _privateConstructorUsedError;
  DateTime? get actualStopTime => throw _privateConstructorUsedError;
  bool get isCancelled => throw _privateConstructorUsedError;
  num? get requiredDownPayment => throw _privateConstructorUsedError;
  String get firmName => throw _privateConstructorUsedError;
  String? get firmLogoUrl => throw _privateConstructorUsedError;
  Property get property => throw _privateConstructorUsedError;
  int get propertyCount => throw _privateConstructorUsedError;
  num? get startingBid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LotCopyWith<Lot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotCopyWith<$Res> {
  factory $LotCopyWith(Lot value, $Res Function(Lot) then) =
      _$LotCopyWithImpl<$Res, Lot>;
  @useResult
  $Res call(
      {int id,
      int auctionId,
      DateTime? actualStartTime,
      DateTime? stopTime,
      DateTime? actualStopTime,
      bool isCancelled,
      num? requiredDownPayment,
      String firmName,
      String? firmLogoUrl,
      Property property,
      int propertyCount,
      num? startingBid});

  $PropertyCopyWith<$Res> get property;
}

/// @nodoc
class _$LotCopyWithImpl<$Res, $Val extends Lot> implements $LotCopyWith<$Res> {
  _$LotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? auctionId = null,
    Object? actualStartTime = freezed,
    Object? stopTime = freezed,
    Object? actualStopTime = freezed,
    Object? isCancelled = null,
    Object? requiredDownPayment = freezed,
    Object? firmName = null,
    Object? firmLogoUrl = freezed,
    Object? property = null,
    Object? propertyCount = null,
    Object? startingBid = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as int,
      actualStartTime: freezed == actualStartTime
          ? _value.actualStartTime
          : actualStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stopTime: freezed == stopTime
          ? _value.stopTime
          : stopTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualStopTime: freezed == actualStopTime
          ? _value.actualStopTime
          : actualStopTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isCancelled: null == isCancelled
          ? _value.isCancelled
          : isCancelled // ignore: cast_nullable_to_non_nullable
              as bool,
      requiredDownPayment: freezed == requiredDownPayment
          ? _value.requiredDownPayment
          : requiredDownPayment // ignore: cast_nullable_to_non_nullable
              as num?,
      firmName: null == firmName
          ? _value.firmName
          : firmName // ignore: cast_nullable_to_non_nullable
              as String,
      firmLogoUrl: freezed == firmLogoUrl
          ? _value.firmLogoUrl
          : firmLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as Property,
      propertyCount: null == propertyCount
          ? _value.propertyCount
          : propertyCount // ignore: cast_nullable_to_non_nullable
              as int,
      startingBid: freezed == startingBid
          ? _value.startingBid
          : startingBid // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyCopyWith<$Res> get property {
    return $PropertyCopyWith<$Res>(_value.property, (value) {
      return _then(_value.copyWith(property: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LotImplCopyWith<$Res> implements $LotCopyWith<$Res> {
  factory _$$LotImplCopyWith(_$LotImpl value, $Res Function(_$LotImpl) then) =
      __$$LotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int auctionId,
      DateTime? actualStartTime,
      DateTime? stopTime,
      DateTime? actualStopTime,
      bool isCancelled,
      num? requiredDownPayment,
      String firmName,
      String? firmLogoUrl,
      Property property,
      int propertyCount,
      num? startingBid});

  @override
  $PropertyCopyWith<$Res> get property;
}

/// @nodoc
class __$$LotImplCopyWithImpl<$Res> extends _$LotCopyWithImpl<$Res, _$LotImpl>
    implements _$$LotImplCopyWith<$Res> {
  __$$LotImplCopyWithImpl(_$LotImpl _value, $Res Function(_$LotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? auctionId = null,
    Object? actualStartTime = freezed,
    Object? stopTime = freezed,
    Object? actualStopTime = freezed,
    Object? isCancelled = null,
    Object? requiredDownPayment = freezed,
    Object? firmName = null,
    Object? firmLogoUrl = freezed,
    Object? property = null,
    Object? propertyCount = null,
    Object? startingBid = freezed,
  }) {
    return _then(_$LotImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as int,
      actualStartTime: freezed == actualStartTime
          ? _value.actualStartTime
          : actualStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stopTime: freezed == stopTime
          ? _value.stopTime
          : stopTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualStopTime: freezed == actualStopTime
          ? _value.actualStopTime
          : actualStopTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isCancelled: null == isCancelled
          ? _value.isCancelled
          : isCancelled // ignore: cast_nullable_to_non_nullable
              as bool,
      requiredDownPayment: freezed == requiredDownPayment
          ? _value.requiredDownPayment
          : requiredDownPayment // ignore: cast_nullable_to_non_nullable
              as num?,
      firmName: null == firmName
          ? _value.firmName
          : firmName // ignore: cast_nullable_to_non_nullable
              as String,
      firmLogoUrl: freezed == firmLogoUrl
          ? _value.firmLogoUrl
          : firmLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as Property,
      propertyCount: null == propertyCount
          ? _value.propertyCount
          : propertyCount // ignore: cast_nullable_to_non_nullable
              as int,
      startingBid: freezed == startingBid
          ? _value.startingBid
          : startingBid // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$LotImpl extends _Lot {
  const _$LotImpl(
      {required this.id,
      required this.auctionId,
      this.actualStartTime,
      this.stopTime,
      this.actualStopTime,
      this.isCancelled = false,
      this.requiredDownPayment,
      required this.firmName,
      this.firmLogoUrl,
      required this.property,
      required this.propertyCount,
      required this.startingBid})
      : super._();

  @override
  final int id;
  @override
  final int auctionId;
  @override
  final DateTime? actualStartTime;
  @override
  final DateTime? stopTime;
  @override
  final DateTime? actualStopTime;
  @override
  @JsonKey()
  final bool isCancelled;
  @override
  final num? requiredDownPayment;
  @override
  final String firmName;
  @override
  final String? firmLogoUrl;
  @override
  final Property property;
  @override
  final int propertyCount;
  @override
  final num? startingBid;

  @override
  String toString() {
    return 'Lot(id: $id, auctionId: $auctionId, actualStartTime: $actualStartTime, stopTime: $stopTime, actualStopTime: $actualStopTime, isCancelled: $isCancelled, requiredDownPayment: $requiredDownPayment, firmName: $firmName, firmLogoUrl: $firmLogoUrl, property: $property, propertyCount: $propertyCount, startingBid: $startingBid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId) &&
            (identical(other.actualStartTime, actualStartTime) ||
                other.actualStartTime == actualStartTime) &&
            (identical(other.stopTime, stopTime) ||
                other.stopTime == stopTime) &&
            (identical(other.actualStopTime, actualStopTime) ||
                other.actualStopTime == actualStopTime) &&
            (identical(other.isCancelled, isCancelled) ||
                other.isCancelled == isCancelled) &&
            (identical(other.requiredDownPayment, requiredDownPayment) ||
                other.requiredDownPayment == requiredDownPayment) &&
            (identical(other.firmName, firmName) ||
                other.firmName == firmName) &&
            (identical(other.firmLogoUrl, firmLogoUrl) ||
                other.firmLogoUrl == firmLogoUrl) &&
            (identical(other.property, property) ||
                other.property == property) &&
            (identical(other.propertyCount, propertyCount) ||
                other.propertyCount == propertyCount) &&
            (identical(other.startingBid, startingBid) ||
                other.startingBid == startingBid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      auctionId,
      actualStartTime,
      stopTime,
      actualStopTime,
      isCancelled,
      requiredDownPayment,
      firmName,
      firmLogoUrl,
      property,
      propertyCount,
      startingBid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotImplCopyWith<_$LotImpl> get copyWith =>
      __$$LotImplCopyWithImpl<_$LotImpl>(this, _$identity);
}

abstract class _Lot extends Lot {
  const factory _Lot(
      {required final int id,
      required final int auctionId,
      final DateTime? actualStartTime,
      final DateTime? stopTime,
      final DateTime? actualStopTime,
      final bool isCancelled,
      final num? requiredDownPayment,
      required final String firmName,
      final String? firmLogoUrl,
      required final Property property,
      required final int propertyCount,
      required final num? startingBid}) = _$LotImpl;
  const _Lot._() : super._();

  @override
  int get id;
  @override
  int get auctionId;
  @override
  DateTime? get actualStartTime;
  @override
  DateTime? get stopTime;
  @override
  DateTime? get actualStopTime;
  @override
  bool get isCancelled;
  @override
  num? get requiredDownPayment;
  @override
  String get firmName;
  @override
  String? get firmLogoUrl;
  @override
  Property get property;
  @override
  int get propertyCount;
  @override
  num? get startingBid;
  @override
  @JsonKey(ignore: true)
  _$$LotImplCopyWith<_$LotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LotSummary _$LotSummaryFromJson(Map<String, dynamic> json) {
  return _LotSummary.fromJson(json);
}

/// @nodoc
mixin _$LotSummary {
  int get id => throw _privateConstructorUsedError;
  String get streetLine1 => throw _privateConstructorUsedError;
  String? get streetLine2 => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String? get county => throw _privateConstructorUsedError;
  String get stateCode => throw _privateConstructorUsedError;
  String get zipCode => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get lotStatus => throw _privateConstructorUsedError;
  DateTime? get auctionStartTime => throw _privateConstructorUsedError;
  List<PropertyImage> get images => throw _privateConstructorUsedError;
  int get propertyCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
  $Res call(
      {int id,
      String streetLine1,
      String? streetLine2,
      String city,
      String? county,
      String stateCode,
      String zipCode,
      String? countryCode,
      String? lotStatus,
      DateTime? auctionStartTime,
      List<PropertyImage> images,
      int propertyCount});
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
    Object? streetLine1 = null,
    Object? streetLine2 = freezed,
    Object? city = null,
    Object? county = freezed,
    Object? stateCode = null,
    Object? zipCode = null,
    Object? countryCode = freezed,
    Object? lotStatus = freezed,
    Object? auctionStartTime = freezed,
    Object? images = null,
    Object? propertyCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      streetLine1: null == streetLine1
          ? _value.streetLine1
          : streetLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      streetLine2: freezed == streetLine2
          ? _value.streetLine2
          : streetLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      stateCode: null == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      lotStatus: freezed == lotStatus
          ? _value.lotStatus
          : lotStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      auctionStartTime: freezed == auctionStartTime
          ? _value.auctionStartTime
          : auctionStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PropertyImage>,
      propertyCount: null == propertyCount
          ? _value.propertyCount
          : propertyCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
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
  $Res call(
      {int id,
      String streetLine1,
      String? streetLine2,
      String city,
      String? county,
      String stateCode,
      String zipCode,
      String? countryCode,
      String? lotStatus,
      DateTime? auctionStartTime,
      List<PropertyImage> images,
      int propertyCount});
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
    Object? streetLine1 = null,
    Object? streetLine2 = freezed,
    Object? city = null,
    Object? county = freezed,
    Object? stateCode = null,
    Object? zipCode = null,
    Object? countryCode = freezed,
    Object? lotStatus = freezed,
    Object? auctionStartTime = freezed,
    Object? images = null,
    Object? propertyCount = null,
  }) {
    return _then(_$LotSummaryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      streetLine1: null == streetLine1
          ? _value.streetLine1
          : streetLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      streetLine2: freezed == streetLine2
          ? _value.streetLine2
          : streetLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      stateCode: null == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      lotStatus: freezed == lotStatus
          ? _value.lotStatus
          : lotStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      auctionStartTime: freezed == auctionStartTime
          ? _value.auctionStartTime
          : auctionStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PropertyImage>,
      propertyCount: null == propertyCount
          ? _value.propertyCount
          : propertyCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotSummaryImpl extends _LotSummary {
  const _$LotSummaryImpl(
      {required this.id,
      required this.streetLine1,
      this.streetLine2,
      required this.city,
      this.county,
      required this.stateCode,
      required this.zipCode,
      this.countryCode,
      this.lotStatus,
      this.auctionStartTime,
      final List<PropertyImage> images = const [],
      required this.propertyCount})
      : _images = images,
        super._();

  factory _$LotSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotSummaryImplFromJson(json);

  @override
  final int id;
  @override
  final String streetLine1;
  @override
  final String? streetLine2;
  @override
  final String city;
  @override
  final String? county;
  @override
  final String stateCode;
  @override
  final String zipCode;
  @override
  final String? countryCode;
  @override
  final String? lotStatus;
  @override
  final DateTime? auctionStartTime;
  final List<PropertyImage> _images;
  @override
  @JsonKey()
  List<PropertyImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final int propertyCount;

  @override
  String toString() {
    return 'LotSummary(id: $id, streetLine1: $streetLine1, streetLine2: $streetLine2, city: $city, county: $county, stateCode: $stateCode, zipCode: $zipCode, countryCode: $countryCode, lotStatus: $lotStatus, auctionStartTime: $auctionStartTime, images: $images, propertyCount: $propertyCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streetLine1, streetLine1) ||
                other.streetLine1 == streetLine1) &&
            (identical(other.streetLine2, streetLine2) ||
                other.streetLine2 == streetLine2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.county, county) || other.county == county) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.lotStatus, lotStatus) ||
                other.lotStatus == lotStatus) &&
            (identical(other.auctionStartTime, auctionStartTime) ||
                other.auctionStartTime == auctionStartTime) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.propertyCount, propertyCount) ||
                other.propertyCount == propertyCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      streetLine1,
      streetLine2,
      city,
      county,
      stateCode,
      zipCode,
      countryCode,
      lotStatus,
      auctionStartTime,
      const DeepCollectionEquality().hash(_images),
      propertyCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotSummaryImplCopyWith<_$LotSummaryImpl> get copyWith =>
      __$$LotSummaryImplCopyWithImpl<_$LotSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotSummaryImplToJson(
      this,
    );
  }
}

abstract class _LotSummary extends LotSummary {
  const factory _LotSummary(
      {required final int id,
      required final String streetLine1,
      final String? streetLine2,
      required final String city,
      final String? county,
      required final String stateCode,
      required final String zipCode,
      final String? countryCode,
      final String? lotStatus,
      final DateTime? auctionStartTime,
      final List<PropertyImage> images,
      required final int propertyCount}) = _$LotSummaryImpl;
  const _LotSummary._() : super._();

  factory _LotSummary.fromJson(Map<String, dynamic> json) =
      _$LotSummaryImpl.fromJson;

  @override
  int get id;
  @override
  String get streetLine1;
  @override
  String? get streetLine2;
  @override
  String get city;
  @override
  String? get county;
  @override
  String get stateCode;
  @override
  String get zipCode;
  @override
  String? get countryCode;
  @override
  String? get lotStatus;
  @override
  DateTime? get auctionStartTime;
  @override
  List<PropertyImage> get images;
  @override
  int get propertyCount;
  @override
  @JsonKey(ignore: true)
  _$$LotSummaryImplCopyWith<_$LotSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Property {
  int? get id => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  num? get latitude => throw _privateConstructorUsedError;
  num? get longitude => throw _privateConstructorUsedError;
  List<PropertyImage> get images => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  num? get beds => throw _privateConstructorUsedError;
  num? get baths => throw _privateConstructorUsedError;
  num? get area => throw _privateConstructorUsedError;
  String? get valuation => throw _privateConstructorUsedError;
  List<PropertyAttribute> get attributes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PropertyCopyWith<Property> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyCopyWith<$Res> {
  factory $PropertyCopyWith(Property value, $Res Function(Property) then) =
      _$PropertyCopyWithImpl<$Res, Property>;
  @useResult
  $Res call(
      {int? id,
      Address address,
      num? latitude,
      num? longitude,
      List<PropertyImage> images,
      String? type,
      num? beds,
      num? baths,
      num? area,
      String? valuation,
      List<PropertyAttribute> attributes});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$PropertyCopyWithImpl<$Res, $Val extends Property>
    implements $PropertyCopyWith<$Res> {
  _$PropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? images = null,
    Object? type = freezed,
    Object? beds = freezed,
    Object? baths = freezed,
    Object? area = freezed,
    Object? valuation = freezed,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PropertyImage>,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      beds: freezed == beds
          ? _value.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as num?,
      baths: freezed == baths
          ? _value.baths
          : baths // ignore: cast_nullable_to_non_nullable
              as num?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as num?,
      valuation: freezed == valuation
          ? _value.valuation
          : valuation // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<PropertyAttribute>,
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
abstract class _$$PropertyImplCopyWith<$Res>
    implements $PropertyCopyWith<$Res> {
  factory _$$PropertyImplCopyWith(
          _$PropertyImpl value, $Res Function(_$PropertyImpl) then) =
      __$$PropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      Address address,
      num? latitude,
      num? longitude,
      List<PropertyImage> images,
      String? type,
      num? beds,
      num? baths,
      num? area,
      String? valuation,
      List<PropertyAttribute> attributes});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$PropertyImplCopyWithImpl<$Res>
    extends _$PropertyCopyWithImpl<$Res, _$PropertyImpl>
    implements _$$PropertyImplCopyWith<$Res> {
  __$$PropertyImplCopyWithImpl(
      _$PropertyImpl _value, $Res Function(_$PropertyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? images = null,
    Object? type = freezed,
    Object? beds = freezed,
    Object? baths = freezed,
    Object? area = freezed,
    Object? valuation = freezed,
    Object? attributes = null,
  }) {
    return _then(_$PropertyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PropertyImage>,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      beds: freezed == beds
          ? _value.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as num?,
      baths: freezed == baths
          ? _value.baths
          : baths // ignore: cast_nullable_to_non_nullable
              as num?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as num?,
      valuation: freezed == valuation
          ? _value.valuation
          : valuation // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<PropertyAttribute>,
    ));
  }
}

/// @nodoc

class _$PropertyImpl extends _Property {
  const _$PropertyImpl(
      {this.id,
      required this.address,
      this.latitude,
      this.longitude,
      final List<PropertyImage> images = const [],
      this.type,
      this.beds,
      this.baths,
      this.area,
      this.valuation,
      final List<PropertyAttribute> attributes = const []})
      : _images = images,
        _attributes = attributes,
        super._();

  @override
  final int? id;
  @override
  final Address address;
  @override
  final num? latitude;
  @override
  final num? longitude;
  final List<PropertyImage> _images;
  @override
  @JsonKey()
  List<PropertyImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? type;
  @override
  final num? beds;
  @override
  final num? baths;
  @override
  final num? area;
  @override
  final String? valuation;
  final List<PropertyAttribute> _attributes;
  @override
  @JsonKey()
  List<PropertyAttribute> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  String toString() {
    return 'Property(id: $id, address: $address, latitude: $latitude, longitude: $longitude, images: $images, type: $type, beds: $beds, baths: $baths, area: $area, valuation: $valuation, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.beds, beds) || other.beds == beds) &&
            (identical(other.baths, baths) || other.baths == baths) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.valuation, valuation) ||
                other.valuation == valuation) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      address,
      latitude,
      longitude,
      const DeepCollectionEquality().hash(_images),
      type,
      beds,
      baths,
      area,
      valuation,
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyImplCopyWith<_$PropertyImpl> get copyWith =>
      __$$PropertyImplCopyWithImpl<_$PropertyImpl>(this, _$identity);
}

abstract class _Property extends Property {
  const factory _Property(
      {final int? id,
      required final Address address,
      final num? latitude,
      final num? longitude,
      final List<PropertyImage> images,
      final String? type,
      final num? beds,
      final num? baths,
      final num? area,
      final String? valuation,
      final List<PropertyAttribute> attributes}) = _$PropertyImpl;
  const _Property._() : super._();

  @override
  int? get id;
  @override
  Address get address;
  @override
  num? get latitude;
  @override
  num? get longitude;
  @override
  List<PropertyImage> get images;
  @override
  String? get type;
  @override
  num? get beds;
  @override
  num? get baths;
  @override
  num? get area;
  @override
  String? get valuation;
  @override
  List<PropertyAttribute> get attributes;
  @override
  @JsonKey(ignore: true)
  _$$PropertyImplCopyWith<_$PropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PropertyAttribute {
  PropertyAttributeType? get type => throw _privateConstructorUsedError;
  AttributeType get attributeType => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PropertyAttributeCopyWith<PropertyAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyAttributeCopyWith<$Res> {
  factory $PropertyAttributeCopyWith(
          PropertyAttribute value, $Res Function(PropertyAttribute) then) =
      _$PropertyAttributeCopyWithImpl<$Res, PropertyAttribute>;
  @useResult
  $Res call(
      {PropertyAttributeType? type,
      AttributeType attributeType,
      String? value});

  $AttributeTypeCopyWith<$Res> get attributeType;
}

/// @nodoc
class _$PropertyAttributeCopyWithImpl<$Res, $Val extends PropertyAttribute>
    implements $PropertyAttributeCopyWith<$Res> {
  _$PropertyAttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? attributeType = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PropertyAttributeType?,
      attributeType: null == attributeType
          ? _value.attributeType
          : attributeType // ignore: cast_nullable_to_non_nullable
              as AttributeType,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributeTypeCopyWith<$Res> get attributeType {
    return $AttributeTypeCopyWith<$Res>(_value.attributeType, (value) {
      return _then(_value.copyWith(attributeType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyAttributeImplCopyWith<$Res>
    implements $PropertyAttributeCopyWith<$Res> {
  factory _$$PropertyAttributeImplCopyWith(_$PropertyAttributeImpl value,
          $Res Function(_$PropertyAttributeImpl) then) =
      __$$PropertyAttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PropertyAttributeType? type,
      AttributeType attributeType,
      String? value});

  @override
  $AttributeTypeCopyWith<$Res> get attributeType;
}

/// @nodoc
class __$$PropertyAttributeImplCopyWithImpl<$Res>
    extends _$PropertyAttributeCopyWithImpl<$Res, _$PropertyAttributeImpl>
    implements _$$PropertyAttributeImplCopyWith<$Res> {
  __$$PropertyAttributeImplCopyWithImpl(_$PropertyAttributeImpl _value,
      $Res Function(_$PropertyAttributeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? attributeType = null,
    Object? value = freezed,
  }) {
    return _then(_$PropertyAttributeImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PropertyAttributeType?,
      attributeType: null == attributeType
          ? _value.attributeType
          : attributeType // ignore: cast_nullable_to_non_nullable
              as AttributeType,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PropertyAttributeImpl extends _PropertyAttribute {
  const _$PropertyAttributeImpl(
      {this.type, required this.attributeType, required this.value})
      : super._();

  @override
  final PropertyAttributeType? type;
  @override
  final AttributeType attributeType;
  @override
  final String? value;

  @override
  String toString() {
    return 'PropertyAttribute(type: $type, attributeType: $attributeType, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyAttributeImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attributeType, attributeType) ||
                other.attributeType == attributeType) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, attributeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyAttributeImplCopyWith<_$PropertyAttributeImpl> get copyWith =>
      __$$PropertyAttributeImplCopyWithImpl<_$PropertyAttributeImpl>(
          this, _$identity);
}

abstract class _PropertyAttribute extends PropertyAttribute {
  const factory _PropertyAttribute(
      {final PropertyAttributeType? type,
      required final AttributeType attributeType,
      required final String? value}) = _$PropertyAttributeImpl;
  const _PropertyAttribute._() : super._();

  @override
  PropertyAttributeType? get type;
  @override
  AttributeType get attributeType;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$PropertyAttributeImplCopyWith<_$PropertyAttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
