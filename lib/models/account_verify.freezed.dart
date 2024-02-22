// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_verify.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountVerifyResponse _$AccountVerifyResponseFromJson(
    Map<String, dynamic> json) {
  return _AccountVerifyResponse.fromJson(json);
}

/// @nodoc
mixin _$AccountVerifyResponse {
  bool get isVerified => throw _privateConstructorUsedError;
  List<String> get phones => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountVerifyResponseCopyWith<AccountVerifyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountVerifyResponseCopyWith<$Res> {
  factory $AccountVerifyResponseCopyWith(AccountVerifyResponse value,
          $Res Function(AccountVerifyResponse) then) =
      _$AccountVerifyResponseCopyWithImpl<$Res, AccountVerifyResponse>;
  @useResult
  $Res call({bool isVerified, List<String> phones});
}

/// @nodoc
class _$AccountVerifyResponseCopyWithImpl<$Res,
        $Val extends AccountVerifyResponse>
    implements $AccountVerifyResponseCopyWith<$Res> {
  _$AccountVerifyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVerified = null,
    Object? phones = null,
  }) {
    return _then(_value.copyWith(
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phones: null == phones
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountVerifyResponseImplCopyWith<$Res>
    implements $AccountVerifyResponseCopyWith<$Res> {
  factory _$$AccountVerifyResponseImplCopyWith(
          _$AccountVerifyResponseImpl value,
          $Res Function(_$AccountVerifyResponseImpl) then) =
      __$$AccountVerifyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isVerified, List<String> phones});
}

/// @nodoc
class __$$AccountVerifyResponseImplCopyWithImpl<$Res>
    extends _$AccountVerifyResponseCopyWithImpl<$Res,
        _$AccountVerifyResponseImpl>
    implements _$$AccountVerifyResponseImplCopyWith<$Res> {
  __$$AccountVerifyResponseImplCopyWithImpl(_$AccountVerifyResponseImpl _value,
      $Res Function(_$AccountVerifyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVerified = null,
    Object? phones = null,
  }) {
    return _then(_$AccountVerifyResponseImpl(
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phones: null == phones
          ? _value._phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountVerifyResponseImpl extends _AccountVerifyResponse {
  const _$AccountVerifyResponseImpl(
      {this.isVerified = false, final List<String> phones = const []})
      : _phones = phones,
        super._();

  factory _$AccountVerifyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountVerifyResponseImplFromJson(json);

  @override
  @JsonKey()
  final bool isVerified;
  final List<String> _phones;
  @override
  @JsonKey()
  List<String> get phones {
    if (_phones is EqualUnmodifiableListView) return _phones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phones);
  }

  @override
  String toString() {
    return 'AccountVerifyResponse(isVerified: $isVerified, phones: $phones)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountVerifyResponseImpl &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            const DeepCollectionEquality().equals(other._phones, _phones));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isVerified, const DeepCollectionEquality().hash(_phones));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountVerifyResponseImplCopyWith<_$AccountVerifyResponseImpl>
      get copyWith => __$$AccountVerifyResponseImplCopyWithImpl<
          _$AccountVerifyResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountVerifyResponseImplToJson(
      this,
    );
  }
}

abstract class _AccountVerifyResponse extends AccountVerifyResponse {
  const factory _AccountVerifyResponse(
      {final bool isVerified,
      final List<String> phones}) = _$AccountVerifyResponseImpl;
  const _AccountVerifyResponse._() : super._();

  factory _AccountVerifyResponse.fromJson(Map<String, dynamic> json) =
      _$AccountVerifyResponseImpl.fromJson;

  @override
  bool get isVerified;
  @override
  List<String> get phones;
  @override
  @JsonKey(ignore: true)
  _$$AccountVerifyResponseImplCopyWith<_$AccountVerifyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
