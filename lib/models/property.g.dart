// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyImage _$PropertyImageFromJson(Map<String, dynamic> json) =>
    PropertyImage(
      json['description'] as String,
      json['id'] as int,
      json['url'] as String,
    );

Map<String, dynamic> _$PropertyImageToJson(PropertyImage instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'url': instance.url,
    };

_$LotSummaryImpl _$$LotSummaryImplFromJson(Map<String, dynamic> json) =>
    _$LotSummaryImpl(
      id: json['id'] as int,
      streetLine1: json['streetLine1'] as String,
      streetLine2: json['streetLine2'] as String?,
      city: json['city'] as String,
      county: json['county'] as String?,
      stateCode: json['stateCode'] as String,
      zipCode: json['zipCode'] as String,
      countryCode: json['countryCode'] as String?,
      lotStatus: json['lotStatus'] as String?,
      auctionStartTime: json['auctionStartTime'] == null
          ? null
          : DateTime.parse(json['auctionStartTime'] as String),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => PropertyImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      propertyCount: json['propertyCount'] as int,
    );

Map<String, dynamic> _$$LotSummaryImplToJson(_$LotSummaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'streetLine1': instance.streetLine1,
      'streetLine2': instance.streetLine2,
      'city': instance.city,
      'county': instance.county,
      'stateCode': instance.stateCode,
      'zipCode': instance.zipCode,
      'countryCode': instance.countryCode,
      'lotStatus': instance.lotStatus,
      'auctionStartTime': instance.auctionStartTime?.toIso8601String(),
      'images': instance.images,
      'propertyCount': instance.propertyCount,
    };
