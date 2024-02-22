// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locked_funds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LockedFundsSummaryDtoImpl _$$LockedFundsSummaryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LockedFundsSummaryDtoImpl(
      activeAuctions: (json['activeAuctions'] as List<dynamic>?)
              ?.map((e) => ActiveAuctionDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pendingWinnings: (json['pendingWinnings'] as List<dynamic>?)
              ?.map(
                  (e) => PendingWinningDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LockedFundsSummaryDtoImplToJson(
        _$LockedFundsSummaryDtoImpl instance) =>
    <String, dynamic>{
      'activeAuctions': instance.activeAuctions,
      'pendingWinnings': instance.pendingWinnings,
    };

_$ActiveAuctionDtoImpl _$$ActiveAuctionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ActiveAuctionDtoImpl(
      amount: json['amount'] as num,
      lot: LotSummaryDto.fromJson(json['lot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ActiveAuctionDtoImplToJson(
        _$ActiveAuctionDtoImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'lot': instance.lot,
    };

_$PendingWinningDtoImpl _$$PendingWinningDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PendingWinningDtoImpl(
      bidAmount: json['bidAmount'] as num,
      downAmount: json['downAmount'] as num,
      lot: LotSummaryDto.fromJson(json['lot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PendingWinningDtoImplToJson(
        _$PendingWinningDtoImpl instance) =>
    <String, dynamic>{
      'bidAmount': instance.bidAmount,
      'downAmount': instance.downAmount,
      'lot': instance.lot,
    };

_$LotSummaryDtoImpl _$$LotSummaryDtoImplFromJson(Map<String, dynamic> json) =>
    _$LotSummaryDtoImpl(
      id: json['id'] as int,
      streetLine1: json['streetLine1'] as String,
      streetLine2: json['streetLine2'] as String?,
      city: json['city'] as String,
      county: json['county'] as String?,
      stateCode: json['stateCode'] as String,
      zipCode: json['zipCode'] as String,
      countryCode: json['countryCode'] as String?,
    );

Map<String, dynamic> _$$LotSummaryDtoImplToJson(_$LotSummaryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'streetLine1': instance.streetLine1,
      'streetLine2': instance.streetLine2,
      'city': instance.city,
      'county': instance.county,
      'stateCode': instance.stateCode,
      'zipCode': instance.zipCode,
      'countryCode': instance.countryCode,
    };
