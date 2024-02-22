// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavedFilter _$SavedFilterFromJson(Map<String, dynamic> json) {
  return _SavedFilter.fromJson(json);
}

/// @nodoc
mixin _$SavedFilter {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Map<String, dynamic> get savedFilter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedFilterCopyWith<SavedFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedFilterCopyWith<$Res> {
  factory $SavedFilterCopyWith(
          SavedFilter value, $Res Function(SavedFilter) then) =
      _$SavedFilterCopyWithImpl<$Res, SavedFilter>;
  @useResult
  $Res call({int? id, String name, Map<String, dynamic> savedFilter});
}

/// @nodoc
class _$SavedFilterCopyWithImpl<$Res, $Val extends SavedFilter>
    implements $SavedFilterCopyWith<$Res> {
  _$SavedFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? savedFilter = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      savedFilter: null == savedFilter
          ? _value.savedFilter
          : savedFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedFilterImplCopyWith<$Res>
    implements $SavedFilterCopyWith<$Res> {
  factory _$$SavedFilterImplCopyWith(
          _$SavedFilterImpl value, $Res Function(_$SavedFilterImpl) then) =
      __$$SavedFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name, Map<String, dynamic> savedFilter});
}

/// @nodoc
class __$$SavedFilterImplCopyWithImpl<$Res>
    extends _$SavedFilterCopyWithImpl<$Res, _$SavedFilterImpl>
    implements _$$SavedFilterImplCopyWith<$Res> {
  __$$SavedFilterImplCopyWithImpl(
      _$SavedFilterImpl _value, $Res Function(_$SavedFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? savedFilter = null,
  }) {
    return _then(_$SavedFilterImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      savedFilter: null == savedFilter
          ? _value._savedFilter
          : savedFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedFilterImpl extends _SavedFilter {
  const _$SavedFilterImpl(
      {this.id,
      required this.name,
      required final Map<String, dynamic> savedFilter})
      : _savedFilter = savedFilter,
        super._();

  factory _$SavedFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedFilterImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  final Map<String, dynamic> _savedFilter;
  @override
  Map<String, dynamic> get savedFilter {
    if (_savedFilter is EqualUnmodifiableMapView) return _savedFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_savedFilter);
  }

  @override
  String toString() {
    return 'SavedFilter(id: $id, name: $name, savedFilter: $savedFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedFilterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._savedFilter, _savedFilter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_savedFilter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedFilterImplCopyWith<_$SavedFilterImpl> get copyWith =>
      __$$SavedFilterImplCopyWithImpl<_$SavedFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedFilterImplToJson(
      this,
    );
  }
}

abstract class _SavedFilter extends SavedFilter {
  const factory _SavedFilter(
      {final int? id,
      required final String name,
      required final Map<String, dynamic> savedFilter}) = _$SavedFilterImpl;
  const _SavedFilter._() : super._();

  factory _SavedFilter.fromJson(Map<String, dynamic> json) =
      _$SavedFilterImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  Map<String, dynamic> get savedFilter;
  @override
  @JsonKey(ignore: true)
  _$$SavedFilterImplCopyWith<_$SavedFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
