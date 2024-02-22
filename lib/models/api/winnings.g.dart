// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'winnings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PastWinningDtoImpl _$$PastWinningDtoImplFromJson(Map<String, dynamic> json) =>
    _$PastWinningDtoImpl(
      lotId: json['id'] as int,
      streetLine1: json['streetLine1'] as String,
      streetLine2: json['streetLine2'] as String?,
      city: json['city'] as String,
      county: json['county'] as String?,
      stateCode: json['stateCode'] as String,
      zipCode: json['zipCode'] as String,
      winnerBidAmount: json['winnerBidAmount'] as num,
      winnerCreatedDate: DateTime.parse(json['winnerCreatedDate'] as String),
      auctionHostName: json['auctionHostName'] as String?,
      status: $enumDecodeNullable(_$CaseStatusEnumMap, json['status'],
              unknownValue: CaseStatus.unknown) ??
          CaseStatus.unknown,
      depositReceivedDate: json['depositReceivedDate'] == null
          ? null
          : DateTime.parse(json['depositReceivedDate'] as String),
      paymentReceivedDate: json['paymentReceivedDate'] == null
          ? null
          : DateTime.parse(json['paymentReceivedDate'] as String),
    );

Map<String, dynamic> _$$PastWinningDtoImplToJson(
        _$PastWinningDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.lotId,
      'streetLine1': instance.streetLine1,
      'streetLine2': instance.streetLine2,
      'city': instance.city,
      'county': instance.county,
      'stateCode': instance.stateCode,
      'zipCode': instance.zipCode,
      'winnerBidAmount': instance.winnerBidAmount,
      'winnerCreatedDate': instance.winnerCreatedDate.toIso8601String(),
      'auctionHostName': instance.auctionHostName,
      'status': _$CaseStatusEnumMap[instance.status]!,
      'depositReceivedDate': instance.depositReceivedDate?.toIso8601String(),
      'paymentReceivedDate': instance.paymentReceivedDate?.toIso8601String(),
    };

const _$CaseStatusEnumMap = {
  CaseStatus.pendingTransaction: 'PendingTransaction',
  CaseStatus.completeTransaction: 'CompleteTransaction',
  CaseStatus.waitingCourtHouse: 'WaitingCourtHouse',
  CaseStatus.approved: 'Approved',
  CaseStatus.deedReady: 'DeedReady',
  CaseStatus.deedIssued: 'DeedIssued',
  CaseStatus.denied: 'Denied',
  CaseStatus.paymentRefunded: 'PaymentRefunded',
  CaseStatus.unknown: 'Unknown',
};

_$PastWinningDetailDtoImpl _$$PastWinningDetailDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PastWinningDetailDtoImpl(
      lotId: json['id'] as int,
      auctionId: json['auctionId'] as int,
      depositReceivedDate: json['depositReceivedDate'] == null
          ? null
          : DateTime.parse(json['depositReceivedDate'] as String),
      paymentReceivedDate: json['paymentReceivedDate'] == null
          ? null
          : DateTime.parse(json['paymentReceivedDate'] as String),
      status: $enumDecodeNullable(_$CaseStatusEnumMap, json['status'],
              unknownValue: CaseStatus.unknown) ??
          CaseStatus.unknown,
      caseId: json['caseId'] as int,
      caseFirmName: json['caseFirmName'] as String? ?? '',
      caseFileNumber: json['caseFileNumber'] as String? ?? '',
      caseNumber: json['caseNumber'] as String? ?? '',
      caseDeedDelivery: json['caseDeedDelivery'] as String? ?? '',
      properties: (json['properties'] as List<dynamic>?)
              ?.map((e) => PropertyDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      bidderUserName: json['bidderUserName'] as String,
      winner: WinnerDetailDto.fromJson(json['winner'] as Map<String, dynamic>),
      startedTime: DateTime.parse(json['startedTime'] as String),
      stoppedTime: DateTime.parse(json['stoppedTime'] as String),
      openingPrice: json['openingPrice'] as num,
      requiredDown: json['requiredDown'] as num,
      numberOfBidders: json['numberOfBidders'] as int,
      numberOfBids: json['numberOfBids'] as int,
      lotNumber: json['lotNumber'] as int,
      createdDate: DateTime.parse(json['winnerCreatedDate'] as String),
      auctionHost: AuctionHostCompany.fromJson(
          json['auctionHost'] as Map<String, dynamic>),
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => DocumentSummary.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PastWinningDetailDtoImplToJson(
        _$PastWinningDetailDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.lotId,
      'auctionId': instance.auctionId,
      'depositReceivedDate': instance.depositReceivedDate?.toIso8601String(),
      'paymentReceivedDate': instance.paymentReceivedDate?.toIso8601String(),
      'status': _$CaseStatusEnumMap[instance.status]!,
      'caseId': instance.caseId,
      'caseFirmName': instance.caseFirmName,
      'caseFileNumber': instance.caseFileNumber,
      'caseNumber': instance.caseNumber,
      'caseDeedDelivery': instance.caseDeedDelivery,
      'properties': instance.properties,
      'bidderUserName': instance.bidderUserName,
      'winner': instance.winner,
      'startedTime': instance.startedTime.toIso8601String(),
      'stoppedTime': instance.stoppedTime.toIso8601String(),
      'openingPrice': instance.openingPrice,
      'requiredDown': instance.requiredDown,
      'numberOfBidders': instance.numberOfBidders,
      'numberOfBids': instance.numberOfBids,
      'lotNumber': instance.lotNumber,
      'winnerCreatedDate': instance.createdDate.toIso8601String(),
      'auctionHost': instance.auctionHost,
      'documents': instance.documents,
    };

_$WinnerDetailDtoImpl _$$WinnerDetailDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$WinnerDetailDtoImpl(
      id: json['id'] as int,
      type: json['type'] as String,
      name: json['name'] as String,
      contactName: json['contactName'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      address1: json['address1'] as String,
      address2: json['address2'] as String?,
      city: json['city'] as String,
      state: json['state'] as String,
      zip: json['zip'] as String,
      reliefFee: json['reliefFee'] as num? ?? 0,
      bidAmount: json['bidAmount'] as num,
      bidDownAmount: json['bidDownAmount'] as num,
      bidBidderFullName: json['bidBidderFullName'] as String? ?? '',
      bidPaddleNumber: json['bidPaddleNumber'] as String? ?? '',
    );

Map<String, dynamic> _$$WinnerDetailDtoImplToJson(
        _$WinnerDetailDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'contactName': instance.contactName,
      'phoneNumber': instance.phoneNumber,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
      'reliefFee': instance.reliefFee,
      'bidAmount': instance.bidAmount,
      'bidDownAmount': instance.bidDownAmount,
      'bidBidderFullName': instance.bidBidderFullName,
      'bidPaddleNumber': instance.bidPaddleNumber,
    };
