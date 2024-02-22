// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationState {
  LoadingState<List<NotificationSetting>> get settings =>
      throw _privateConstructorUsedError;
  bool get hasInFlightUpdates => throw _privateConstructorUsedError;
  List<NotificationUpdate> get failedUpdates =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call(
      {LoadingState<List<NotificationSetting>> settings,
      bool hasInFlightUpdates,
      List<NotificationUpdate> failedUpdates});

  $LoadingStateCopyWith<List<NotificationSetting>, $Res> get settings;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? hasInFlightUpdates = null,
    Object? failedUpdates = null,
  }) {
    return _then(_value.copyWith(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<NotificationSetting>>,
      hasInFlightUpdates: null == hasInFlightUpdates
          ? _value.hasInFlightUpdates
          : hasInFlightUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      failedUpdates: null == failedUpdates
          ? _value.failedUpdates
          : failedUpdates // ignore: cast_nullable_to_non_nullable
              as List<NotificationUpdate>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<List<NotificationSetting>, $Res> get settings {
    return $LoadingStateCopyWith<List<NotificationSetting>, $Res>(
        _value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationStateImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$NotificationStateImplCopyWith(_$NotificationStateImpl value,
          $Res Function(_$NotificationStateImpl) then) =
      __$$NotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingState<List<NotificationSetting>> settings,
      bool hasInFlightUpdates,
      List<NotificationUpdate> failedUpdates});

  @override
  $LoadingStateCopyWith<List<NotificationSetting>, $Res> get settings;
}

/// @nodoc
class __$$NotificationStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationStateImpl>
    implements _$$NotificationStateImplCopyWith<$Res> {
  __$$NotificationStateImplCopyWithImpl(_$NotificationStateImpl _value,
      $Res Function(_$NotificationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? hasInFlightUpdates = null,
    Object? failedUpdates = null,
  }) {
    return _then(_$NotificationStateImpl(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<NotificationSetting>>,
      hasInFlightUpdates: null == hasInFlightUpdates
          ? _value.hasInFlightUpdates
          : hasInFlightUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      failedUpdates: null == failedUpdates
          ? _value._failedUpdates
          : failedUpdates // ignore: cast_nullable_to_non_nullable
              as List<NotificationUpdate>,
    ));
  }
}

/// @nodoc

class _$NotificationStateImpl extends _NotificationState {
  const _$NotificationStateImpl(
      {this.settings = const Uninitialized(),
      this.hasInFlightUpdates = false,
      final List<NotificationUpdate> failedUpdates = const []})
      : _failedUpdates = failedUpdates,
        super._();

  @override
  @JsonKey()
  final LoadingState<List<NotificationSetting>> settings;
  @override
  @JsonKey()
  final bool hasInFlightUpdates;
  final List<NotificationUpdate> _failedUpdates;
  @override
  @JsonKey()
  List<NotificationUpdate> get failedUpdates {
    if (_failedUpdates is EqualUnmodifiableListView) return _failedUpdates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_failedUpdates);
  }

  @override
  String toString() {
    return 'NotificationState(settings: $settings, hasInFlightUpdates: $hasInFlightUpdates, failedUpdates: $failedUpdates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.hasInFlightUpdates, hasInFlightUpdates) ||
                other.hasInFlightUpdates == hasInFlightUpdates) &&
            const DeepCollectionEquality()
                .equals(other._failedUpdates, _failedUpdates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings, hasInFlightUpdates,
      const DeepCollectionEquality().hash(_failedUpdates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      __$$NotificationStateImplCopyWithImpl<_$NotificationStateImpl>(
          this, _$identity);
}

abstract class _NotificationState extends NotificationState {
  const factory _NotificationState(
      {final LoadingState<List<NotificationSetting>> settings,
      final bool hasInFlightUpdates,
      final List<NotificationUpdate> failedUpdates}) = _$NotificationStateImpl;
  const _NotificationState._() : super._();

  @override
  LoadingState<List<NotificationSetting>> get settings;
  @override
  bool get hasInFlightUpdates;
  @override
  List<NotificationUpdate> get failedUpdates;
  @override
  @JsonKey(ignore: true)
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationUpdate {
  FullNotificationType get type => throw _privateConstructorUsedError;
  bool get subscribed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationUpdateCopyWith<NotificationUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationUpdateCopyWith<$Res> {
  factory $NotificationUpdateCopyWith(
          NotificationUpdate value, $Res Function(NotificationUpdate) then) =
      _$NotificationUpdateCopyWithImpl<$Res, NotificationUpdate>;
  @useResult
  $Res call({FullNotificationType type, bool subscribed});

  $FullNotificationTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$NotificationUpdateCopyWithImpl<$Res, $Val extends NotificationUpdate>
    implements $NotificationUpdateCopyWith<$Res> {
  _$NotificationUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? subscribed = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FullNotificationType,
      subscribed: null == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FullNotificationTypeCopyWith<$Res> get type {
    return $FullNotificationTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationUpdateImplCopyWith<$Res>
    implements $NotificationUpdateCopyWith<$Res> {
  factory _$$NotificationUpdateImplCopyWith(_$NotificationUpdateImpl value,
          $Res Function(_$NotificationUpdateImpl) then) =
      __$$NotificationUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FullNotificationType type, bool subscribed});

  @override
  $FullNotificationTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$NotificationUpdateImplCopyWithImpl<$Res>
    extends _$NotificationUpdateCopyWithImpl<$Res, _$NotificationUpdateImpl>
    implements _$$NotificationUpdateImplCopyWith<$Res> {
  __$$NotificationUpdateImplCopyWithImpl(_$NotificationUpdateImpl _value,
      $Res Function(_$NotificationUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? subscribed = null,
  }) {
    return _then(_$NotificationUpdateImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FullNotificationType,
      subscribed: null == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NotificationUpdateImpl extends _NotificationUpdate {
  const _$NotificationUpdateImpl({required this.type, required this.subscribed})
      : super._();

  @override
  final FullNotificationType type;
  @override
  final bool subscribed;

  @override
  String toString() {
    return 'NotificationUpdate(type: $type, subscribed: $subscribed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationUpdateImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subscribed, subscribed) ||
                other.subscribed == subscribed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, subscribed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationUpdateImplCopyWith<_$NotificationUpdateImpl> get copyWith =>
      __$$NotificationUpdateImplCopyWithImpl<_$NotificationUpdateImpl>(
          this, _$identity);
}

abstract class _NotificationUpdate extends NotificationUpdate {
  const factory _NotificationUpdate(
      {required final FullNotificationType type,
      required final bool subscribed}) = _$NotificationUpdateImpl;
  const _NotificationUpdate._() : super._();

  @override
  FullNotificationType get type;
  @override
  bool get subscribed;
  @override
  @JsonKey(ignore: true)
  _$$NotificationUpdateImplCopyWith<_$NotificationUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
