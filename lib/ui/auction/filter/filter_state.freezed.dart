// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterState {
  Map<int, AttributeFilter> get filters => throw _privateConstructorUsedError;
  LoadingState<List<AttributeType>> get attributes =>
      throw _privateConstructorUsedError;
  dynamic get showAllFilters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res, FilterState>;
  @useResult
  $Res call(
      {Map<int, AttributeFilter> filters,
      LoadingState<List<AttributeType>> attributes,
      dynamic showAllFilters});

  $LoadingStateCopyWith<List<AttributeType>, $Res> get attributes;
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? attributes = null,
    Object? showAllFilters = freezed,
  }) {
    return _then(_value.copyWith(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<int, AttributeFilter>,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<AttributeType>>,
      showAllFilters: freezed == showAllFilters
          ? _value.showAllFilters
          : showAllFilters // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<List<AttributeType>, $Res> get attributes {
    return $LoadingStateCopyWith<List<AttributeType>, $Res>(_value.attributes,
        (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FilterStateImplCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$FilterStateImplCopyWith(
          _$FilterStateImpl value, $Res Function(_$FilterStateImpl) then) =
      __$$FilterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, AttributeFilter> filters,
      LoadingState<List<AttributeType>> attributes,
      dynamic showAllFilters});

  @override
  $LoadingStateCopyWith<List<AttributeType>, $Res> get attributes;
}

/// @nodoc
class __$$FilterStateImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$FilterStateImpl>
    implements _$$FilterStateImplCopyWith<$Res> {
  __$$FilterStateImplCopyWithImpl(
      _$FilterStateImpl _value, $Res Function(_$FilterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? attributes = null,
    Object? showAllFilters = freezed,
  }) {
    return _then(_$FilterStateImpl(
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<int, AttributeFilter>,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<AttributeType>>,
      showAllFilters:
          freezed == showAllFilters ? _value.showAllFilters! : showAllFilters,
    ));
  }
}

/// @nodoc

class _$FilterStateImpl extends _FilterState {
  const _$FilterStateImpl(
      {final Map<int, AttributeFilter> filters = const {},
      this.attributes = const Uninitialized(),
      this.showAllFilters = false})
      : _filters = filters,
        super._();

  final Map<int, AttributeFilter> _filters;
  @override
  @JsonKey()
  Map<int, AttributeFilter> get filters {
    if (_filters is EqualUnmodifiableMapView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_filters);
  }

  @override
  @JsonKey()
  final LoadingState<List<AttributeType>> attributes;
  @override
  @JsonKey()
  final dynamic showAllFilters;

  @override
  String toString() {
    return 'FilterState(filters: $filters, attributes: $attributes, showAllFilters: $showAllFilters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterStateImpl &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            const DeepCollectionEquality()
                .equals(other.showAllFilters, showAllFilters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_filters),
      attributes,
      const DeepCollectionEquality().hash(showAllFilters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterStateImplCopyWith<_$FilterStateImpl> get copyWith =>
      __$$FilterStateImplCopyWithImpl<_$FilterStateImpl>(this, _$identity);
}

abstract class _FilterState extends FilterState {
  const factory _FilterState(
      {final Map<int, AttributeFilter> filters,
      final LoadingState<List<AttributeType>> attributes,
      final dynamic showAllFilters}) = _$FilterStateImpl;
  const _FilterState._() : super._();

  @override
  Map<int, AttributeFilter> get filters;
  @override
  LoadingState<List<AttributeType>> get attributes;
  @override
  dynamic get showAllFilters;
  @override
  @JsonKey(ignore: true)
  _$$FilterStateImplCopyWith<_$FilterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
