// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_stream.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuctionStreamInfo _$AuctionStreamInfoFromJson(Map<String, dynamic> json) {
  return _AuctionStreamInfo.fromJson(json);
}

/// @nodoc
mixin _$AuctionStreamInfo {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int get auctionId => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: StreamType.other)
  StreamType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuctionStreamInfoCopyWith<AuctionStreamInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionStreamInfoCopyWith<$Res> {
  factory $AuctionStreamInfoCopyWith(
          AuctionStreamInfo value, $Res Function(AuctionStreamInfo) then) =
      _$AuctionStreamInfoCopyWithImpl<$Res, AuctionStreamInfo>;
  @useResult
  $Res call(
      {int id,
      String? title,
      String? url,
      int auctionId,
      @JsonKey(unknownEnumValue: StreamType.other) StreamType type});
}

/// @nodoc
class _$AuctionStreamInfoCopyWithImpl<$Res, $Val extends AuctionStreamInfo>
    implements $AuctionStreamInfoCopyWith<$Res> {
  _$AuctionStreamInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? url = freezed,
    Object? auctionId = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StreamType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuctionStreamInfoImplCopyWith<$Res>
    implements $AuctionStreamInfoCopyWith<$Res> {
  factory _$$AuctionStreamInfoImplCopyWith(_$AuctionStreamInfoImpl value,
          $Res Function(_$AuctionStreamInfoImpl) then) =
      __$$AuctionStreamInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      String? url,
      int auctionId,
      @JsonKey(unknownEnumValue: StreamType.other) StreamType type});
}

/// @nodoc
class __$$AuctionStreamInfoImplCopyWithImpl<$Res>
    extends _$AuctionStreamInfoCopyWithImpl<$Res, _$AuctionStreamInfoImpl>
    implements _$$AuctionStreamInfoImplCopyWith<$Res> {
  __$$AuctionStreamInfoImplCopyWithImpl(_$AuctionStreamInfoImpl _value,
      $Res Function(_$AuctionStreamInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? url = freezed,
    Object? auctionId = null,
    Object? type = null,
  }) {
    return _then(_$AuctionStreamInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StreamType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionStreamInfoImpl extends _AuctionStreamInfo {
  const _$AuctionStreamInfoImpl(
      {required this.id,
      this.title,
      this.url,
      required this.auctionId,
      @JsonKey(unknownEnumValue: StreamType.other)
          this.type = StreamType.other})
      : super._();

  factory _$AuctionStreamInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionStreamInfoImplFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? url;
  @override
  final int auctionId;
  @override
  @JsonKey(unknownEnumValue: StreamType.other)
  final StreamType type;

  @override
  String toString() {
    return 'AuctionStreamInfo(id: $id, title: $title, url: $url, auctionId: $auctionId, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionStreamInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, url, auctionId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionStreamInfoImplCopyWith<_$AuctionStreamInfoImpl> get copyWith =>
      __$$AuctionStreamInfoImplCopyWithImpl<_$AuctionStreamInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionStreamInfoImplToJson(
      this,
    );
  }
}

abstract class _AuctionStreamInfo extends AuctionStreamInfo {
  const factory _AuctionStreamInfo(
          {required final int id,
          final String? title,
          final String? url,
          required final int auctionId,
          @JsonKey(unknownEnumValue: StreamType.other) final StreamType type}) =
      _$AuctionStreamInfoImpl;
  const _AuctionStreamInfo._() : super._();

  factory _AuctionStreamInfo.fromJson(Map<String, dynamic> json) =
      _$AuctionStreamInfoImpl.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get url;
  @override
  int get auctionId;
  @override
  @JsonKey(unknownEnumValue: StreamType.other)
  StreamType get type;
  @override
  @JsonKey(ignore: true)
  _$$AuctionStreamInfoImplCopyWith<_$AuctionStreamInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
