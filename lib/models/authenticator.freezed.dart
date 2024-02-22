// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Authenticator _$AuthenticatorFromJson(Map<String, dynamic> json) {
  return _Authenticator.fromJson(json);
}

/// @nodoc
mixin _$Authenticator {
  String get qrCodeImageUrl => throw _privateConstructorUsedError;
  String get manualEntrySetupCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticatorCopyWith<Authenticator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatorCopyWith<$Res> {
  factory $AuthenticatorCopyWith(
          Authenticator value, $Res Function(Authenticator) then) =
      _$AuthenticatorCopyWithImpl<$Res, Authenticator>;
  @useResult
  $Res call({String qrCodeImageUrl, String manualEntrySetupCode});
}

/// @nodoc
class _$AuthenticatorCopyWithImpl<$Res, $Val extends Authenticator>
    implements $AuthenticatorCopyWith<$Res> {
  _$AuthenticatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrCodeImageUrl = null,
    Object? manualEntrySetupCode = null,
  }) {
    return _then(_value.copyWith(
      qrCodeImageUrl: null == qrCodeImageUrl
          ? _value.qrCodeImageUrl
          : qrCodeImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      manualEntrySetupCode: null == manualEntrySetupCode
          ? _value.manualEntrySetupCode
          : manualEntrySetupCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticatorImplCopyWith<$Res>
    implements $AuthenticatorCopyWith<$Res> {
  factory _$$AuthenticatorImplCopyWith(
          _$AuthenticatorImpl value, $Res Function(_$AuthenticatorImpl) then) =
      __$$AuthenticatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String qrCodeImageUrl, String manualEntrySetupCode});
}

/// @nodoc
class __$$AuthenticatorImplCopyWithImpl<$Res>
    extends _$AuthenticatorCopyWithImpl<$Res, _$AuthenticatorImpl>
    implements _$$AuthenticatorImplCopyWith<$Res> {
  __$$AuthenticatorImplCopyWithImpl(
      _$AuthenticatorImpl _value, $Res Function(_$AuthenticatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrCodeImageUrl = null,
    Object? manualEntrySetupCode = null,
  }) {
    return _then(_$AuthenticatorImpl(
      qrCodeImageUrl: null == qrCodeImageUrl
          ? _value.qrCodeImageUrl
          : qrCodeImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      manualEntrySetupCode: null == manualEntrySetupCode
          ? _value.manualEntrySetupCode
          : manualEntrySetupCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticatorImpl extends _Authenticator {
  const _$AuthenticatorImpl(
      {required this.qrCodeImageUrl, required this.manualEntrySetupCode})
      : super._();

  factory _$AuthenticatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticatorImplFromJson(json);

  @override
  final String qrCodeImageUrl;
  @override
  final String manualEntrySetupCode;

  @override
  String toString() {
    return 'Authenticator(qrCodeImageUrl: $qrCodeImageUrl, manualEntrySetupCode: $manualEntrySetupCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatorImpl &&
            (identical(other.qrCodeImageUrl, qrCodeImageUrl) ||
                other.qrCodeImageUrl == qrCodeImageUrl) &&
            (identical(other.manualEntrySetupCode, manualEntrySetupCode) ||
                other.manualEntrySetupCode == manualEntrySetupCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, qrCodeImageUrl, manualEntrySetupCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatorImplCopyWith<_$AuthenticatorImpl> get copyWith =>
      __$$AuthenticatorImplCopyWithImpl<_$AuthenticatorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticatorImplToJson(
      this,
    );
  }
}

abstract class _Authenticator extends Authenticator {
  const factory _Authenticator(
      {required final String qrCodeImageUrl,
      required final String manualEntrySetupCode}) = _$AuthenticatorImpl;
  const _Authenticator._() : super._();

  factory _Authenticator.fromJson(Map<String, dynamic> json) =
      _$AuthenticatorImpl.fromJson;

  @override
  String get qrCodeImageUrl;
  @override
  String get manualEntrySetupCode;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticatorImplCopyWith<_$AuthenticatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
