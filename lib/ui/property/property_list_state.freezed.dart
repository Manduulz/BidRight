// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PropertyListState {
  LoadingState<List<Property>> get properties =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PropertyListStateCopyWith<PropertyListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyListStateCopyWith<$Res> {
  factory $PropertyListStateCopyWith(
          PropertyListState value, $Res Function(PropertyListState) then) =
      _$PropertyListStateCopyWithImpl<$Res, PropertyListState>;
  @useResult
  $Res call({LoadingState<List<Property>> properties});

  $LoadingStateCopyWith<List<Property>, $Res> get properties;
}

/// @nodoc
class _$PropertyListStateCopyWithImpl<$Res, $Val extends PropertyListState>
    implements $PropertyListStateCopyWith<$Res> {
  _$PropertyListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? properties = null,
  }) {
    return _then(_value.copyWith(
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<Property>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<List<Property>, $Res> get properties {
    return $LoadingStateCopyWith<List<Property>, $Res>(_value.properties,
        (value) {
      return _then(_value.copyWith(properties: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyListStateImplCopyWith<$Res>
    implements $PropertyListStateCopyWith<$Res> {
  factory _$$PropertyListStateImplCopyWith(_$PropertyListStateImpl value,
          $Res Function(_$PropertyListStateImpl) then) =
      __$$PropertyListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoadingState<List<Property>> properties});

  @override
  $LoadingStateCopyWith<List<Property>, $Res> get properties;
}

/// @nodoc
class __$$PropertyListStateImplCopyWithImpl<$Res>
    extends _$PropertyListStateCopyWithImpl<$Res, _$PropertyListStateImpl>
    implements _$$PropertyListStateImplCopyWith<$Res> {
  __$$PropertyListStateImplCopyWithImpl(_$PropertyListStateImpl _value,
      $Res Function(_$PropertyListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? properties = null,
  }) {
    return _then(_$PropertyListStateImpl(
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<Property>>,
    ));
  }
}

/// @nodoc

class _$PropertyListStateImpl extends _PropertyListState {
  const _$PropertyListStateImpl({this.properties = const Uninitialized()})
      : super._();

  @override
  @JsonKey()
  final LoadingState<List<Property>> properties;

  @override
  String toString() {
    return 'PropertyListState(properties: $properties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyListStateImpl &&
            (identical(other.properties, properties) ||
                other.properties == properties));
  }

  @override
  int get hashCode => Object.hash(runtimeType, properties);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyListStateImplCopyWith<_$PropertyListStateImpl> get copyWith =>
      __$$PropertyListStateImplCopyWithImpl<_$PropertyListStateImpl>(
          this, _$identity);
}

abstract class _PropertyListState extends PropertyListState {
  const factory _PropertyListState(
          {final LoadingState<List<Property>> properties}) =
      _$PropertyListStateImpl;
  const _PropertyListState._() : super._();

  @override
  LoadingState<List<Property>> get properties;
  @override
  @JsonKey(ignore: true)
  _$$PropertyListStateImplCopyWith<_$PropertyListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
