// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchFilter {
  String? get name => throw _privateConstructorUsedError;
  List<AttributeFilter> get filters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchFilterCopyWith<SearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFilterCopyWith<$Res> {
  factory $SearchFilterCopyWith(
          SearchFilter value, $Res Function(SearchFilter) then) =
      _$SearchFilterCopyWithImpl<$Res, SearchFilter>;
  @useResult
  $Res call({String? name, List<AttributeFilter> filters});
}

/// @nodoc
class _$SearchFilterCopyWithImpl<$Res, $Val extends SearchFilter>
    implements $SearchFilterCopyWith<$Res> {
  _$SearchFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? filters = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<AttributeFilter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchFilterImplCopyWith<$Res>
    implements $SearchFilterCopyWith<$Res> {
  factory _$$SearchFilterImplCopyWith(
          _$SearchFilterImpl value, $Res Function(_$SearchFilterImpl) then) =
      __$$SearchFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, List<AttributeFilter> filters});
}

/// @nodoc
class __$$SearchFilterImplCopyWithImpl<$Res>
    extends _$SearchFilterCopyWithImpl<$Res, _$SearchFilterImpl>
    implements _$$SearchFilterImplCopyWith<$Res> {
  __$$SearchFilterImplCopyWithImpl(
      _$SearchFilterImpl _value, $Res Function(_$SearchFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? filters = null,
  }) {
    return _then(_$SearchFilterImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<AttributeFilter>,
    ));
  }
}

/// @nodoc

class _$SearchFilterImpl extends _SearchFilter {
  const _$SearchFilterImpl(
      {this.name, final List<AttributeFilter> filters = const []})
      : _filters = filters,
        super._();

  @override
  final String? name;
  final List<AttributeFilter> _filters;
  @override
  @JsonKey()
  List<AttributeFilter> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  @override
  String toString() {
    return 'SearchFilter(name: $name, filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFilterImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_filters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFilterImplCopyWith<_$SearchFilterImpl> get copyWith =>
      __$$SearchFilterImplCopyWithImpl<_$SearchFilterImpl>(this, _$identity);
}

abstract class _SearchFilter extends SearchFilter {
  const factory _SearchFilter(
      {final String? name,
      final List<AttributeFilter> filters}) = _$SearchFilterImpl;
  const _SearchFilter._() : super._();

