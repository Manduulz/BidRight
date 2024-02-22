// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_lot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LiveLotDto _$LiveLotDtoFromJson(Map<String, dynamic> json) {
  return _LiveLotDto.fromJson(json);
}

/// @nodoc
mixin _$LiveLotDto {
  int get id => throw _privateConstructorUsedError;
  int get caseId => throw _privateConstructorUsedError;
  int get auctionId => throw _privateConstructorUsedError;
  String? get auctionHostName => throw _privateConstructorUsedError;
  String? get auctionHostLogoUrl =>
      throw _privateConstructorUsedError; // required int lotNumber,
  num get openingPrice => throw _privateConstructorUsedError;
  num? get currentPrice => throw _privateConstructorUsedError;
  DateTime? get stopTime => throw _privateConstructorUsedError;
  String get streetLine1 => throw _privateConstructorUsedError;
  String? get streetLine2 => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String? get county => throw _privateConstructorUsedError;
  String get stateCode => throw _privateConstructorUsedError;
  String get zipCode => throw _privateConstructorUsedError;
  List<PropertyAttribute> get attributes => throw _privateConstructorUsedError;
  int get propertyCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveLotDtoCopyWith<LiveLotDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveLotDtoCopyWith<$Res> {
  factory $LiveLotDtoCopyWith(
          LiveLotDto value, $Res Function(LiveLotDto) then) =
      _$LiveLotDtoCopyWithImpl<$Res, LiveLotDto>;
  @useResult
  $Res call(
      {int id,
      int caseId,
      int auctionId,
      String? auctionHostName,
      String? auctionHostLogoUrl,
      num openingPrice,
      num? currentPrice,
      DateTime? stopTime,
      String streetLine1,
      String? streetLine2,
      String city,
      String? county,
      String stateCode,
      String zipCode,
      List<PropertyAttribute> attributes,
      int propertyCount});
}

/// @nodoc
class _$LiveLotDtoCopyWithImpl<$Res, $Val extends LiveLotDto>
    implements $LiveLotDtoCopyWith<$Res> {
  _$LiveLotDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? caseId = null,
    Object? auctionId = null,
    Object? auctionHostName = freezed,
    Object? auctionHostLogoUrl = freezed,
    Object? openingPrice = null,
    Object? currentPrice = freezed,
    Object? stopTime = freezed,
    Object? streetLine1 = null,
    Object? streetLine2 = freezed,
    Object? city = null,
    Object? county = freezed,
    Object? stateCode = null,
    Object? zipCode = null,
    Object? attributes = null,
    Object? propertyCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      caseId: null == caseId
          ? _value.caseId
          : caseId // ignore: cast_nullable_to_non_nullable
              as int,
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as int,
      auctionHostName: freezed == auctionHostName
          ? _value.auctionHostName
          : auctionHostName // ignore: cast_nullable_to_non_nullable
              as String?,
      auctionHostLogoUrl: freezed == auctionHostLogoUrl
          ? _value.auctionHostLogoUrl
          : auctionHostLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      openingPrice: null == openingPrice
          ? _value.openingPrice
          : openingPrice // ignore: cast_nullable_to_non_nullable
              as num,
      currentPrice: freezed == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      stopTime: freezed == stopTime
          ? _value.stopTime
          : stopTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<PropertyAttribute>,
      propertyCount: null == propertyCount
          ? _value.propertyCount
          : propertyCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiveLotDtoImplCopyWith<$Res>
    implements $LiveLotDtoCopyWith<$Res> {
  factory _$$LiveLotDtoImplCopyWith(
          _$LiveLotDtoImpl value, $Res Function(_$LiveLotDtoImpl) then) =
      __$$LiveLotDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int caseId,
      int auctionId,
      String? auctionHostName,
      String? auctionHostLogoUrl,
      num openingPrice,
      num? currentPrice,
      DateTime? stopTime,
      String streetLine1,
      String? streetLine2,
      String city,
      String? county,
      String stateCode,
      String zipCode,
      List<PropertyAttribute> attributes,
      int propertyCount});
}

