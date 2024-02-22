// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_host.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuctionHostCompany _$AuctionHostCompanyFromJson(Map<String, dynamic> json) {
  return _AuctionHostCompany.fromJson(json);
}

/// @nodoc
mixin _$AuctionHostCompany {
  String get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get supportEmail => throw _privateConstructorUsedError;
  String? get wireInstructionsUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuctionHostCompanyCopyWith<AuctionHostCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionHostCompanyCopyWith<$Res> {
  factory $AuctionHostCompanyCopyWith(
          AuctionHostCompany value, $Res Function(AuctionHostCompany) then) =
      _$AuctionHostCompanyCopyWithImpl<$Res, AuctionHostCompany>;
  @useResult
  $Res call(
      {String name,
      String? phoneNumber,
      String? supportEmail,
      String? wireInstructionsUrl});
}

/// @nodoc
class _$AuctionHostCompanyCopyWithImpl<$Res, $Val extends AuctionHostCompany>
    implements $AuctionHostCompanyCopyWith<$Res> {
  _$AuctionHostCompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = freezed,
    Object? supportEmail = freezed,
    Object? wireInstructionsUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      supportEmail: freezed == supportEmail
          ? _value.supportEmail
          : supportEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      wireInstructionsUrl: freezed == wireInstructionsUrl
          ? _value.wireInstructionsUrl
          : wireInstructionsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuctionHostCompanyImplCopyWith<$Res>
    implements $AuctionHostCompanyCopyWith<$Res> {
  factory _$$AuctionHostCompanyImplCopyWith(_$AuctionHostCompanyImpl value,
          $Res Function(_$AuctionHostCompanyImpl) then) =
      __$$AuctionHostCompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? phoneNumber,
      String? supportEmail,
      String? wireInstructionsUrl});
}

/// @nodoc
class __$$AuctionHostCompanyImplCopyWithImpl<$Res>
    extends _$AuctionHostCompanyCopyWithImpl<$Res, _$AuctionHostCompanyImpl>
    implements _$$AuctionHostCompanyImplCopyWith<$Res> {
  __$$AuctionHostCompanyImplCopyWithImpl(_$AuctionHostCompanyImpl _value,
      $Res Function(_$AuctionHostCompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = freezed,
    Object? supportEmail = freezed,
    Object? wireInstructionsUrl = freezed,
  }) {
    return _then(_$AuctionHostCompanyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      supportEmail: freezed == supportEmail
          ? _value.supportEmail
          : supportEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      wireInstructionsUrl: freezed == wireInstructionsUrl
          ? _value.wireInstructionsUrl
          : wireInstructionsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionHostCompanyImpl implements _AuctionHostCompany {
  const _$AuctionHostCompanyImpl(
      {this.name = '',
      this.phoneNumber,
      this.supportEmail,
      this.wireInstructionsUrl});

  factory _$AuctionHostCompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionHostCompanyImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  final String? phoneNumber;
  @override
  final String? supportEmail;
  @override
  final String? wireInstructionsUrl;

  @override
  String toString() {
    return 'AuctionHostCompany(name: $name, phoneNumber: $phoneNumber, supportEmail: $supportEmail, wireInstructionsUrl: $wireInstructionsUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionHostCompanyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.supportEmail, supportEmail) ||
                other.supportEmail == supportEmail) &&
            (identical(other.wireInstructionsUrl, wireInstructionsUrl) ||
                other.wireInstructionsUrl == wireInstructionsUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, phoneNumber, supportEmail, wireInstructionsUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionHostCompanyImplCopyWith<_$AuctionHostCompanyImpl> get copyWith =>
      __$$AuctionHostCompanyImplCopyWithImpl<_$AuctionHostCompanyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionHostCompanyImplToJson(
      this,
    );
  }
}

abstract class _AuctionHostCompany implements AuctionHostCompany {
  const factory _AuctionHostCompany(
      {final String name,
      final String? phoneNumber,
      final String? supportEmail,
      final String? wireInstructionsUrl}) = _$AuctionHostCompanyImpl;

  factory _AuctionHostCompany.fromJson(Map<String, dynamic> json) =
      _$AuctionHostCompanyImpl.fromJson;

  @override
  String get name;
  @override
  String? get phoneNumber;
  @override
  String? get supportEmail;
  @override
  String? get wireInstructionsUrl;
  @override
  @JsonKey(ignore: true)
  _$$AuctionHostCompanyImplCopyWith<_$AuctionHostCompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
