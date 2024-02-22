// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Address {
  String get streetLine1 => throw _privateConstructorUsedError;
  String? get streetLine2 => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get stateCode => throw _privateConstructorUsedError;
  String get zip => throw _privateConstructorUsedError;
  String? get county => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {String streetLine1,
      String? streetLine2,
      String city,
      String stateCode,
      String zip,
      String? county,
      String? countryCode});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetLine1 = null,
    Object? streetLine2 = freezed,
    Object? city = null,
    Object? stateCode = null,
    Object? zip = null,
    Object? county = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_value.copyWith(
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
      stateCode: null == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String streetLine1,
      String? streetLine2,
      String city,
      String stateCode,
      String zip,
      String? county,
      String? countryCode});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetLine1 = null,
    Object? streetLine2 = freezed,
    Object? city = null,
    Object? stateCode = null,
    Object? zip = null,
    Object? county = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_$AddressImpl(
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
      stateCode: null == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddressImpl extends _Address {
  const _$AddressImpl(
      {required this.streetLine1,
      this.streetLine2,
      required this.city,
      required this.stateCode,
      required this.zip,
      this.county,
      this.countryCode})
      : super._();

  @override
  final String streetLine1;
  @override
  final String? streetLine2;
  @override
  final String city;
  @override
  final String stateCode;
  @override
  final String zip;
  @override
  final String? county;
  @override
  final String? countryCode;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.streetLine1, streetLine1) ||
                other.streetLine1 == streetLine1) &&
            (identical(other.streetLine2, streetLine2) ||
                other.streetLine2 == streetLine2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.county, county) || other.county == county) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, streetLine1, streetLine2, city,
      stateCode, zip, county, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);
}

abstract class _Address extends Address {
  const factory _Address(
      {required final String streetLine1,
      final String? streetLine2,
      required final String city,
      required final String stateCode,
      required final String zip,
      final String? county,
      final String? countryCode}) = _$AddressImpl;
  const _Address._() : super._();

  @override
  String get streetLine1;
  @override
  String? get streetLine2;
  @override
  String get city;
  @override
  String get stateCode;
  @override
  String get zip;
  @override
  String? get county;
  @override
  String? get countryCode;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
