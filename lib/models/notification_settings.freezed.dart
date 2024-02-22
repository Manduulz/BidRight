// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationSetting {
  @JsonKey(unknownEnumValue: NotificationEventType.other)
  NotificationEventType get notification => throw _privateConstructorUsedError;
  Map<NotificationType, SingleNotificationSetting> get settings =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationSettingCopyWith<NotificationSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingCopyWith<$Res> {
  factory $NotificationSettingCopyWith(
          NotificationSetting value, $Res Function(NotificationSetting) then) =
      _$NotificationSettingCopyWithImpl<$Res, NotificationSetting>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: NotificationEventType.other)
          NotificationEventType notification,
      Map<NotificationType, SingleNotificationSetting> settings});
}

/// @nodoc
class _$NotificationSettingCopyWithImpl<$Res, $Val extends NotificationSetting>
    implements $NotificationSettingCopyWith<$Res> {
  _$NotificationSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationEventType,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<NotificationType, SingleNotificationSetting>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationSettingImplCopyWith<$Res>
    implements $NotificationSettingCopyWith<$Res> {
  factory _$$NotificationSettingImplCopyWith(_$NotificationSettingImpl value,
          $Res Function(_$NotificationSettingImpl) then) =
      __$$NotificationSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: NotificationEventType.other)
          NotificationEventType notification,
      Map<NotificationType, SingleNotificationSetting> settings});
}

/// @nodoc
class __$$NotificationSettingImplCopyWithImpl<$Res>
    extends _$NotificationSettingCopyWithImpl<$Res, _$NotificationSettingImpl>
    implements _$$NotificationSettingImplCopyWith<$Res> {
  __$$NotificationSettingImplCopyWithImpl(_$NotificationSettingImpl _value,
      $Res Function(_$NotificationSettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
    Object? settings = null,
  }) {
    return _then(_$NotificationSettingImpl(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationEventType,
      settings: null == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<NotificationType, SingleNotificationSetting>,
    ));
  }
}

/// @nodoc

class _$NotificationSettingImpl extends _NotificationSetting {
  const _$NotificationSettingImpl(
      {@JsonKey(unknownEnumValue: NotificationEventType.other)
          required this.notification,
      required final Map<NotificationType, SingleNotificationSetting> settings})
      : _settings = settings,
        super._();