/// @nodoc
class __$$LiveLotDtoImplCopyWithImpl<$Res>
    extends _$LiveLotDtoCopyWithImpl<$Res, _$LiveLotDtoImpl>
    implements _$$LiveLotDtoImplCopyWith<$Res> {
  __$$LiveLotDtoImplCopyWithImpl(
      _$LiveLotDtoImpl _value, $Res Function(_$LiveLotDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? caseId = null,
    Object? auctionId = null,
    Object? auctionHostName = freezed,
    Object? auctionHostLogoUrl = freezed,
    Object? openingPrice = null,
    Object? currentPrice = freezed,
    Object? stopTime = freezed,
    Object? streetLine1 = null,
    Object? streetLine2 = freezed,
    Object? city = null,
    Object? county = freezed,
    Object? stateCode = null,
    Object? zipCode = null,
    Object? attributes = null,
    Object? propertyCount = null,
  }) {
    return _then(_$LiveLotDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      caseId: null == caseId
          ? _value.caseId
          : caseId // ignore: cast_nullable_to_non_nullable
              as int,
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as int,
      auctionHostName: freezed == auctionHostName
          ? _value.auctionHostName
          : auctionHostName // ignore: cast_nullable_to_non_nullable
              as String?,
      auctionHostLogoUrl: freezed == auctionHostLogoUrl
          ? _value.auctionHostLogoUrl
          : auctionHostLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      openingPrice: null == openingPrice
          ? _value.openingPrice
          : openingPrice // ignore: cast_nullable_to_non_nullable
              as num,
      currentPrice: freezed == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      stopTime: freezed == stopTime
          ? _value.stopTime
          : stopTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<PropertyAttribute>,
      propertyCount: null == propertyCount
          ? _value.propertyCount
          : propertyCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LiveLotDtoImpl extends _LiveLotDto {
  const _$LiveLotDtoImpl(
      {required this.id,
      required this.caseId,
      required this.auctionId,
      this.auctionHostName,
      this.auctionHostLogoUrl,
      required this.openingPrice,
      this.currentPrice,
      this.stopTime,
      required this.streetLine1,
      this.streetLine2,
      required this.city,
      this.county,
      required this.stateCode,
      required this.zipCode,
      final List<PropertyAttribute> attributes = const [],
      required this.propertyCount})
      : _attributes = attributes,
        super._();

  factory _$LiveLotDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LiveLotDtoImplFromJson(json);

  @override
  final int id;
  @override
  final int caseId;
  @override
  final int auctionId;
  @override
  final String? auctionHostName;
  @override
  final String? auctionHostLogoUrl;
// required int lotNumber,
  @override
  final num openingPrice;
  @override
  final num? currentPrice;
  @override
  final DateTime? stopTime;
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
  final List<PropertyAttribute> _attributes;
  @override
  @JsonKey()
  List<PropertyAttribute> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  final int propertyCount;

  @override
  String toString() {
    return 'LiveLotDto(id: $id, caseId: $caseId, auctionId: $auctionId, auctionHostName: $auctionHostName, auctionHostLogoUrl: $auctionHostLogoUrl, openingPrice: $openingPrice, currentPrice: $currentPrice, stopTime: $stopTime, streetLine1: $streetLine1, streetLine2: $streetLine2, city: $city, county: $county, stateCode: $stateCode, zipCode: $zipCode, attributes: $attributes, propertyCount: $propertyCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveLotDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.caseId, caseId) || other.caseId == caseId) &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId) &&
            (identical(other.auctionHostName, auctionHostName) ||
                other.auctionHostName == auctionHostName) &&
            (identical(other.auctionHostLogoUrl, auctionHostLogoUrl) ||
                other.auctionHostLogoUrl == auctionHostLogoUrl) &&
            (identical(other.openingPrice, openingPrice) ||
                other.openingPrice == openingPrice) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.stopTime, stopTime) ||
                other.stopTime == stopTime) &&
            (identical(other.streetLine1, streetLine1) ||
                other.streetLine1 == streetLine1) &&
            (identical(other.streetLine2, streetLine2) ||
                other.streetLine2 == streetLine2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.county, county) || other.county == county) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.propertyCount, propertyCount) ||
                other.propertyCount == propertyCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      caseId,
      auctionId,
      auctionHostName,
      auctionHostLogoUrl,
      openingPrice,
      currentPrice,
      stopTime,
      streetLine1,
      streetLine2,
      city,
      county,
      stateCode,
      zipCode,
      const DeepCollectionEquality().hash(_attributes),
      propertyCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveLotDtoImplCopyWith<_$LiveLotDtoImpl> get copyWith =>
      __$$LiveLotDtoImplCopyWithImpl<_$LiveLotDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LiveLotDtoImplToJson(
      this,
    );
  }
}

abstract class _LiveLotDto extends LiveLotDto {
  const factory _LiveLotDto(
      {required final int id,
      required final int caseId,
      required final int auctionId,
      final String? auctionHostName,
      final String? auctionHostLogoUrl,
      required final num openingPrice,
      final num? currentPrice,
      final DateTime? stopTime,
      required final String streetLine1,
      final String? streetLine2,
      required final String city,
      final String? county,
      required final String stateCode,
      required final String zipCode,
      final List<PropertyAttribute> attributes,
      required final int propertyCount}) = _$LiveLotDtoImpl;
  const _LiveLotDto._() : super._();

  factory _LiveLotDto.fromJson(Map<String, dynamic> json) =
      _$LiveLotDtoImpl.fromJson;

  @override
  int get id;
  @override
  int get caseId;
  @override
  int get auctionId;
  @override
  String? get auctionHostName;
  @override
  String? get auctionHostLogoUrl;
  @override // required int lotNumber,
  num get openingPrice;
  @override
  num? get currentPrice;
  @override
  DateTime? get stopTime;
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
  List<PropertyAttribute> get attributes;
  @override
  int get propertyCount;
  @override
  @JsonKey(ignore: true)
  _$$LiveLotDtoImplCopyWith<_$LiveLotDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
