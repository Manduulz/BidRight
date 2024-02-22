// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RawAttributeType _$RawAttributeTypeFromJson(Map<String, dynamic> json) {
  return _RawAttributeType.fromJson(json);
}

/// @nodoc
mixin _$RawAttributeType {
  @JsonKey(name: 'attributeId')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributeName')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributeDisplayName')
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'optionData')
  List<AttributeDropdownOption> get options =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'attributeType')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: SearchType.standard)
  SearchType get searchType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RawAttributeTypeCopyWith<RawAttributeType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawAttributeTypeCopyWith<$Res> {
  factory $RawAttributeTypeCopyWith(
          RawAttributeType value, $Res Function(RawAttributeType) then) =
      _$RawAttributeTypeCopyWithImpl<$Res, RawAttributeType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'attributeId') int id,
      @JsonKey(name: 'attributeName') String name,
      @JsonKey(name: 'attributeDisplayName') String displayName,
      @JsonKey(name: 'optionData') List<AttributeDropdownOption> options,
      @JsonKey(name: 'attributeType') String type,
      @JsonKey(unknownEnumValue: SearchType.standard) SearchType searchType});
}

/// @nodoc
class _$RawAttributeTypeCopyWithImpl<$Res, $Val extends RawAttributeType>
    implements $RawAttributeTypeCopyWith<$Res> {
  _$RawAttributeTypeCopyWithImpl(this._value, this._then);

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
    Object? options = null,
    Object? type = null,
    Object? searchType = null,
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
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<AttributeDropdownOption>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      searchType: null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as SearchType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RawAttributeTypeImplCopyWith<$Res>
    implements $RawAttributeTypeCopyWith<$Res> {
  factory _$$RawAttributeTypeImplCopyWith(_$RawAttributeTypeImpl value,
          $Res Function(_$RawAttributeTypeImpl) then) =
      __$$RawAttributeTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attributeId') int id,
      @JsonKey(name: 'attributeName') String name,
      @JsonKey(name: 'attributeDisplayName') String displayName,
      @JsonKey(name: 'optionData') List<AttributeDropdownOption> options,
      @JsonKey(name: 'attributeType') String type,
      @JsonKey(unknownEnumValue: SearchType.standard) SearchType searchType});
}

/// @nodoc
class __$$RawAttributeTypeImplCopyWithImpl<$Res>
    extends _$RawAttributeTypeCopyWithImpl<$Res, _$RawAttributeTypeImpl>
    implements _$$RawAttributeTypeImplCopyWith<$Res> {
  __$$RawAttributeTypeImplCopyWithImpl(_$RawAttributeTypeImpl _value,
      $Res Function(_$RawAttributeTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? displayName = null,
    Object? options = null,
    Object? type = null,
    Object? searchType = null,
  }) {
    return _then(_$RawAttributeTypeImpl(
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
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<AttributeDropdownOption>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      searchType: null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as SearchType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RawAttributeTypeImpl extends _RawAttributeType {
  const _$RawAttributeTypeImpl(
      {@JsonKey(name: 'attributeId')
          required this.id,
      @JsonKey(name: 'attributeName')
          required this.name,
      @JsonKey(name: 'attributeDisplayName')
          required this.displayName,
      @JsonKey(name: 'optionData')
          final List<AttributeDropdownOption> options = const [],
      @JsonKey(name: 'attributeType')
          required this.type,
      @JsonKey(unknownEnumValue: SearchType.standard)
          required this.searchType})
      : _options = options,
        super._();

  factory _$RawAttributeTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawAttributeTypeImplFromJson(json);

  @override
  @JsonKey(name: 'attributeId')
  final int id;
  @override
  @JsonKey(name: 'attributeName')
  final String name;
  @override
  @JsonKey(name: 'attributeDisplayName')
  final String displayName;
  final List<AttributeDropdownOption> _options;
  @override
  @JsonKey(name: 'optionData')
  List<AttributeDropdownOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  @JsonKey(name: 'attributeType')
  final String type;
  @override
  @JsonKey(unknownEnumValue: SearchType.standard)
  final SearchType searchType;

  @override
  String toString() {
    return 'RawAttributeType(id: $id, name: $name, displayName: $displayName, options: $options, type: $type, searchType: $searchType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawAttributeTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.searchType, searchType) ||
                other.searchType == searchType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, displayName,
      const DeepCollectionEquality().hash(_options), type, searchType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RawAttributeTypeImplCopyWith<_$RawAttributeTypeImpl> get copyWith =>
      __$$RawAttributeTypeImplCopyWithImpl<_$RawAttributeTypeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RawAttributeTypeImplToJson(
      this,
    );
  }
}

abstract class _RawAttributeType extends RawAttributeType {
  const factory _RawAttributeType(
      {@JsonKey(name: 'attributeId')
          required final int id,
      @JsonKey(name: 'attributeName')
          required final String name,
      @JsonKey(name: 'attributeDisplayName')
          required final String displayName,
      @JsonKey(name: 'optionData')
          final List<AttributeDropdownOption> options,
      @JsonKey(name: 'attributeType')
          required final String type,
      @JsonKey(unknownEnumValue: SearchType.standard)
          required final SearchType searchType}) = _$RawAttributeTypeImpl;
  const _RawAttributeType._() : super._();

  factory _RawAttributeType.fromJson(Map<String, dynamic> json) =
      _$RawAttributeTypeImpl.fromJson;

  @override
  @JsonKey(name: 'attributeId')
  int get id;
  @override
  @JsonKey(name: 'attributeName')
  String get name;
  @override
  @JsonKey(name: 'attributeDisplayName')
  String get displayName;
  @override
  @JsonKey(name: 'optionData')
  List<AttributeDropdownOption> get options;
  @override
  @JsonKey(name: 'attributeType')
  String get type;
  @override
  @JsonKey(unknownEnumValue: SearchType.standard)
  SearchType get searchType;
  @override
  @JsonKey(ignore: true)
  _$$RawAttributeTypeImplCopyWith<_$RawAttributeTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
