// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bidder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BidderDto _$BidderDtoFromJson(Map<String, dynamic> json) {
  return _BidderDto.fromJson(json);
}

/// @nodoc
mixin _$BidderDto {
  int get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  DateTime get birthDate => throw _privateConstructorUsedError;
  num get balance => throw _privateConstructorUsedError;
  num get lockedBalance => throw _privateConstructorUsedError;
  num get availableBalance => throw _privateConstructorUsedError;
  String get address1 => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get zip => throw _privateConstructorUsedError;
  bool get configuredAuthenticatorApp => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  List<Phone> get bidderPhones => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BidderDtoCopyWith<BidderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidderDtoCopyWith<$Res> {
  factory $BidderDtoCopyWith(BidderDto value, $Res Function(BidderDto) then) =
      _$BidderDtoCopyWithImpl<$Res, BidderDto>;
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String email,
      DateTime birthDate,
      num balance,
      num lockedBalance,
      num availableBalance,
      String address1,
      String? address2,
      String city,
      String state,
      String zip,
      bool configuredAuthenticatorApp,
      String userName,
      bool isVerified,
      List<Phone> bidderPhones});
}

/// @nodoc
class _$BidderDtoCopyWithImpl<$Res, $Val extends BidderDto>
    implements $BidderDtoCopyWith<$Res> {
  _$BidderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? birthDate = null,
    Object? balance = null,
    Object? lockedBalance = null,
    Object? availableBalance = null,
    Object? address1 = null,
    Object? address2 = freezed,
    Object? city = null,
    Object? state = null,
    Object? zip = null,
    Object? configuredAuthenticatorApp = null,
    Object? userName = null,
    Object? isVerified = null,
    Object? bidderPhones = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num,
      lockedBalance: null == lockedBalance
          ? _value.lockedBalance
          : lockedBalance // ignore: cast_nullable_to_non_nullable
              as num,
      availableBalance: null == availableBalance
          ? _value.availableBalance
          : availableBalance // ignore: cast_nullable_to_non_nullable
              as num,
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
      configuredAuthenticatorApp: null == configuredAuthenticatorApp
          ? _value.configuredAuthenticatorApp
          : configuredAuthenticatorApp // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      bidderPhones: null == bidderPhones
          ? _value.bidderPhones
          : bidderPhones // ignore: cast_nullable_to_non_nullable
              as List<Phone>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BidderDtoImplCopyWith<$Res>
    implements $BidderDtoCopyWith<$Res> {
  factory _$$BidderDtoImplCopyWith(
          _$BidderDtoImpl value, $Res Function(_$BidderDtoImpl) then) =
      __$$BidderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String email,
      DateTime birthDate,
      num balance,
      num lockedBalance,
      num availableBalance,
      String address1,
      String? address2,
      String city,
      String state,
      String zip,
      bool configuredAuthenticatorApp,
      String userName,
      bool isVerified,
      List<Phone> bidderPhones});
}