  @override
  String? get name;
  @override
  List<AttributeFilter> get filters;
  @override
  @JsonKey(ignore: true)
  _$$SearchFilterImplCopyWith<_$SearchFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AttributeFilter {
  AttributeType get type => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;
  dynamic get value2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttributeFilterCopyWith<AttributeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeFilterCopyWith<$Res> {
  factory $AttributeFilterCopyWith(
          AttributeFilter value, $Res Function(AttributeFilter) then) =
      _$AttributeFilterCopyWithImpl<$Res, AttributeFilter>;
  @useResult
  $Res call({AttributeType type, dynamic value, dynamic value2});

  $AttributeTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$AttributeFilterCopyWithImpl<$Res, $Val extends AttributeFilter>
    implements $AttributeFilterCopyWith<$Res> {
  _$AttributeFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = freezed,
    Object? value2 = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AttributeType,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      value2: freezed == value2
          ? _value.value2
          : value2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributeTypeCopyWith<$Res> get type {
    return $AttributeTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttributeFilterImplCopyWith<$Res>
    implements $AttributeFilterCopyWith<$Res> {
  factory _$$AttributeFilterImplCopyWith(_$AttributeFilterImpl value,
          $Res Function(_$AttributeFilterImpl) then) =
      __$$AttributeFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AttributeType type, dynamic value, dynamic value2});

  @override
  $AttributeTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$AttributeFilterImplCopyWithImpl<$Res>
    extends _$AttributeFilterCopyWithImpl<$Res, _$AttributeFilterImpl>
    implements _$$AttributeFilterImplCopyWith<$Res> {
  __$$AttributeFilterImplCopyWithImpl(
      _$AttributeFilterImpl _value, $Res Function(_$AttributeFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = freezed,
    Object? value2 = freezed,
  }) {
    return _then(_$AttributeFilterImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AttributeType,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      value2: freezed == value2
          ? _value.value2
          : value2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$AttributeFilterImpl extends _AttributeFilter {
  const _$AttributeFilterImpl({required this.type, this.value, this.value2})
      : super._();

  @override
  final AttributeType type;
  @override
  final dynamic value;
  @override
  final dynamic value2;

  @override
  String toString() {
    return 'AttributeFilter(type: $type, value: $value, value2: $value2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeFilterImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.value2, value2));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(value2));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeFilterImplCopyWith<_$AttributeFilterImpl> get copyWith =>
      __$$AttributeFilterImplCopyWithImpl<_$AttributeFilterImpl>(
          this, _$identity);
}

abstract class _AttributeFilter extends AttributeFilter {
  const factory _AttributeFilter(
      {required final AttributeType type,
      final dynamic value,
      final dynamic value2}) = _$AttributeFilterImpl;
  const _AttributeFilter._() : super._();

  @override
  AttributeType get type;
  @override
  dynamic get value;
  @override
  dynamic get value2;
  @override
  @JsonKey(ignore: true)
  _$$AttributeFilterImplCopyWith<_$AttributeFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AttributeType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  AttributeTypeDetail get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttributeTypeCopyWith<AttributeType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeTypeCopyWith<$Res> {
  factory $AttributeTypeCopyWith(
          AttributeType value, $Res Function(AttributeType) then) =
      _$AttributeTypeCopyWithImpl<$Res, AttributeType>;
  @useResult
  $Res call(
      {int id, String name, String displayName, AttributeTypeDetail type});

  $AttributeTypeDetailCopyWith<$Res> get type;
}

/// @nodoc
class _$AttributeTypeCopyWithImpl<$Res, $Val extends AttributeType>
    implements $AttributeTypeCopyWith<$Res> {
  _$AttributeTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? displayName = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AttributeTypeDetail,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributeTypeDetailCopyWith<$Res> get type {
    return $AttributeTypeDetailCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttributeTypeImplCopyWith<$Res>
    implements $AttributeTypeCopyWith<$Res> {
  factory _$$AttributeTypeImplCopyWith(
          _$AttributeTypeImpl value, $Res Function(_$AttributeTypeImpl) then) =
      __$$AttributeTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, String displayName, AttributeTypeDetail type});

  @override
  $AttributeTypeDetailCopyWith<$Res> get type;
}

/// @nodoc
class __$$AttributeTypeImplCopyWithImpl<$Res>
    extends _$AttributeTypeCopyWithImpl<$Res, _$AttributeTypeImpl>
    implements _$$AttributeTypeImplCopyWith<$Res> {
  __$$AttributeTypeImplCopyWithImpl(
      _$AttributeTypeImpl _value, $Res Function(_$AttributeTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? displayName = null,
    Object? type = null,
  }) {
    return _then(_$AttributeTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AttributeTypeDetail,
    ));
  }
}

/// @nodoc

class _$AttributeTypeImpl extends _AttributeType {
  const _$AttributeTypeImpl(
      {required this.id,
      required this.name,
      required this.displayName,
      required this.type})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final String displayName;
  @override
  final AttributeTypeDetail type;

  @override
  String toString() {
    return 'AttributeType(id: $id, name: $name, displayName: $displayName, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, displayName, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeTypeImplCopyWith<_$AttributeTypeImpl> get copyWith =>
      __$$AttributeTypeImplCopyWithImpl<_$AttributeTypeImpl>(this, _$identity);
}

abstract class _AttributeType extends AttributeType {
  const factory _AttributeType(
      {required final int id,
      required final String name,
      required final String displayName,
      required final AttributeTypeDetail type}) = _$AttributeTypeImpl;
  const _AttributeType._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  String get displayName;
  @override
  AttributeTypeDetail get type;
  @override
  @JsonKey(ignore: true)
  _$$AttributeTypeImplCopyWith<_$AttributeTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AttributeTypeDetail {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() text,
    required TResult Function(SearchType searchType) date,
    required TResult Function(SearchType searchType) int,
    required TResult Function() bool,
    required TResult Function(SearchType searchType) decimal,
    required TResult Function(List<AttributeDropdownOption> options) dropdown,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? text,
    TResult? Function(SearchType searchType)? date,
    TResult? Function(SearchType searchType)? int,
    TResult? Function()? bool,
    TResult? Function(SearchType searchType)? decimal,
    TResult? Function(List<AttributeDropdownOption> options)? dropdown,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? text,
    TResult Function(SearchType searchType)? date,
    TResult Function(SearchType searchType)? int,
    TResult Function()? bool,
    TResult Function(SearchType searchType)? decimal,
    TResult Function(List<AttributeDropdownOption> options)? dropdown,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextAttribute value) text,
    required TResult Function(DateAttribute value) date,
    required TResult Function(IntAttribute value) int,
    required TResult Function(BoolAttribute value) bool,
    required TResult Function(DecimalAttribute value) decimal,
    required TResult Function(DropdownAttribute value) dropdown,
    required TResult Function(UnknownAttribute value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextAttribute value)? text,
    TResult? Function(DateAttribute value)? date,
    TResult? Function(IntAttribute value)? int,
    TResult? Function(BoolAttribute value)? bool,
    TResult? Function(DecimalAttribute value)? decimal,
    TResult? Function(DropdownAttribute value)? dropdown,
    TResult? Function(UnknownAttribute value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextAttribute value)? text,
    TResult Function(DateAttribute value)? date,
    TResult Function(IntAttribute value)? int,
    TResult Function(BoolAttribute value)? bool,
    TResult Function(DecimalAttribute value)? decimal,
    TResult Function(DropdownAttribute value)? dropdown,
    TResult Function(UnknownAttribute value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeTypeDetailCopyWith<$Res> {
  factory $AttributeTypeDetailCopyWith(
          AttributeTypeDetail value, $Res Function(AttributeTypeDetail) then) =
      _$AttributeTypeDetailCopyWithImpl<$Res, AttributeTypeDetail>;
}

/// @nodoc
class _$AttributeTypeDetailCopyWithImpl<$Res, $Val extends AttributeTypeDetail>
    implements $AttributeTypeDetailCopyWith<$Res> {
  _$AttributeTypeDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TextAttributeImplCopyWith<$Res> {
  factory _$$TextAttributeImplCopyWith(
          _$TextAttributeImpl value, $Res Function(_$TextAttributeImpl) then) =
      __$$TextAttributeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TextAttributeImplCopyWithImpl<$Res>
    extends _$AttributeTypeDetailCopyWithImpl<$Res, _$TextAttributeImpl>
    implements _$$TextAttributeImplCopyWith<$Res> {
  __$$TextAttributeImplCopyWithImpl(
      _$TextAttributeImpl _value, $Res Function(_$TextAttributeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TextAttributeImpl extends TextAttribute {
  const _$TextAttributeImpl() : super._();

  @override
  String toString() {
    return 'AttributeTypeDetail.text()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TextAttributeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() text,
    required TResult Function(SearchType searchType) date,
    required TResult Function(SearchType searchType) int,
    required TResult Function() bool,
    required TResult Function(SearchType searchType) decimal,
    required TResult Function(List<AttributeDropdownOption> options) dropdown,
    required TResult Function() unknown,
  }) {
    return text();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? text,
    TResult? Function(SearchType searchType)? date,
    TResult? Function(SearchType searchType)? int,
    TResult? Function()? bool,
    TResult? Function(SearchType searchType)? decimal,
    TResult? Function(List<AttributeDropdownOption> options)? dropdown,
    TResult? Function()? unknown,
  }) {
    return text?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? text,
    TResult Function(SearchType searchType)? date,
    TResult Function(SearchType searchType)? int,
    TResult Function()? bool,
    TResult Function(SearchType searchType)? decimal,
    TResult Function(List<AttributeDropdownOption> options)? dropdown,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextAttribute value) text,
    required TResult Function(DateAttribute value) date,
    required TResult Function(IntAttribute value) int,
    required TResult Function(BoolAttribute value) bool,
    required TResult Function(DecimalAttribute value) decimal,
    required TResult Function(DropdownAttribute value) dropdown,
    required TResult Function(UnknownAttribute value) unknown,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextAttribute value)? text,
    TResult? Function(DateAttribute value)? date,
    TResult? Function(IntAttribute value)? int,
    TResult? Function(BoolAttribute value)? bool,
    TResult? Function(DecimalAttribute value)? decimal,
    TResult? Function(DropdownAttribute value)? dropdown,
    TResult? Function(UnknownAttribute value)? unknown,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextAttribute value)? text,
    TResult Function(DateAttribute value)? date,
    TResult Function(IntAttribute value)? int,
    TResult Function(BoolAttribute value)? bool,
    TResult Function(DecimalAttribute value)? decimal,
    TResult Function(DropdownAttribute value)? dropdown,
    TResult Function(UnknownAttribute value)? unknown,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class TextAttribute extends AttributeTypeDetail {
  const factory TextAttribute() = _$TextAttributeImpl;
  const TextAttribute._() : super._();
}

/// @nodoc
abstract class _$$DateAttributeImplCopyWith<$Res> {
  factory _$$DateAttributeImplCopyWith(
          _$DateAttributeImpl value, $Res Function(_$DateAttributeImpl) then) =
      __$$DateAttributeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchType searchType});
}

/// @nodoc
class __$$DateAttributeImplCopyWithImpl<$Res>
    extends _$AttributeTypeDetailCopyWithImpl<$Res, _$DateAttributeImpl>
    implements _$$DateAttributeImplCopyWith<$Res> {
  __$$DateAttributeImplCopyWithImpl(
      _$DateAttributeImpl _value, $Res Function(_$DateAttributeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchType = null,
  }) {
    return _then(_$DateAttributeImpl(
      searchType: null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as SearchType,
    ));
  }
}

/// @nodoc

class _$DateAttributeImpl extends DateAttribute {
  const _$DateAttributeImpl({required this.searchType}) : super._();

  @override
  final SearchType searchType;

  @override
  String toString() {
    return 'AttributeTypeDetail.date(searchType: $searchType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateAttributeImpl &&
            (identical(other.searchType, searchType) ||
                other.searchType == searchType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateAttributeImplCopyWith<_$DateAttributeImpl> get copyWith =>
      __$$DateAttributeImplCopyWithImpl<_$DateAttributeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() text,
    required TResult Function(SearchType searchType) date,
    required TResult Function(SearchType searchType) int,
    required TResult Function() bool,
    required TResult Function(SearchType searchType) decimal,
    required TResult Function(List<AttributeDropdownOption> options) dropdown,
    required TResult Function() unknown,
  }) {
    return date(searchType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? text,
    TResult? Function(SearchType searchType)? date,
    TResult? Function(SearchType searchType)? int,
    TResult? Function()? bool,
    TResult? Function(SearchType searchType)? decimal,
    TResult? Function(List<AttributeDropdownOption> options)? dropdown,
    TResult? Function()? unknown,
  }) {
    return date?.call(searchType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? text,
    TResult Function(SearchType searchType)? date,
    TResult Function(SearchType searchType)? int,
    TResult Function()? bool,
    TResult Function(SearchType searchType)? decimal,
    TResult Function(List<AttributeDropdownOption> options)? dropdown,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(searchType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextAttribute value) text,
    required TResult Function(DateAttribute value) date,
    required TResult Function(IntAttribute value) int,
    required TResult Function(BoolAttribute value) bool,
    required TResult Function(DecimalAttribute value) decimal,
    required TResult Function(DropdownAttribute value) dropdown,
    required TResult Function(UnknownAttribute value) unknown,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextAttribute value)? text,
    TResult? Function(DateAttribute value)? date,
    TResult? Function(IntAttribute value)? int,
    TResult? Function(BoolAttribute value)? bool,
    TResult? Function(DecimalAttribute value)? decimal,
    TResult? Function(DropdownAttribute value)? dropdown,
    TResult? Function(UnknownAttribute value)? unknown,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextAttribute value)? text,
    TResult Function(DateAttribute value)? date,
    TResult Function(IntAttribute value)? int,
    TResult Function(BoolAttribute value)? bool,
    TResult Function(DecimalAttribute value)? decimal,
    TResult Function(DropdownAttribute value)? dropdown,
    TResult Function(UnknownAttribute value)? unknown,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }
}

abstract class DateAttribute extends AttributeTypeDetail {
  const factory DateAttribute({required final SearchType searchType}) =
      _$DateAttributeImpl;
  const DateAttribute._() : super._();

  SearchType get searchType;
  @JsonKey(ignore: true)
  _$$DateAttributeImplCopyWith<_$DateAttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IntAttributeImplCopyWith<$Res> {
  factory _$$IntAttributeImplCopyWith(
          _$IntAttributeImpl value, $Res Function(_$IntAttributeImpl) then) =
      __$$IntAttributeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchType searchType});
}

/// @nodoc
class __$$IntAttributeImplCopyWithImpl<$Res>
    extends _$AttributeTypeDetailCopyWithImpl<$Res, _$IntAttributeImpl>
    implements _$$IntAttributeImplCopyWith<$Res> {
  __$$IntAttributeImplCopyWithImpl(
      _$IntAttributeImpl _value, $Res Function(_$IntAttributeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchType = null,
  }) {
    return _then(_$IntAttributeImpl(
      searchType: null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as SearchType,
    ));
  }
}

/// @nodoc

class _$IntAttributeImpl extends IntAttribute {
  const _$IntAttributeImpl({required this.searchType}) : super._();

  @override
  final SearchType searchType;

  @override
  String toString() {
    return 'AttributeTypeDetail.int(searchType: $searchType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntAttributeImpl &&
            (identical(other.searchType, searchType) ||
                other.searchType == searchType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntAttributeImplCopyWith<_$IntAttributeImpl> get copyWith =>
      __$$IntAttributeImplCopyWithImpl<_$IntAttributeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() text,
    required TResult Function(SearchType searchType) date,
    required TResult Function(SearchType searchType) int,
    required TResult Function() bool,
    required TResult Function(SearchType searchType) decimal,
    required TResult Function(List<AttributeDropdownOption> options) dropdown,
    required TResult Function() unknown,
  }) {
    return int(searchType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? text,
    TResult? Function(SearchType searchType)? date,
    TResult? Function(SearchType searchType)? int,
    TResult? Function()? bool,
    TResult? Function(SearchType searchType)? decimal,
    TResult? Function(List<AttributeDropdownOption> options)? dropdown,
    TResult? Function()? unknown,
  }) {
    return int?.call(searchType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? text,
    TResult Function(SearchType searchType)? date,
    TResult Function(SearchType searchType)? int,
    TResult Function()? bool,
    TResult Function(SearchType searchType)? decimal,
    TResult Function(List<AttributeDropdownOption> options)? dropdown,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (int != null) {
      return int(searchType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextAttribute value) text,
    required TResult Function(DateAttribute value) date,
    required TResult Function(IntAttribute value) int,
    required TResult Function(BoolAttribute value) bool,
    required TResult Function(DecimalAttribute value) decimal,
    required TResult Function(DropdownAttribute value) dropdown,
    required TResult Function(UnknownAttribute value) unknown,
  }) {
    return int(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextAttribute value)? text,
    TResult? Function(DateAttribute value)? date,
    TResult? Function(IntAttribute value)? int,
    TResult? Function(BoolAttribute value)? bool,
    TResult? Function(DecimalAttribute value)? decimal,
    TResult? Function(DropdownAttribute value)? dropdown,
    TResult? Function(UnknownAttribute value)? unknown,
  }) {
    return int?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextAttribute value)? text,
    TResult Function(DateAttribute value)? date,
    TResult Function(IntAttribute value)? int,
    TResult Function(BoolAttribute value)? bool,
    TResult Function(DecimalAttribute value)? decimal,
    TResult Function(DropdownAttribute value)? dropdown,
    TResult Function(UnknownAttribute value)? unknown,
    required TResult orElse(),
  }) {
    if (int != null) {
      return int(this);
    }
    return orElse();
  }
}

abstract class IntAttribute extends AttributeTypeDetail {
  const factory IntAttribute({required final SearchType searchType}) =
      _$IntAttributeImpl;
  const IntAttribute._() : super._();

  SearchType get searchType;
  @JsonKey(ignore: true)
  _$$IntAttributeImplCopyWith<_$IntAttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BoolAttributeImplCopyWith<$Res> {
  factory _$$BoolAttributeImplCopyWith(
          _$BoolAttributeImpl value, $Res Function(_$BoolAttributeImpl) then) =
      __$$BoolAttributeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BoolAttributeImplCopyWithImpl<$Res>
    extends _$AttributeTypeDetailCopyWithImpl<$Res, _$BoolAttributeImpl>
    implements _$$BoolAttributeImplCopyWith<$Res> {
  __$$BoolAttributeImplCopyWithImpl(
      _$BoolAttributeImpl _value, $Res Function(_$BoolAttributeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BoolAttributeImpl extends BoolAttribute {
  const _$BoolAttributeImpl() : super._();

  @override
  String toString() {
    return 'AttributeTypeDetail.bool()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BoolAttributeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() text,
    required TResult Function(SearchType searchType) date,
    required TResult Function(SearchType searchType) int,
    required TResult Function() bool,
    required TResult Function(SearchType searchType) decimal,
    required TResult Function(List<AttributeDropdownOption> options) dropdown,
    required TResult Function() unknown,
  }) {
    return bool();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? text,
    TResult? Function(SearchType searchType)? date,
    TResult? Function(SearchType searchType)? int,
    TResult? Function()? bool,
    TResult? Function(SearchType searchType)? decimal,
    TResult? Function(List<AttributeDropdownOption> options)? dropdown,
    TResult? Function()? unknown,
  }) {
    return bool?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? text,
    TResult Function(SearchType searchType)? date,
    TResult Function(SearchType searchType)? int,
    TResult Function()? bool,
    TResult Function(SearchType searchType)? decimal,
    TResult Function(List<AttributeDropdownOption> options)? dropdown,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (bool != null) {
      return bool();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextAttribute value) text,
    required TResult Function(DateAttribute value) date,
    required TResult Function(IntAttribute value) int,
    required TResult Function(BoolAttribute value) bool,
    required TResult Function(DecimalAttribute value) decimal,
    required TResult Function(DropdownAttribute value) dropdown,
    required TResult Function(UnknownAttribute value) unknown,
  }) {
    return bool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextAttribute value)? text,
    TResult? Function(DateAttribute value)? date,
    TResult? Function(IntAttribute value)? int,
    TResult? Function(BoolAttribute value)? bool,
    TResult? Function(DecimalAttribute value)? decimal,
    TResult? Function(DropdownAttribute value)? dropdown,
    TResult? Function(UnknownAttribute value)? unknown,
  }) {
    return bool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextAttribute value)? text,
    TResult Function(DateAttribute value)? date,
    TResult Function(IntAttribute value)? int,
    TResult Function(BoolAttribute value)? bool,
    TResult Function(DecimalAttribute value)? decimal,
    TResult Function(DropdownAttribute value)? dropdown,
    TResult Function(UnknownAttribute value)? unknown,
    required TResult orElse(),
  }) {
    if (bool != null) {
      return bool(this);
    }
    return orElse();
  }
}

abstract class BoolAttribute extends AttributeTypeDetail {
  const factory BoolAttribute() = _$BoolAttributeImpl;
  const BoolAttribute._() : super._();
}

/// @nodoc
abstract class _$$DecimalAttributeImplCopyWith<$Res> {
  factory _$$DecimalAttributeImplCopyWith(_$DecimalAttributeImpl value,
          $Res Function(_$DecimalAttributeImpl) then) =
      __$$DecimalAttributeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchType searchType});
}

/// @nodoc
class __$$DecimalAttributeImplCopyWithImpl<$Res>
    extends _$AttributeTypeDetailCopyWithImpl<$Res, _$DecimalAttributeImpl>
    implements _$$DecimalAttributeImplCopyWith<$Res> {
  __$$DecimalAttributeImplCopyWithImpl(_$DecimalAttributeImpl _value,
      $Res Function(_$DecimalAttributeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchType = null,
  }) {
    return _then(_$DecimalAttributeImpl(
      searchType: null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as SearchType,
    ));
  }
}

/// @nodoc

class _$DecimalAttributeImpl extends DecimalAttribute {
  const _$DecimalAttributeImpl({required this.searchType}) : super._();

  @override
  final SearchType searchType;

  @override
  String toString() {
    return 'AttributeTypeDetail.decimal(searchType: $searchType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecimalAttributeImpl &&
            (identical(other.searchType, searchType) ||
                other.searchType == searchType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DecimalAttributeImplCopyWith<_$DecimalAttributeImpl> get copyWith =>
      __$$DecimalAttributeImplCopyWithImpl<_$DecimalAttributeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() text,
    required TResult Function(SearchType searchType) date,
    required TResult Function(SearchType searchType) int,
    required TResult Function() bool,
    required TResult Function(SearchType searchType) decimal,
    required TResult Function(List<AttributeDropdownOption> options) dropdown,
    required TResult Function() unknown,
  }) {
    return decimal(searchType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? text,
    TResult? Function(SearchType searchType)? date,
    TResult? Function(SearchType searchType)? int,
    TResult? Function()? bool,
    TResult? Function(SearchType searchType)? decimal,
    TResult? Function(List<AttributeDropdownOption> options)? dropdown,
    TResult? Function()? unknown,
  }) {
    return decimal?.call(searchType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? text,
    TResult Function(SearchType searchType)? date,
    TResult Function(SearchType searchType)? int,
    TResult Function()? bool,
    TResult Function(SearchType searchType)? decimal,
    TResult Function(List<AttributeDropdownOption> options)? dropdown,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (decimal != null) {
      return decimal(searchType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextAttribute value) text,
    required TResult Function(DateAttribute value) date,
    required TResult Function(IntAttribute value) int,
    required TResult Function(BoolAttribute value) bool,
    required TResult Function(DecimalAttribute value) decimal,
    required TResult Function(DropdownAttribute value) dropdown,
    required TResult Function(UnknownAttribute value) unknown,
  }) {
    return decimal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextAttribute value)? text,
    TResult? Function(DateAttribute value)? date,
    TResult? Function(IntAttribute value)? int,
    TResult? Function(BoolAttribute value)? bool,
    TResult? Function(DecimalAttribute value)? decimal,
    TResult? Function(DropdownAttribute value)? dropdown,
    TResult? Function(UnknownAttribute value)? unknown,
  }) {
    return decimal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextAttribute value)? text,
    TResult Function(DateAttribute value)? date,
    TResult Function(IntAttribute value)? int,
    TResult Function(BoolAttribute value)? bool,
    TResult Function(DecimalAttribute value)? decimal,
    TResult Function(DropdownAttribute value)? dropdown,
    TResult Function(UnknownAttribute value)? unknown,
    required TResult orElse(),
  }) {
    if (decimal != null) {
      return decimal(this);
    }
    return orElse();
  }
}

abstract class DecimalAttribute extends AttributeTypeDetail {
  const factory DecimalAttribute({required final SearchType searchType}) =
      _$DecimalAttributeImpl;
  const DecimalAttribute._() : super._();

