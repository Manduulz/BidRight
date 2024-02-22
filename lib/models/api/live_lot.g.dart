// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_lot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LiveLotDtoImpl _$$LiveLotDtoImplFromJson(Map<String, dynamic> json) =>
    _$LiveLotDtoImpl(
      id: json['id'] as int,
      caseId: json['caseId'] as int,
      auctionId: json['auctionId'] as int,
      auctionHostName: json['auctionHostName'] as String?,
      auctionHostLogoUrl: json['auctionHostLogoUrl'] as String?,
      openingPrice: json['openingPrice'] as num,
      currentPrice: json['currentPrice'] as num?,
      stopTime: json['stopTime'] == null
          ? null
          : DateTime.parse(json['stopTime'] as String),
      streetLine1: json['streetLine1'] as String,
      streetLine2: json['streetLine2'] as String?,
      city: json['city'] as String,
      county: json['county'] as String?,
      stateCode: json['stateCode'] as String,
      zipCode: json['zipCode'] as String,
      attributes: (json['attributes'] as List<dynamic>?)
              ?.map(
                  (e) => PropertyAttribute.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      propertyCount: json['propertyCount'] as int,
    );

Map<String, dynamic> _$$LiveLotDtoImplToJson(_$LiveLotDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'caseId': instance.caseId,
      'auctionId': instance.auctionId,
      'auctionHostName': instance.auctionHostName,
      'auctionHostLogoUrl': instance.auctionHostLogoUrl,
      'openingPrice': instance.openingPrice,
      'currentPrice': instance.currentPrice,
      'stopTime': instance.stopTime?.toIso8601String(),
      'streetLine1': instance.streetLine1,
      'streetLine2': instance.streetLine2,
      'city': instance.city,
      'county': instance.county,
      'stateCode': instance.stateCode,
      'zipCode': instance.zipCode,
      'attributes': instance.attributes,
      'propertyCount': instance.propertyCount,
    };