/// @nodoc
class __$$BidderDtoImplCopyWithImpl<$Res>
    extends _$BidderDtoCopyWithImpl<$Res, _$BidderDtoImpl>
    implements _$$BidderDtoImplCopyWith<$Res> {
  __$$BidderDtoImplCopyWithImpl(
      _$BidderDtoImpl _value, $Res Function(_$BidderDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? birthDate = null,
    Object? balance = null,
    Object? lockedBalance = null,
    Object? availableBalance = null,
    Object? address1 = null,
    Object? address2 = freezed,
    Object? city = null,
    Object? state = null,
    Object? zip = null,
    Object? configuredAuthenticatorApp = null,
    Object? userName = null,
    Object? isVerified = null,
    Object? bidderPhones = null,
  }) {
    return _then(_$BidderDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num,
      lockedBalance: null == lockedBalance
          ? _value.lockedBalance
          : lockedBalance // ignore: cast_nullable_to_non_nullable
              as num,
      availableBalance: null == availableBalance
          ? _value.availableBalance
          : availableBalance // ignore: cast_nullable_to_non_nullable
              as num,
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
      configuredAuthenticatorApp: null == configuredAuthenticatorApp
          ? _value.configuredAuthenticatorApp
          : configuredAuthenticatorApp // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      bidderPhones: null == bidderPhones
          ? _value._bidderPhones
          : bidderPhones // ignore: cast_nullable_to_non_nullable
              as List<Phone>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidderDtoImpl extends _BidderDto {
  const _$BidderDtoImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.birthDate,
      required this.balance,
      required this.lockedBalance,
      required this.availableBalance,
      this.address1 = '',
      this.address2,
      this.city = '',
      this.state = '',
      this.zip = '',
      this.configuredAuthenticatorApp = false,
      required this.userName,
      required this.isVerified,
      required final List<Phone> bidderPhones})
      : _bidderPhones = bidderPhones,
        super._();

  factory _$BidderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidderDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final DateTime birthDate;
  @override
  final num balance;
  @override
  final num lockedBalance;
  @override
  final num availableBalance;
  @override
  @JsonKey()
  final String address1;
  @override
  final String? address2;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String state;
  @override
  @JsonKey()
  final String zip;
  @override
  @JsonKey()
  final bool configuredAuthenticatorApp;
  @override
  final String userName;
  @override
  final bool isVerified;
  final List<Phone> _bidderPhones;
  @override
  List<Phone> get bidderPhones {
    if (_bidderPhones is EqualUnmodifiableListView) return _bidderPhones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bidderPhones);
  }

  @override
  String toString() {
    return 'BidderDto(id: $id, firstName: $firstName, lastName: $lastName, email: $email, birthDate: $birthDate, balance: $balance, lockedBalance: $lockedBalance, availableBalance: $availableBalance, address1: $address1, address2: $address2, city: $city, state: $state, zip: $zip, configuredAuthenticatorApp: $configuredAuthenticatorApp, userName: $userName, isVerified: $isVerified, bidderPhones: $bidderPhones)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidderDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.lockedBalance, lockedBalance) ||
                other.lockedBalance == lockedBalance) &&
            (identical(other.availableBalance, availableBalance) ||
                other.availableBalance == availableBalance) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.configuredAuthenticatorApp,
                    configuredAuthenticatorApp) ||
                other.configuredAuthenticatorApp ==
                    configuredAuthenticatorApp) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            const DeepCollectionEquality()
                .equals(other._bidderPhones, _bidderPhones));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      lastName,
      email,
      birthDate,
      balance,
      lockedBalance,
      availableBalance,
      address1,
      address2,
      city,
      state,
      zip,
      configuredAuthenticatorApp,
      userName,
      isVerified,
      const DeepCollectionEquality().hash(_bidderPhones));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BidderDtoImplCopyWith<_$BidderDtoImpl> get copyWith =>
      __$$BidderDtoImplCopyWithImpl<_$BidderDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidderDtoImplToJson(
      this,
    );
  }
}

abstract class _BidderDto extends BidderDto {
  const factory _BidderDto(
      {required final int id,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final DateTime birthDate,
      required final num balance,
      required final num lockedBalance,
      required final num availableBalance,
      final String address1,
      final String? address2,
      final String city,
      final String state,
      final String zip,
      final bool configuredAuthenticatorApp,
      required final String userName,
      required final bool isVerified,
      required final List<Phone> bidderPhones}) = _$BidderDtoImpl;
  const _BidderDto._() : super._();

  factory _BidderDto.fromJson(Map<String, dynamic> json) =
      _$BidderDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  DateTime get birthDate;
  @override
  num get balance;
  @override
  num get lockedBalance;
  @override
  num get availableBalance;
  @override
  String get address1;
  @override
  String? get address2;
  @override
  String get city;
  @override
  String get state;
  @override
  String get zip;
  @override
  bool get configuredAuthenticatorApp;
  @override
  String get userName;
  @override
  bool get isVerified;
  @override
  List<Phone> get bidderPhones;
  @override
  @JsonKey(ignore: true)
  _$$BidderDtoImplCopyWith<_$BidderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