  SearchType get searchType;
  @JsonKey(ignore: true)
  _$$DecimalAttributeImplCopyWith<_$DecimalAttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DropdownAttributeImplCopyWith<$Res> {
  factory _$$DropdownAttributeImplCopyWith(_$DropdownAttributeImpl value,
          $Res Function(_$DropdownAttributeImpl) then) =
      __$$DropdownAttributeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AttributeDropdownOption> options});
}

/// @nodoc
class __$$DropdownAttributeImplCopyWithImpl<$Res>
    extends _$AttributeTypeDetailCopyWithImpl<$Res, _$DropdownAttributeImpl>
    implements _$$DropdownAttributeImplCopyWith<$Res> {
  __$$DropdownAttributeImplCopyWithImpl(_$DropdownAttributeImpl _value,
      $Res Function(_$DropdownAttributeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
  }) {
    return _then(_$DropdownAttributeImpl(
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<AttributeDropdownOption>,
    ));
  }
}

/// @nodoc

class _$DropdownAttributeImpl extends DropdownAttribute {
  const _$DropdownAttributeImpl(
      {required final List<AttributeDropdownOption> options})
      : _options = options,
        super._();

  final List<AttributeDropdownOption> _options;
  @override
  List<AttributeDropdownOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'AttributeTypeDetail.dropdown(options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropdownAttributeImpl &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DropdownAttributeImplCopyWith<_$DropdownAttributeImpl> get copyWith =>
      __$$DropdownAttributeImplCopyWithImpl<_$DropdownAttributeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() text,
    required TResult Function(SearchType searchType) date,
    required TResult Function(SearchType searchType) int,
    required TResult Function() bool,
    required TResult Function(SearchType searchType) decimal,
    required TResult Function(List<AttributeDropdownOption> options) dropdown,
    required TResult Function() unknown,
  }) {
    return dropdown(options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? text,
    TResult? Function(SearchType searchType)? date,
    TResult? Function(SearchType searchType)? int,
    TResult? Function()? bool,
    TResult? Function(SearchType searchType)? decimal,
    TResult? Function(List<AttributeDropdownOption> options)? dropdown,
    TResult? Function()? unknown,
  }) {
    return dropdown?.call(options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? text,
    TResult Function(SearchType searchType)? date,
    TResult Function(SearchType searchType)? int,
    TResult Function()? bool,
    TResult Function(SearchType searchType)? decimal,
    TResult Function(List<AttributeDropdownOption> options)? dropdown,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (dropdown != null) {
      return dropdown(options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextAttribute value) text,
    required TResult Function(DateAttribute value) date,
    required TResult Function(IntAttribute value) int,
    required TResult Function(BoolAttribute value) bool,
    required TResult Function(DecimalAttribute value) decimal,
    required TResult Function(DropdownAttribute value) dropdown,
    required TResult Function(UnknownAttribute value) unknown,
  }) {
    return dropdown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextAttribute value)? text,
    TResult? Function(DateAttribute value)? date,
    TResult? Function(IntAttribute value)? int,
    TResult? Function(BoolAttribute value)? bool,
    TResult? Function(DecimalAttribute value)? decimal,
    TResult? Function(DropdownAttribute value)? dropdown,
    TResult? Function(UnknownAttribute value)? unknown,
  }) {
    return dropdown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextAttribute value)? text,
    TResult Function(DateAttribute value)? date,
    TResult Function(IntAttribute value)? int,
    TResult Function(BoolAttribute value)? bool,
    TResult Function(DecimalAttribute value)? decimal,
    TResult Function(DropdownAttribute value)? dropdown,
    TResult Function(UnknownAttribute value)? unknown,
    required TResult orElse(),
  }) {
    if (dropdown != null) {
      return dropdown(this);
    }
    return orElse();
  }
}

