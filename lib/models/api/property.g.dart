// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyBidderResponse _$PropertyBidderResponseFromJson(
        Map<String, dynamic> json) =>
    PropertyBidderResponse(
      id: json['id'] as int,
      auctionId: json['auctionId'] as int,
      isPinned: json['isPinned'] as bool? ?? false,
      startDate: DateTime.parse(json['auctionStartTime'] as String),
      firmName: json['auctionHostName'] as String?,
      firmLogoUrl: json['auctionHostLogoUrl'] as String?,
      streetLine1: json['streetLine1'] as String?,
      streetLine2: json['streetLine2'] as String?,
      city: json['city'] as String?,
      county: json['county'] as String?,
      stateCode: json['stateCode'] as String?,
      zipCode: json['zipCode'] as String?,
      countryCode: json['countryCode'] as String?,
      latitude: json['latitude'] as num?,
      longitude: json['longitude'] as num?,
      openingPrice: json['openingPrice'] as num,
      images: (json['images'] as List<dynamic>)
          .map((e) => PropertyImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      attributes: (json['attributes'] as List<dynamic>)
          .map((e) => PropertyAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      propertyCount: json['propertyCount'] as int,
    );

Map<String, dynamic> _$PropertyBidderResponseToJson(
        PropertyBidderResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'auctionId': instance.auctionId,
      'isPinned': instance.isPinned,
      'auctionStartTime': instance.startDate.toIso8601String(),
      'auctionHostName': instance.firmName,
      'auctionHostLogoUrl': instance.firmLogoUrl,
      'streetLine1': instance.streetLine1,
      'streetLine2': instance.streetLine2,
      'city': instance.city,
      'county': instance.county,
      'stateCode': instance.stateCode,
      'zipCode': instance.zipCode,
      'countryCode': instance.countryCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'openingPrice': instance.openingPrice,
      'images': instance.images,
      'attributes': instance.attributes,
      'propertyCount': instance.propertyCount,
    };

PropertyAttribute _$PropertyAttributeFromJson(Map<String, dynamic> json) =>
    PropertyAttribute(
      json['attributeId'] as int,
      json['attributeName'] as String,
      json['attributeDisplayName'] as String,
      json['value'] as String?,
      (json['optionData'] as List<dynamic>?)
              ?.map((e) =>
                  AttributeDropdownOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      json['attributeType'] as String,
    );

Map<String, dynamic> _$PropertyAttributeToJson(PropertyAttribute instance) =>
    <String, dynamic>{
      'attributeId': instance.attributeId,
      'attributeName': instance.attributeName,
      'attributeDisplayName': instance.attributeDisplayName,
      'value': instance.value,
      'optionData': instance.optionData,
      'attributeType': instance.attributeType,
    };
