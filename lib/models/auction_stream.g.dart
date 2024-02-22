// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_stream.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuctionStreamInfoImpl _$$AuctionStreamInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$AuctionStreamInfoImpl(
      id: json['id'] as int,
      title: json['title'] as String?,
      url: json['url'] as String?,
      auctionId: json['auctionId'] as int,
      type: $enumDecodeNullable(_$StreamTypeEnumMap, json['type'],
              unknownValue: StreamType.other) ??
          StreamType.other,
    );

Map<String, dynamic> _$$AuctionStreamInfoImplToJson(
        _$AuctionStreamInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'auctionId': instance.auctionId,
      'type': _$StreamTypeEnumMap[instance.type]!,
    };

const _$StreamTypeEnumMap = {
  StreamType.youTube: 'YouTube',
  StreamType.other: 'Other',
};