  @override
  @JsonKey(unknownEnumValue: NotificationEventType.other)
  final NotificationEventType notification;
  final Map<NotificationType, SingleNotificationSetting> _settings;
  @override
  Map<NotificationType, SingleNotificationSetting> get settings {
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_settings);
  }

  @override
  String toString() {
    return 'NotificationSetting(notification: $notification, settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSettingImpl &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            const DeepCollectionEquality().equals(other._settings, _settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification,
      const DeepCollectionEquality().hash(_settings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSettingImplCopyWith<_$NotificationSettingImpl> get copyWith =>
      __$$NotificationSettingImplCopyWithImpl<_$NotificationSettingImpl>(
          this, _$identity);
}

abstract class _NotificationSetting extends NotificationSetting {
  const factory _NotificationSetting(
      {@JsonKey(unknownEnumValue: NotificationEventType.other)
          required final NotificationEventType notification,
      required final Map<NotificationType, SingleNotificationSetting>
          settings}) = _$NotificationSettingImpl;
  const _NotificationSetting._() : super._();

  @override
  @JsonKey(unknownEnumValue: NotificationEventType.other)
  NotificationEventType get notification;
  @override
  Map<NotificationType, SingleNotificationSetting> get settings;
  @override
  @JsonKey(ignore: true)
  _$$NotificationSettingImplCopyWith<_$NotificationSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleNotificationSetting {
  bool get isEnabled => throw _privateConstructorUsedError;
  bool get isSubscribed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleNotificationSettingCopyWith<SingleNotificationSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleNotificationSettingCopyWith<$Res> {
  factory $SingleNotificationSettingCopyWith(SingleNotificationSetting value,
          $Res Function(SingleNotificationSetting) then) =
      _$SingleNotificationSettingCopyWithImpl<$Res, SingleNotificationSetting>;
  @useResult
  $Res call({bool isEnabled, bool isSubscribed});
}

/// @nodoc
class _$SingleNotificationSettingCopyWithImpl<$Res,
        $Val extends SingleNotificationSetting>
    implements $SingleNotificationSettingCopyWith<$Res> {
  _$SingleNotificationSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? isSubscribed = null,
  }) {
    return _then(_value.copyWith(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleNotificationSettingImplCopyWith<$Res>
    implements $SingleNotificationSettingCopyWith<$Res> {
  factory _$$SingleNotificationSettingImplCopyWith(
          _$SingleNotificationSettingImpl value,
          $Res Function(_$SingleNotificationSettingImpl) then) =
      __$$SingleNotificationSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isEnabled, bool isSubscribed});
}

/// @nodoc
class __$$SingleNotificationSettingImplCopyWithImpl<$Res>
    extends _$SingleNotificationSettingCopyWithImpl<$Res,
        _$SingleNotificationSettingImpl>
    implements _$$SingleNotificationSettingImplCopyWith<$Res> {
  __$$SingleNotificationSettingImplCopyWithImpl(
      _$SingleNotificationSettingImpl _value,
      $Res Function(_$SingleNotificationSettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? isSubscribed = null,
  }) {
    return _then(_$SingleNotificationSettingImpl(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SingleNotificationSettingImpl extends _SingleNotificationSetting {
  const _$SingleNotificationSettingImpl(
      {required this.isEnabled, required this.isSubscribed})
      : super._();

  @override
  final bool isEnabled;
  @override
  final bool isSubscribed;

  @override
  String toString() {
    return 'SingleNotificationSetting(isEnabled: $isEnabled, isSubscribed: $isSubscribed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleNotificationSettingImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, isSubscribed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleNotificationSettingImplCopyWith<_$SingleNotificationSettingImpl>
      get copyWith => __$$SingleNotificationSettingImplCopyWithImpl<
          _$SingleNotificationSettingImpl>(this, _$identity);
}

abstract class _SingleNotificationSetting extends SingleNotificationSetting {
  const factory _SingleNotificationSetting(
      {required final bool isEnabled,
      required final bool isSubscribed}) = _$SingleNotificationSettingImpl;
  const _SingleNotificationSetting._() : super._();

  @override
  bool get isEnabled;
  @override
  bool get isSubscribed;
  @override
  @JsonKey(ignore: true)
  _$$SingleNotificationSettingImplCopyWith<_$SingleNotificationSettingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FullNotificationType _$FullNotificationTypeFromJson(Map<String, dynamic> json) {
  return _FullNotificationType.fromJson(json);
}

/// @nodoc
mixin _$FullNotificationType {
  @JsonKey(name: 'notification')
  NotificationEventType get eventType => throw _privateConstructorUsedError;
  @JsonKey(name: 'notificationType')
  NotificationType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FullNotificationTypeCopyWith<FullNotificationType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullNotificationTypeCopyWith<$Res> {
  factory $FullNotificationTypeCopyWith(FullNotificationType value,
          $Res Function(FullNotificationType) then) =
      _$FullNotificationTypeCopyWithImpl<$Res, FullNotificationType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'notification') NotificationEventType eventType,
      @JsonKey(name: 'notificationType') NotificationType type});
}

/// @nodoc
class _$FullNotificationTypeCopyWithImpl<$Res,
        $Val extends FullNotificationType>
    implements $FullNotificationTypeCopyWith<$Res> {
  _$FullNotificationTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as NotificationEventType,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FullNotificationTypeImplCopyWith<$Res>
    implements $FullNotificationTypeCopyWith<$Res> {
  factory _$$FullNotificationTypeImplCopyWith(_$FullNotificationTypeImpl value,
          $Res Function(_$FullNotificationTypeImpl) then) =
      __$$FullNotificationTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'notification') NotificationEventType eventType,
      @JsonKey(name: 'notificationType') NotificationType type});
}

/// @nodoc
class __$$FullNotificationTypeImplCopyWithImpl<$Res>
    extends _$FullNotificationTypeCopyWithImpl<$Res, _$FullNotificationTypeImpl>
    implements _$$FullNotificationTypeImplCopyWith<$Res> {
  __$$FullNotificationTypeImplCopyWithImpl(_$FullNotificationTypeImpl _value,
      $Res Function(_$FullNotificationTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? type = null,
  }) {
    return _then(_$FullNotificationTypeImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as NotificationEventType,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FullNotificationTypeImpl extends _FullNotificationType {
  const _$FullNotificationTypeImpl(
      {@JsonKey(name: 'notification') required this.eventType,
      @JsonKey(name: 'notificationType') required this.type})
      : super._();

  factory _$FullNotificationTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FullNotificationTypeImplFromJson(json);

  @override
  @JsonKey(name: 'notification')
  final NotificationEventType eventType;
  @override
  @JsonKey(name: 'notificationType')
  final NotificationType type;

  @override
  String toString() {
    return 'FullNotificationType(eventType: $eventType, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullNotificationTypeImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FullNotificationTypeImplCopyWith<_$FullNotificationTypeImpl>
      get copyWith =>
          __$$FullNotificationTypeImplCopyWithImpl<_$FullNotificationTypeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FullNotificationTypeImplToJson(
      this,
    );
  }
}

abstract class _FullNotificationType extends FullNotificationType {
  const factory _FullNotificationType(
      {@JsonKey(name: 'notification')
          required final NotificationEventType eventType,
      @JsonKey(name: 'notificationType')
          required final NotificationType type}) = _$FullNotificationTypeImpl;
  const _FullNotificationType._() : super._();

  factory _FullNotificationType.fromJson(Map<String, dynamic> json) =
      _$FullNotificationTypeImpl.fromJson;

  @override
  @JsonKey(name: 'notification')
  NotificationEventType get eventType;
  @override
  @JsonKey(name: 'notificationType')
  NotificationType get type;
  @override
  @JsonKey(ignore: true)
  _$$FullNotificationTypeImplCopyWith<_$FullNotificationTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
