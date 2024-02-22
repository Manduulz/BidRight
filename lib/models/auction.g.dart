// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuctionDetailImpl _$$AuctionDetailImplFromJson(Map<String, dynamic> json) =>
    _$AuctionDetailImpl(
      id: json['id'] as int,
      startTime: DateTime.parse(json['startTime'] as String),
      stopTime: DateTime.parse(json['stopTime'] as String),
      isOpen: json['isOpen'] as bool,
      type: $enumDecodeNullable(_$AuctionTypeEnumMap, json['type'],
              unknownValue: AuctionType.other) ??
          AuctionType.other,
      startType: $enumDecodeNullable(
              _$AuctionStartTypeEnumMap, json['startType'],
              unknownValue: AuctionStartType.other) ??
          AuctionStartType.other,
      extensionWindow: json['timeLeft'] as num? ?? 0,
      extensionDuration: json['extraTime'] as num? ?? 0,
      location: json['location'] as String?,
      hostName: json['hostName'] as String?,
      hostLogoUrl: json['hostLogoUrl'] as String?,
    );

Map<String, dynamic> _$$AuctionDetailImplToJson(_$AuctionDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': instance.startTime.toIso8601String(),
      'stopTime': instance.stopTime.toIso8601String(),
      'isOpen': instance.isOpen,
      'type': _$AuctionTypeEnumMap[instance.type]!,
      'startType': _$AuctionStartTypeEnumMap[instance.startType]!,
      'timeLeft': instance.extensionWindow,
      'extraTime': instance.extensionDuration,
      'location': instance.location,
      'hostName': instance.hostName,
      'hostLogoUrl': instance.hostLogoUrl,
    };

const _$AuctionTypeEnumMap = {
  AuctionType.online: 'Online',
  AuctionType.inPerson: 'InPerson',
  AuctionType.hybrid: 'Hybrid',
  AuctionType.other: 'Other',
};

const _$AuctionStartTypeEnumMap = {
  AuctionStartType.manual: 'Manual',
  AuctionStartType.auto: 'Auto',
  AuctionStartType.other: 'Other',
};