abstract class DropdownAttribute extends AttributeTypeDetail {
  const factory DropdownAttribute(
          {required final List<AttributeDropdownOption> options}) =
      _$DropdownAttributeImpl;
  const DropdownAttribute._() : super._();

  List<AttributeDropdownOption> get options;
  @JsonKey(ignore: true)
  _$$DropdownAttributeImplCopyWith<_$DropdownAttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownAttributeImplCopyWith<$Res> {
  factory _$$UnknownAttributeImplCopyWith(_$UnknownAttributeImpl value,
          $Res Function(_$UnknownAttributeImpl) then) =
      __$$UnknownAttributeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownAttributeImplCopyWithImpl<$Res>
    extends _$AttributeTypeDetailCopyWithImpl<$Res, _$UnknownAttributeImpl>
    implements _$$UnknownAttributeImplCopyWith<$Res> {
  __$$UnknownAttributeImplCopyWithImpl(_$UnknownAttributeImpl _value,
      $Res Function(_$UnknownAttributeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownAttributeImpl extends UnknownAttribute {
  const _$UnknownAttributeImpl() : super._();

  @override
  String toString() {
    return 'AttributeTypeDetail.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownAttributeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() text,
    required TResult Function(SearchType searchType) date,
    required TResult Function(SearchType searchType) int,
    required TResult Function() bool,
    required TResult Function(SearchType searchType) decimal,
    required TResult Function(List<AttributeDropdownOption> options) dropdown,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? text,
    TResult? Function(SearchType searchType)? date,
    TResult? Function(SearchType searchType)? int,
    TResult? Function()? bool,
    TResult? Function(SearchType searchType)? decimal,
    TResult? Function(List<AttributeDropdownOption> options)? dropdown,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? text,
    TResult Function(SearchType searchType)? date,
    TResult Function(SearchType searchType)? int,
    TResult Function()? bool,
    TResult Function(SearchType searchType)? decimal,
    TResult Function(List<AttributeDropdownOption> options)? dropdown,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextAttribute value) text,
    required TResult Function(DateAttribute value) date,
    required TResult Function(IntAttribute value) int,
    required TResult Function(BoolAttribute value) bool,
    required TResult Function(DecimalAttribute value) decimal,
    required TResult Function(DropdownAttribute value) dropdown,
    required TResult Function(UnknownAttribute value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextAttribute value)? text,
    TResult? Function(DateAttribute value)? date,
    TResult? Function(IntAttribute value)? int,
    TResult? Function(BoolAttribute value)? bool,
    TResult? Function(DecimalAttribute value)? decimal,
    TResult? Function(DropdownAttribute value)? dropdown,
    TResult? Function(UnknownAttribute value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextAttribute value)? text,
    TResult Function(DateAttribute value)? date,
    TResult Function(IntAttribute value)? int,
    TResult Function(BoolAttribute value)? bool,
    TResult Function(DecimalAttribute value)? decimal,
    TResult Function(DropdownAttribute value)? dropdown,
    TResult Function(UnknownAttribute value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownAttribute extends AttributeTypeDetail {
  const factory UnknownAttribute() = _$UnknownAttributeImpl;
  const UnknownAttribute._() : super._();
}

AttributeDropdownOption _$AttributeDropdownOptionFromJson(
    Map<String, dynamic> json) {
  return _AttributeDropdownOption.fromJson(json);
}

/// @nodoc
mixin _$AttributeDropdownOption {
  int get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributeDropdownOptionCopyWith<AttributeDropdownOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeDropdownOptionCopyWith<$Res> {
  factory $AttributeDropdownOptionCopyWith(AttributeDropdownOption value,
          $Res Function(AttributeDropdownOption) then) =
      _$AttributeDropdownOptionCopyWithImpl<$Res, AttributeDropdownOption>;
  @useResult
  $Res call({int id, String value});
}

/// @nodoc
class _$AttributeDropdownOptionCopyWithImpl<$Res,
        $Val extends AttributeDropdownOption>
    implements $AttributeDropdownOptionCopyWith<$Res> {
  _$AttributeDropdownOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttributeDropdownOptionImplCopyWith<$Res>
    implements $AttributeDropdownOptionCopyWith<$Res> {
  factory _$$AttributeDropdownOptionImplCopyWith(
          _$AttributeDropdownOptionImpl value,
          $Res Function(_$AttributeDropdownOptionImpl) then) =
      __$$AttributeDropdownOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String value});
}

/// @nodoc
class __$$AttributeDropdownOptionImplCopyWithImpl<$Res>
    extends _$AttributeDropdownOptionCopyWithImpl<$Res,
        _$AttributeDropdownOptionImpl>
    implements _$$AttributeDropdownOptionImplCopyWith<$Res> {
  __$$AttributeDropdownOptionImplCopyWithImpl(
      _$AttributeDropdownOptionImpl _value,
      $Res Function(_$AttributeDropdownOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$AttributeDropdownOptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributeDropdownOptionImpl extends _AttributeDropdownOption {
  const _$AttributeDropdownOptionImpl({required this.id, required this.value})
      : super._();

  factory _$AttributeDropdownOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeDropdownOptionImplFromJson(json);

  @override
  final int id;
  @override
  final String value;

  @override
  String toString() {
    return 'AttributeDropdownOption(id: $id, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeDropdownOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeDropdownOptionImplCopyWith<_$AttributeDropdownOptionImpl>
      get copyWith => __$$AttributeDropdownOptionImplCopyWithImpl<
          _$AttributeDropdownOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeDropdownOptionImplToJson(
      this,
    );
  }
}

abstract class _AttributeDropdownOption extends AttributeDropdownOption {
  const factory _AttributeDropdownOption(
      {required final int id,
      required final String value}) = _$AttributeDropdownOptionImpl;
  const _AttributeDropdownOption._() : super._();

  factory _AttributeDropdownOption.fromJson(Map<String, dynamic> json) =
      _$AttributeDropdownOptionImpl.fromJson;

  @override
  int get id;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$AttributeDropdownOptionImplCopyWith<_$AttributeDropdownOptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
