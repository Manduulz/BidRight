// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_bounds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapBounds {
  num get north => throw _privateConstructorUsedError;
  num get south => throw _privateConstructorUsedError;
  num get east => throw _privateConstructorUsedError;
  num get west => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapBoundsCopyWith<MapBounds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapBoundsCopyWith<$Res> {
  factory $MapBoundsCopyWith(MapBounds value, $Res Function(MapBounds) then) =
      _$MapBoundsCopyWithImpl<$Res, MapBounds>;
  @useResult
  $Res call({num north, num south, num east, num west});
}

/// @nodoc
class _$MapBoundsCopyWithImpl<$Res, $Val extends MapBounds>
    implements $MapBoundsCopyWith<$Res> {
  _$MapBoundsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? north = null,
    Object? south = null,
    Object? east = null,
    Object? west = null,
  }) {
    return _then(_value.copyWith(
      north: null == north
          ? _value.north
          : north // ignore: cast_nullable_to_non_nullable
              as num,
      south: null == south
          ? _value.south
          : south // ignore: cast_nullable_to_non_nullable
              as num,
      east: null == east
          ? _value.east
          : east // ignore: cast_nullable_to_non_nullable
              as num,
      west: null == west
          ? _value.west
          : west // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapBoundsImplCopyWith<$Res>
    implements $MapBoundsCopyWith<$Res> {
  factory _$$MapBoundsImplCopyWith(
          _$MapBoundsImpl value, $Res Function(_$MapBoundsImpl) then) =
      __$$MapBoundsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num north, num south, num east, num west});
}

/// @nodoc
class __$$MapBoundsImplCopyWithImpl<$Res>
    extends _$MapBoundsCopyWithImpl<$Res, _$MapBoundsImpl>
    implements _$$MapBoundsImplCopyWith<$Res> {
  __$$MapBoundsImplCopyWithImpl(
      _$MapBoundsImpl _value, $Res Function(_$MapBoundsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? north = null,
    Object? south = null,
    Object? east = null,
    Object? west = null,
  }) {
    return _then(_$MapBoundsImpl(
      north: null == north
          ? _value.north
          : north // ignore: cast_nullable_to_non_nullable
              as num,
      south: null == south
          ? _value.south
          : south // ignore: cast_nullable_to_non_nullable
              as num,
      east: null == east
          ? _value.east
          : east // ignore: cast_nullable_to_non_nullable
              as num,
      west: null == west
          ? _value.west
          : west // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$MapBoundsImpl implements _MapBounds {
  const _$MapBoundsImpl(
      {required this.north,
      required this.south,
      required this.east,
      required this.west});

  @override
  final num north;
  @override
  final num south;
  @override
  final num east;
  @override
  final num west;

  @override
  String toString() {
    return 'MapBounds(north: $north, south: $south, east: $east, west: $west)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapBoundsImpl &&
            (identical(other.north, north) || other.north == north) &&
            (identical(other.south, south) || other.south == south) &&
            (identical(other.east, east) || other.east == east) &&
            (identical(other.west, west) || other.west == west));
  }

  @override
  int get hashCode => Object.hash(runtimeType, north, south, east, west);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapBoundsImplCopyWith<_$MapBoundsImpl> get copyWith =>
      __$$MapBoundsImplCopyWithImpl<_$MapBoundsImpl>(this, _$identity);
}

abstract class _MapBounds implements MapBounds {
  const factory _MapBounds(
      {required final num north,
      required final num south,
      required final num east,
      required final num west}) = _$MapBoundsImpl;

  @override
  num get north;
  @override
  num get south;
  @override
  num get east;
  @override
  num get west;
  @override
  @JsonKey(ignore: true)
  _$$MapBoundsImplCopyWith<_$MapBoundsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
