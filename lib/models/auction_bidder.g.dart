// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_bidder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuctionBidderImpl _$$AuctionBidderImplFromJson(Map<String, dynamic> json) =>
    _$AuctionBidderImpl(
      paddleNumber: json['paddleNumber'] as String,
      purchaseProfileId: json['purchaseProfileId'] as int?,
      type: $enumDecodeNullable(_$ParticipationTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$AuctionBidderImplToJson(_$AuctionBidderImpl instance) =>
    <String, dynamic>{
      'paddleNumber': instance.paddleNumber,
      'purchaseProfileId': instance.purchaseProfileId,
      'type': _$ParticipationTypeEnumMap[instance.type],
    };

const _$ParticipationTypeEnumMap = {
  ParticipationType.remote: 'Online',
  ParticipationType.inPerson: 'InPerson',
};

_$LotBidderImpl _$$LotBidderImplFromJson(Map<String, dynamic> json) =>
    _$LotBidderImpl(
      amount: json['amount'] as num?,
      balanceType: json['balanceType'] as String?,
      leftDate: json['leftDate'] == null
          ? null
          : DateTime.parse(json['leftDate'] as String),
      enteredDate: json['enteredDate'] == null
          ? null
          : DateTime.parse(json['enteredDate'] as String),
    );

Map<String, dynamic> _$$LotBidderImplToJson(_$LotBidderImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'balanceType': instance.balanceType,
      'leftDate': instance.leftDate?.toIso8601String(),
      'enteredDate': instance.enteredDate?.toIso8601String(),
    };

_$BidImpl _$$BidImplFromJson(Map<String, dynamic> json) => _$BidImpl(
      id: json['id'] as int,
      paddleNumber: json['paddleNumber'] as String,
      amount: json['amount'] as num,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$$BidImplToJson(_$BidImpl instance) => <String, dynamic>{
      'id': instance.id,
      'paddleNumber': instance.paddleNumber,
      'amount': instance.amount,
      'createdDate': instance.createdDate?.toIso8601String(),
    };
