// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationSettingDto _$NotificationSettingDtoFromJson(
    Map<String, dynamic> json) {
  return _NotificationSettingDto.fromJson(json);
}

/// @nodoc
mixin _$NotificationSettingDto {
  @JsonKey(unknownEnumValue: NotificationEventType.other)
  NotificationEventType get notification => throw _privateConstructorUsedError;
  bool get isEmailNotifEnabled => throw _privateConstructorUsedError;
  bool get isMsgNotifEnabled => throw _privateConstructorUsedError;
  bool get isPushNotifEnabled => throw _privateConstructorUsedError;
  bool get isEmailNotifSubscribed => throw _privateConstructorUsedError;
  bool get isMsgNotifSubscribed => throw _privateConstructorUsedError;
  bool get isPushNotifSubscribed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationSettingDtoCopyWith<NotificationSettingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingDtoCopyWith<$Res> {
  factory $NotificationSettingDtoCopyWith(NotificationSettingDto value,
          $Res Function(NotificationSettingDto) then) =
      _$NotificationSettingDtoCopyWithImpl<$Res, NotificationSettingDto>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: NotificationEventType.other)
          NotificationEventType notification,
      bool isEmailNotifEnabled,
      bool isMsgNotifEnabled,
      bool isPushNotifEnabled,
      bool isEmailNotifSubscribed,
      bool isMsgNotifSubscribed,
      bool isPushNotifSubscribed});
}

/// @nodoc
class _$NotificationSettingDtoCopyWithImpl<$Res,
        $Val extends NotificationSettingDto>
    implements $NotificationSettingDtoCopyWith<$Res> {
  _$NotificationSettingDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
    Object? isEmailNotifEnabled = null,
    Object? isMsgNotifEnabled = null,
    Object? isPushNotifEnabled = null,
    Object? isEmailNotifSubscribed = null,
    Object? isMsgNotifSubscribed = null,
    Object? isPushNotifSubscribed = null,
  }) {
    return _then(_value.copyWith(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationEventType,
      isEmailNotifEnabled: null == isEmailNotifEnabled
          ? _value.isEmailNotifEnabled
          : isEmailNotifEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isMsgNotifEnabled: null == isMsgNotifEnabled
          ? _value.isMsgNotifEnabled
          : isMsgNotifEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isPushNotifEnabled: null == isPushNotifEnabled
          ? _value.isPushNotifEnabled
          : isPushNotifEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailNotifSubscribed: null == isEmailNotifSubscribed
          ? _value.isEmailNotifSubscribed
          : isEmailNotifSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      isMsgNotifSubscribed: null == isMsgNotifSubscribed
          ? _value.isMsgNotifSubscribed
          : isMsgNotifSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      isPushNotifSubscribed: null == isPushNotifSubscribed
          ? _value.isPushNotifSubscribed
          : isPushNotifSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationSettingDtoImplCopyWith<$Res>
    implements $NotificationSettingDtoCopyWith<$Res> {
  factory _$$NotificationSettingDtoImplCopyWith(
          _$NotificationSettingDtoImpl value,
          $Res Function(_$NotificationSettingDtoImpl) then) =
      __$$NotificationSettingDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: NotificationEventType.other)
          NotificationEventType notification,
      bool isEmailNotifEnabled,
      bool isMsgNotifEnabled,
      bool isPushNotifEnabled,
      bool isEmailNotifSubscribed,
      bool isMsgNotifSubscribed,
      bool isPushNotifSubscribed});
}

