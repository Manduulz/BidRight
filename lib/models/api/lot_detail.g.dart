// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lot_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LotDetailDtoImpl _$$LotDetailDtoImplFromJson(Map<String, dynamic> json) =>
    _$LotDetailDtoImpl(
      id: json['id'] as int,
      isPinned: json['isPinned'] as bool,
      minBidIncrements: json['minBidIncrements'] as num?,
      startedTime: json['startedTime'] == null
          ? null
          : DateTime.parse(json['startedTime'] as String),
      stoppedTime: json['stoppedTime'] == null
          ? null
          : DateTime.parse(json['stoppedTime'] as String),
      stopTime: json['stopTime'] == null
          ? null
          : DateTime.parse(json['stopTime'] as String),
      lotStatus: json['lotStatus'] as String,
      auction: AuctionDetail.fromJson(json['auction'] as Map<String, dynamic>),
      winnerBidId: json['winnerBidId'] as int?,
      auctionBidder: json['auctionBidder'] == null
          ? null
          : AuctionBidder.fromJson(
              json['auctionBidder'] as Map<String, dynamic>),
      lotBidder: json['auctionBidderLot'] == null
          ? null
          : LotBidder.fromJson(
              json['auctionBidderLot'] as Map<String, dynamic>),
      bids: (json['bids'] as List<dynamic>?)
              ?.map((e) => Bid.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      requiredDown: json['requiredDown'] as num,
      openingPrice: json['openingPrice'] as num,
      property: PropertyDto.fromJson(json['property'] as Map<String, dynamic>),
      propertyCount: json['propertyCount'] as int,
    );

Map<String, dynamic> _$$LotDetailDtoImplToJson(_$LotDetailDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isPinned': instance.isPinned,
      'minBidIncrements': instance.minBidIncrements,
      'startedTime': instance.startedTime?.toIso8601String(),
      'stoppedTime': instance.stoppedTime?.toIso8601String(),
      'stopTime': instance.stopTime?.toIso8601String(),
      'lotStatus': instance.lotStatus,
      'auction': instance.auction,
      'winnerBidId': instance.winnerBidId,
      'auctionBidder': instance.auctionBidder,
      'auctionBidderLot': instance.lotBidder,
      'bids': instance.bids,
      'requiredDown': instance.requiredDown,
      'openingPrice': instance.openingPrice,
      'property': instance.property,
      'propertyCount': instance.propertyCount,
    };

_$PropertyDtoImpl _$$PropertyDtoImplFromJson(Map<String, dynamic> json) =>
    _$PropertyDtoImpl(
      id: json['id'] as int,
      streetLine1: json['streetLine1'] as String?,
      streetLine2: json['streetLine2'] as String?,
      city: json['city'] as String?,
      zipCode: json['zipCode'] as String?,
      stateCode: json['stateCode'] as String?,
      countryCode: json['countryCode'] as String?,
      county: json['county'] as String?,
      latitude: json['latitude'] as num?,
      longitude: json['longitude'] as num?,
      extendedData: (json['extendedData'] as List<dynamic>?)
              ?.map(
                  (e) => PropertyAttribute.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      imageData: (json['imageData'] as List<dynamic>?)
              ?.map((e) => PropertyImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PropertyDtoImplToJson(_$PropertyDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'streetLine1': instance.streetLine1,
      'streetLine2': instance.streetLine2,
      'city': instance.city,
      'zipCode': instance.zipCode,
      'stateCode': instance.stateCode,
      'countryCode': instance.countryCode,
      'county': instance.county,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'extendedData': instance.extendedData,
      'imageData': instance.imageData,
    };
