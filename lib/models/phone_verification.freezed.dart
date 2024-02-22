// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_verification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhoneVerificationToken _$PhoneVerificationTokenFromJson(
    Map<String, dynamic> json) {
  return _PhoneVerificationToken.fromJson(json);
}

/// @nodoc
mixin _$PhoneVerificationToken {
  int get id => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  DateTime get expirationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneVerificationTokenCopyWith<PhoneVerificationToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneVerificationTokenCopyWith<$Res> {
  factory $PhoneVerificationTokenCopyWith(PhoneVerificationToken value,
          $Res Function(PhoneVerificationToken) then) =
      _$PhoneVerificationTokenCopyWithImpl<$Res, PhoneVerificationToken>;
  @useResult
  $Res call({int id, String number, DateTime expirationDate});
}

/// @nodoc
class _$PhoneVerificationTokenCopyWithImpl<$Res,
        $Val extends PhoneVerificationToken>
    implements $PhoneVerificationTokenCopyWith<$Res> {
  _$PhoneVerificationTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? expirationDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhoneVerificationTokenImplCopyWith<$Res>
    implements $PhoneVerificationTokenCopyWith<$Res> {
  factory _$$PhoneVerificationTokenImplCopyWith(
          _$PhoneVerificationTokenImpl value,
          $Res Function(_$PhoneVerificationTokenImpl) then) =
      __$$PhoneVerificationTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String number, DateTime expirationDate});
}

/// @nodoc
class __$$PhoneVerificationTokenImplCopyWithImpl<$Res>
    extends _$PhoneVerificationTokenCopyWithImpl<$Res,
        _$PhoneVerificationTokenImpl>
    implements _$$PhoneVerificationTokenImplCopyWith<$Res> {
  __$$PhoneVerificationTokenImplCopyWithImpl(
      _$PhoneVerificationTokenImpl _value,
      $Res Function(_$PhoneVerificationTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? expirationDate = null,
  }) {
    return _then(_$PhoneVerificationTokenImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhoneVerificationTokenImpl extends _PhoneVerificationToken {
  const _$PhoneVerificationTokenImpl(
      {required this.id, required this.number, required this.expirationDate})
      : super._();

  factory _$PhoneVerificationTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhoneVerificationTokenImplFromJson(json);

  @override
  final int id;
  @override
  final String number;
  @override
  final DateTime expirationDate;

  @override
  String toString() {
    return 'PhoneVerificationToken(id: $id, number: $number, expirationDate: $expirationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneVerificationTokenImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, expirationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneVerificationTokenImplCopyWith<_$PhoneVerificationTokenImpl>
      get copyWith => __$$PhoneVerificationTokenImplCopyWithImpl<
          _$PhoneVerificationTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhoneVerificationTokenImplToJson(
      this,
    );
  }
}

abstract class _PhoneVerificationToken extends PhoneVerificationToken {
  const factory _PhoneVerificationToken(
      {required final int id,
      required final String number,
      required final DateTime expirationDate}) = _$PhoneVerificationTokenImpl;
  const _PhoneVerificationToken._() : super._();

  factory _PhoneVerificationToken.fromJson(Map<String, dynamic> json) =
      _$PhoneVerificationTokenImpl.fromJson;

  @override
  int get id;
  @override
  String get number;
  @override
  DateTime get expirationDate;
  @override
  @JsonKey(ignore: true)
  _$$PhoneVerificationTokenImplCopyWith<_$PhoneVerificationTokenImpl>
      get copyWith => throw _privateConstructorUsedError;
}