/// @nodoc
class __$$NotificationSettingDtoImplCopyWithImpl<$Res>
    extends _$NotificationSettingDtoCopyWithImpl<$Res,
        _$NotificationSettingDtoImpl>
    implements _$$NotificationSettingDtoImplCopyWith<$Res> {
  __$$NotificationSettingDtoImplCopyWithImpl(
      _$NotificationSettingDtoImpl _value,
      $Res Function(_$NotificationSettingDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
    Object? isEmailNotifEnabled = null,
    Object? isMsgNotifEnabled = null,
    Object? isPushNotifEnabled = null,
    Object? isEmailNotifSubscribed = null,
    Object? isMsgNotifSubscribed = null,
    Object? isPushNotifSubscribed = null,
  }) {
    return _then(_$NotificationSettingDtoImpl(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationEventType,
      isEmailNotifEnabled: null == isEmailNotifEnabled
          ? _value.isEmailNotifEnabled
          : isEmailNotifEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isMsgNotifEnabled: null == isMsgNotifEnabled
          ? _value.isMsgNotifEnabled
          : isMsgNotifEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isPushNotifEnabled: null == isPushNotifEnabled
          ? _value.isPushNotifEnabled
          : isPushNotifEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailNotifSubscribed: null == isEmailNotifSubscribed
          ? _value.isEmailNotifSubscribed
          : isEmailNotifSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      isMsgNotifSubscribed: null == isMsgNotifSubscribed
          ? _value.isMsgNotifSubscribed
          : isMsgNotifSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      isPushNotifSubscribed: null == isPushNotifSubscribed
          ? _value.isPushNotifSubscribed
          : isPushNotifSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationSettingDtoImpl extends _NotificationSettingDto {
  const _$NotificationSettingDtoImpl(
      {@JsonKey(unknownEnumValue: NotificationEventType.other)
          required this.notification,
      required this.isEmailNotifEnabled,
      required this.isMsgNotifEnabled,
      required this.isPushNotifEnabled,
      required this.isEmailNotifSubscribed,
      required this.isMsgNotifSubscribed,
      required this.isPushNotifSubscribed})
      : super._();

  factory _$NotificationSettingDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationSettingDtoImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: NotificationEventType.other)
  final NotificationEventType notification;
  @override
  final bool isEmailNotifEnabled;
  @override
  final bool isMsgNotifEnabled;
  @override
  final bool isPushNotifEnabled;
  @override
  final bool isEmailNotifSubscribed;
  @override
  final bool isMsgNotifSubscribed;
  @override
  final bool isPushNotifSubscribed;

  @override
  String toString() {
    return 'NotificationSettingDto(notification: $notification, isEmailNotifEnabled: $isEmailNotifEnabled, isMsgNotifEnabled: $isMsgNotifEnabled, isPushNotifEnabled: $isPushNotifEnabled, isEmailNotifSubscribed: $isEmailNotifSubscribed, isMsgNotifSubscribed: $isMsgNotifSubscribed, isPushNotifSubscribed: $isPushNotifSubscribed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSettingDtoImpl &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.isEmailNotifEnabled, isEmailNotifEnabled) ||
                other.isEmailNotifEnabled == isEmailNotifEnabled) &&
            (identical(other.isMsgNotifEnabled, isMsgNotifEnabled) ||
                other.isMsgNotifEnabled == isMsgNotifEnabled) &&
            (identical(other.isPushNotifEnabled, isPushNotifEnabled) ||
                other.isPushNotifEnabled == isPushNotifEnabled) &&
            (identical(other.isEmailNotifSubscribed, isEmailNotifSubscribed) ||
                other.isEmailNotifSubscribed == isEmailNotifSubscribed) &&
            (identical(other.isMsgNotifSubscribed, isMsgNotifSubscribed) ||
                other.isMsgNotifSubscribed == isMsgNotifSubscribed) &&
            (identical(other.isPushNotifSubscribed, isPushNotifSubscribed) ||
                other.isPushNotifSubscribed == isPushNotifSubscribed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      notification,
      isEmailNotifEnabled,
      isMsgNotifEnabled,
      isPushNotifEnabled,
      isEmailNotifSubscribed,
      isMsgNotifSubscribed,
      isPushNotifSubscribed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSettingDtoImplCopyWith<_$NotificationSettingDtoImpl>
      get copyWith => __$$NotificationSettingDtoImplCopyWithImpl<
          _$NotificationSettingDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationSettingDtoImplToJson(
      this,
    );
  }
}

abstract class _NotificationSettingDto extends NotificationSettingDto {
  const factory _NotificationSettingDto(
          {@JsonKey(unknownEnumValue: NotificationEventType.other)
              required final NotificationEventType notification,
          required final bool isEmailNotifEnabled,
          required final bool isMsgNotifEnabled,
          required final bool isPushNotifEnabled,
          required final bool isEmailNotifSubscribed,
          required final bool isMsgNotifSubscribed,
          required final bool isPushNotifSubscribed}) =
      _$NotificationSettingDtoImpl;
  const _NotificationSettingDto._() : super._();

  factory _NotificationSettingDto.fromJson(Map<String, dynamic> json) =
      _$NotificationSettingDtoImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: NotificationEventType.other)
  NotificationEventType get notification;
  @override
  bool get isEmailNotifEnabled;
  @override
  bool get isMsgNotifEnabled;
  @override
  bool get isPushNotifEnabled;
  @override
  bool get isEmailNotifSubscribed;
  @override
  bool get isMsgNotifSubscribed;
  @override
  bool get isPushNotifSubscribed;
  @override
  @JsonKey(ignore: true)
  _$$NotificationSettingDtoImplCopyWith<_$NotificationSettingDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
