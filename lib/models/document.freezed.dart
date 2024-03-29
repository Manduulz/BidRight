// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentSummary _$DocumentSummaryFromJson(Map<String, dynamic> json) {
  return _DocumentSummary.fromJson(json);
}

/// @nodoc
mixin _$DocumentSummary {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentSummaryCopyWith<DocumentSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentSummaryCopyWith<$Res> {
  factory $DocumentSummaryCopyWith(
          DocumentSummary value, $Res Function(DocumentSummary) then) =
      _$DocumentSummaryCopyWithImpl<$Res, DocumentSummary>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$DocumentSummaryCopyWithImpl<$Res, $Val extends DocumentSummary>
    implements $DocumentSummaryCopyWith<$Res> {
  _$DocumentSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentSummaryImplCopyWith<$Res>
    implements $DocumentSummaryCopyWith<$Res> {
  factory _$$DocumentSummaryImplCopyWith(_$DocumentSummaryImpl value,
          $Res Function(_$DocumentSummaryImpl) then) =
      __$$DocumentSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$DocumentSummaryImplCopyWithImpl<$Res>
    extends _$DocumentSummaryCopyWithImpl<$Res, _$DocumentSummaryImpl>
    implements _$$DocumentSummaryImplCopyWith<$Res> {
  __$$DocumentSummaryImplCopyWithImpl(
      _$DocumentSummaryImpl _value, $Res Function(_$DocumentSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$DocumentSummaryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentSummaryImpl extends _DocumentSummary {
  const _$DocumentSummaryImpl({required this.name, required this.url})
      : super._();

  factory _$DocumentSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentSummaryImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'DocumentSummary(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentSummaryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentSummaryImplCopyWith<_$DocumentSummaryImpl> get copyWith =>
      __$$DocumentSummaryImplCopyWithImpl<_$DocumentSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentSummaryImplToJson(
      this,
    );
  }
}

abstract class _DocumentSummary extends DocumentSummary {
  const factory _DocumentSummary(
      {required final String name,
      required final String url}) = _$DocumentSummaryImpl;
  const _DocumentSummary._() : super._();

  factory _DocumentSummary.fromJson(Map<String, dynamic> json) =
      _$DocumentSummaryImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$DocumentSummaryImplCopyWith<_$DocumentSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
