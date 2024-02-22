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

/// @nodoc
mixin _$Bidder {
  int get id => throw _privateConstructorUsedError;
  PersonalInfo get personalInfo => throw _privateConstructorUsedError;
  num get balance => throw _privateConstructorUsedError;
  num get lockedBalance => throw _privateConstructorUsedError;
  num get availableBalance => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  List<Phone> get phones => throw _privateConstructorUsedError;
  bool get hasAuthenticator => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BidderCopyWith<Bidder> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidderCopyWith<$Res> {
  factory $BidderCopyWith(Bidder value, $Res Function(Bidder) then) =
      _$BidderCopyWithImpl<$Res, Bidder>;
  @useResult
  $Res call(
      {int id,
      PersonalInfo personalInfo,
      num balance,
      num lockedBalance,
      num availableBalance,
      String userName,
      bool isVerified,
      List<Phone> phones,
      bool hasAuthenticator});

  $PersonalInfoCopyWith<$Res> get personalInfo;
}

/// @nodoc
class _$BidderCopyWithImpl<$Res, $Val extends Bidder>
    implements $BidderCopyWith<$Res> {
  _$BidderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? personalInfo = null,
    Object? balance = null,
    Object? lockedBalance = null,
    Object? availableBalance = null,
    Object? userName = null,
    Object? isVerified = null,
    Object? phones = null,
    Object? hasAuthenticator = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      personalInfo: null == personalInfo
          ? _value.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as PersonalInfo,
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
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phones: null == phones
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<Phone>,
      hasAuthenticator: null == hasAuthenticator
          ? _value.hasAuthenticator
          : hasAuthenticator // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonalInfoCopyWith<$Res> get personalInfo {
    return $PersonalInfoCopyWith<$Res>(_value.personalInfo, (value) {
      return _then(_value.copyWith(personalInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BidderImplCopyWith<$Res> implements $BidderCopyWith<$Res> {
  factory _$$BidderImplCopyWith(
          _$BidderImpl value, $Res Function(_$BidderImpl) then) =
      __$$BidderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      PersonalInfo personalInfo,
      num balance,
      num lockedBalance,
      num availableBalance,
      String userName,
      bool isVerified,
      List<Phone> phones,
      bool hasAuthenticator});

  @override
  $PersonalInfoCopyWith<$Res> get personalInfo;
}

/// @nodoc
class __$$BidderImplCopyWithImpl<$Res>
    extends _$BidderCopyWithImpl<$Res, _$BidderImpl>
    implements _$$BidderImplCopyWith<$Res> {
  __$$BidderImplCopyWithImpl(
      _$BidderImpl _value, $Res Function(_$BidderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? personalInfo = null,
    Object? balance = null,
    Object? lockedBalance = null,
    Object? availableBalance = null,
    Object? userName = null,
    Object? isVerified = null,
    Object? phones = null,
    Object? hasAuthenticator = null,
  }) {
    return _then(_$BidderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      personalInfo: null == personalInfo
          ? _value.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as PersonalInfo,
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
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phones: null == phones
          ? _value._phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<Phone>,
      hasAuthenticator: null == hasAuthenticator
          ? _value.hasAuthenticator
          : hasAuthenticator // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BidderImpl extends _Bidder {
  const _$BidderImpl(
      {required this.id,
      required this.personalInfo,
      required this.balance,
      required this.lockedBalance,
      required this.availableBalance,
      required this.userName,
      required this.isVerified,
      required final List<Phone> phones,
      required this.hasAuthenticator})
      : _phones = phones,
        super._();

  @override
  final int id;
  @override
  final PersonalInfo personalInfo;
  @override
  final num balance;
  @override
  final num lockedBalance;
  @override
  final num availableBalance;
  @override
  final String userName;
  @override
  final bool isVerified;
  final List<Phone> _phones;
  @override
  List<Phone> get phones {
    if (_phones is EqualUnmodifiableListView) return _phones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phones);
  }

  @override
  final bool hasAuthenticator;

  @override
  String toString() {
    return 'Bidder(id: $id, personalInfo: $personalInfo, balance: $balance, lockedBalance: $lockedBalance, availableBalance: $availableBalance, userName: $userName, isVerified: $isVerified, phones: $phones, hasAuthenticator: $hasAuthenticator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.personalInfo, personalInfo) ||
                other.personalInfo == personalInfo) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.lockedBalance, lockedBalance) ||
                other.lockedBalance == lockedBalance) &&
            (identical(other.availableBalance, availableBalance) ||
                other.availableBalance == availableBalance) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            const DeepCollectionEquality().equals(other._phones, _phones) &&
            (identical(other.hasAuthenticator, hasAuthenticator) ||
                other.hasAuthenticator == hasAuthenticator));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      personalInfo,
      balance,
      lockedBalance,
      availableBalance,
      userName,
      isVerified,
      const DeepCollectionEquality().hash(_phones),
      hasAuthenticator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BidderImplCopyWith<_$BidderImpl> get copyWith =>
      __$$BidderImplCopyWithImpl<_$BidderImpl>(this, _$identity);
}

abstract class _Bidder extends Bidder {
  const factory _Bidder(
      {required final int id,
      required final PersonalInfo personalInfo,
      required final num balance,
      required final num lockedBalance,
      required final num availableBalance,
      required final String userName,
      required final bool isVerified,
      required final List<Phone> phones,
      required final bool hasAuthenticator}) = _$BidderImpl;
  const _Bidder._() : super._();

  @override
  int get id;
  @override
  PersonalInfo get personalInfo;
  @override
  num get balance;
  @override
  num get lockedBalance;
  @override
  num get availableBalance;
  @override
  String get userName;
  @override
  bool get isVerified;
  @override
  List<Phone> get phones;
  @override
  bool get hasAuthenticator;
  @override
  @JsonKey(ignore: true)
  _$$BidderImplCopyWith<_$BidderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonalInfo {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  DateTime get birthDate => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonalInfoCopyWith<PersonalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInfoCopyWith<$Res> {
  factory $PersonalInfoCopyWith(
          PersonalInfo value, $Res Function(PersonalInfo) then) =
      _$PersonalInfoCopyWithImpl<$Res, PersonalInfo>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      DateTime birthDate,
      Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$PersonalInfoCopyWithImpl<$Res, $Val extends PersonalInfo>
    implements $PersonalInfoCopyWith<$Res> {
  _$PersonalInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? birthDate = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$PersonalInfoImplCopyWith<$Res>
    implements $PersonalInfoCopyWith<$Res> {
  factory _$$PersonalInfoImplCopyWith(
          _$PersonalInfoImpl value, $Res Function(_$PersonalInfoImpl) then) =
      __$$PersonalInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      DateTime birthDate,
      Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$PersonalInfoImplCopyWithImpl<$Res>
    extends _$PersonalInfoCopyWithImpl<$Res, _$PersonalInfoImpl>
    implements _$$PersonalInfoImplCopyWith<$Res> {
  __$$PersonalInfoImplCopyWithImpl(
      _$PersonalInfoImpl _value, $Res Function(_$PersonalInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? birthDate = null,
    Object? address = null,
  }) {
    return _then(_$PersonalInfoImpl(
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

class _$PersonalInfoImpl extends _PersonalInfo {
  const _$PersonalInfoImpl(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.birthDate,
      required this.address})
      : super._();

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final DateTime birthDate;
  @override
  final Address address;

  @override
  String toString() {
    return 'PersonalInfo(firstName: $firstName, lastName: $lastName, email: $email, birthDate: $birthDate, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalInfoImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, email, birthDate, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalInfoImplCopyWith<_$PersonalInfoImpl> get copyWith =>
      __$$PersonalInfoImplCopyWithImpl<_$PersonalInfoImpl>(this, _$identity);
}

abstract class _PersonalInfo extends PersonalInfo {
  const factory _PersonalInfo(
      {required final String firstName,
      required final String lastName,
      required final String email,
      required final DateTime birthDate,
      required final Address address}) = _$PersonalInfoImpl;
  const _PersonalInfo._() : super._();

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  DateTime get birthDate;
  @override
  Address get address;
  @override
  @JsonKey(ignore: true)
  _$$PersonalInfoImplCopyWith<_$PersonalInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Phone _$PhoneFromJson(Map<String, dynamic> json) {
  return _Phone.fromJson(json);
}

/// @nodoc
mixin _$Phone {
  String get number => throw _privateConstructorUsedError;
  bool get isPrimary => throw _privateConstructorUsedError;
  DateTime? get verifiedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneCopyWith<Phone> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneCopyWith<$Res> {
  factory $PhoneCopyWith(Phone value, $Res Function(Phone) then) =
      _$PhoneCopyWithImpl<$Res, Phone>;
  @useResult
  $Res call({String number, bool isPrimary, DateTime? verifiedDate});
}

/// @nodoc
class _$PhoneCopyWithImpl<$Res, $Val extends Phone>
    implements $PhoneCopyWith<$Res> {
  _$PhoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? isPrimary = null,
    Object? verifiedDate = freezed,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      verifiedDate: freezed == verifiedDate
          ? _value.verifiedDate
          : verifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhoneImplCopyWith<$Res> implements $PhoneCopyWith<$Res> {
  factory _$$PhoneImplCopyWith(
          _$PhoneImpl value, $Res Function(_$PhoneImpl) then) =
      __$$PhoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String number, bool isPrimary, DateTime? verifiedDate});
}

/// @nodoc
class __$$PhoneImplCopyWithImpl<$Res>
    extends _$PhoneCopyWithImpl<$Res, _$PhoneImpl>
    implements _$$PhoneImplCopyWith<$Res> {
  __$$PhoneImplCopyWithImpl(
      _$PhoneImpl _value, $Res Function(_$PhoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? isPrimary = null,
    Object? verifiedDate = freezed,
  }) {
    return _then(_$PhoneImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      verifiedDate: freezed == verifiedDate
          ? _value.verifiedDate
          : verifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhoneImpl extends _Phone {
  const _$PhoneImpl(
      {required this.number, required this.isPrimary, this.verifiedDate})
      : super._();

  factory _$PhoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhoneImplFromJson(json);

  @override
  final String number;
  @override
  final bool isPrimary;
  @override
  final DateTime? verifiedDate;

  @override
  String toString() {
    return 'Phone(number: $number, isPrimary: $isPrimary, verifiedDate: $verifiedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.verifiedDate, verifiedDate) ||
                other.verifiedDate == verifiedDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, isPrimary, verifiedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneImplCopyWith<_$PhoneImpl> get copyWith =>
      __$$PhoneImplCopyWithImpl<_$PhoneImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhoneImplToJson(
      this,
    );
  }
}

abstract class _Phone extends Phone {
  const factory _Phone(
      {required final String number,
      required final bool isPrimary,
      final DateTime? verifiedDate}) = _$PhoneImpl;
  const _Phone._() : super._();

  factory _Phone.fromJson(Map<String, dynamic> json) = _$PhoneImpl.fromJson;

  @override
  String get number;
  @override
  bool get isPrimary;
  @override
  DateTime? get verifiedDate;
  @override
  @JsonKey(ignore: true)
  _$$PhoneImplCopyWith<_$PhoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
