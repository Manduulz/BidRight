// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  bool get showMap => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;
  SearchFilter get filter => throw _privateConstructorUsedError;
  LoadingState<List<LotBidderState>> get lotState =>
      throw _privateConstructorUsedError;
  LoadingState<List<SearchFilter>> get savedFilters =>
      throw _privateConstructorUsedError;
  MapBounds? get bounds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {bool showMap,
      String? query,
      SearchFilter filter,
      LoadingState<List<LotBidderState>> lotState,
      LoadingState<List<SearchFilter>> savedFilters,
      MapBounds? bounds});

  $SearchFilterCopyWith<$Res> get filter;
  $LoadingStateCopyWith<List<LotBidderState>, $Res> get lotState;
  $LoadingStateCopyWith<List<SearchFilter>, $Res> get savedFilters;
  $MapBoundsCopyWith<$Res>? get bounds;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showMap = null,
    Object? query = freezed,
    Object? filter = null,
    Object? lotState = null,
    Object? savedFilters = null,
    Object? bounds = freezed,
  }) {
    return _then(_value.copyWith(
      showMap: null == showMap
          ? _value.showMap
          : showMap // ignore: cast_nullable_to_non_nullable
              as bool,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SearchFilter,
      lotState: null == lotState
          ? _value.lotState
          : lotState // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<LotBidderState>>,
      savedFilters: null == savedFilters
          ? _value.savedFilters
          : savedFilters // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<SearchFilter>>,
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as MapBounds?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchFilterCopyWith<$Res> get filter {
    return $SearchFilterCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<List<LotBidderState>, $Res> get lotState {
    return $LoadingStateCopyWith<List<LotBidderState>, $Res>(_value.lotState,
        (value) {
      return _then(_value.copyWith(lotState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<List<SearchFilter>, $Res> get savedFilters {
    return $LoadingStateCopyWith<List<SearchFilter>, $Res>(_value.savedFilters,
        (value) {
      return _then(_value.copyWith(savedFilters: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MapBoundsCopyWith<$Res>? get bounds {
    if (_value.bounds == null) {
      return null;
    }

    return $MapBoundsCopyWith<$Res>(_value.bounds!, (value) {
      return _then(_value.copyWith(bounds: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showMap,
      String? query,
      SearchFilter filter,
      LoadingState<List<LotBidderState>> lotState,
      LoadingState<List<SearchFilter>> savedFilters,
      MapBounds? bounds});

  @override
  $SearchFilterCopyWith<$Res> get filter;
  @override
  $LoadingStateCopyWith<List<LotBidderState>, $Res> get lotState;
  @override
  $LoadingStateCopyWith<List<SearchFilter>, $Res> get savedFilters;
  @override
  $MapBoundsCopyWith<$Res>? get bounds;
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showMap = null,
    Object? query = freezed,
    Object? filter = null,
    Object? lotState = null,
    Object? savedFilters = null,
    Object? bounds = freezed,
  }) {
    return _then(_$SearchStateImpl(
      showMap: null == showMap
          ? _value.showMap
          : showMap // ignore: cast_nullable_to_non_nullable
              as bool,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SearchFilter,
      lotState: null == lotState
          ? _value.lotState
          : lotState // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<LotBidderState>>,
      savedFilters: null == savedFilters
          ? _value.savedFilters
          : savedFilters // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<SearchFilter>>,
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as MapBounds?,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {this.showMap = false,
      this.query,
      this.filter = const SearchFilter(),
      this.lotState = const Uninitialized(),
      this.savedFilters = const Uninitialized(),
      this.bounds});

  @override
  @JsonKey()
  final bool showMap;
  @override
  final String? query;
  @override
  @JsonKey()
  final SearchFilter filter;
  @override
  @JsonKey()
  final LoadingState<List<LotBidderState>> lotState;
  @override
  @JsonKey()
  final LoadingState<List<SearchFilter>> savedFilters;
  @override
  final MapBounds? bounds;

  @override
  String toString() {
    return 'SearchState(showMap: $showMap, query: $query, filter: $filter, lotState: $lotState, savedFilters: $savedFilters, bounds: $bounds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.showMap, showMap) || other.showMap == showMap) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.lotState, lotState) ||
                other.lotState == lotState) &&
            (identical(other.savedFilters, savedFilters) ||
                other.savedFilters == savedFilters) &&
            (identical(other.bounds, bounds) || other.bounds == bounds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, showMap, query, filter, lotState, savedFilters, bounds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {final bool showMap,
      final String? query,
      final SearchFilter filter,
      final LoadingState<List<LotBidderState>> lotState,
      final LoadingState<List<SearchFilter>> savedFilters,
      final MapBounds? bounds}) = _$SearchStateImpl;

  @override
  bool get showMap;
  @override
  String? get query;
  @override
  SearchFilter get filter;
  @override
  LoadingState<List<LotBidderState>> get lotState;
  @override
  LoadingState<List<SearchFilter>> get savedFilters;
  @override
  MapBounds? get bounds;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
