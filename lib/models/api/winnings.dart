import 'package:bid_right_mobile/models/address.dart';
import 'package:bid_right_mobile/models/api/lot_detail.dart';
import 'package:bid_right_mobile/models/auction_host.dart';
import 'package:bid_right_mobile/models/document.dart';
import 'package:bid_right_mobile/models/winnings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'winnings.freezed.dart';

part 'winnings.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class PastWinningDto with _$PastWinningDto {
  const PastWinningDto._();

  const factory PastWinningDto({
    @JsonKey(name: 'id') required int lotId,
    required String streetLine1,
    String? streetLine2,
    required String city,
    String? county,
    required String stateCode,
    required String zipCode,
    required num winnerBidAmount,
    required DateTime winnerCreatedDate,
    String? auctionHostName,
    @Default(CaseStatus.unknown)
    @JsonKey(unknownEnumValue: CaseStatus.unknown)
    CaseStatus status,
    DateTime? depositReceivedDate,
    DateTime? paymentReceivedDate,
  }) = _PastWinningDto;

  factory PastWinningDto.fromJson(Map<String, dynamic> json) =>
      _$PastWinningDtoFromJson(json);

  PastWinning toPastWinning() => PastWinning(
        lotId: lotId,
        address: Address(
          streetLine1: streetLine1,
          streetLine2: streetLine2,
          city: city,
          county: county,
          stateCode: stateCode,
          zip: zipCode,
        ),
        bidAmount: winnerBidAmount,
        createdDate: winnerCreatedDate,
        auctionHostName: auctionHostName ?? '',
        caseStatus: status,
        depositReceivedDate: depositReceivedDate,
        paymentReceivedDate: paymentReceivedDate,
      );
}

@freezed
class PastWinningDetailDto with _$PastWinningDetailDto {
  const PastWinningDetailDto._();

  const factory PastWinningDetailDto({
    @JsonKey(name: 'id') required int lotId,
    required int auctionId,
    DateTime? depositReceivedDate,
    DateTime? paymentReceivedDate,
    @Default(CaseStatus.unknown)
    @JsonKey(unknownEnumValue: CaseStatus.unknown)
    CaseStatus status,
    required int caseId,
    @Default('') String caseFirmName,
    @Default('') String caseFileNumber,
    @Default('') String caseNumber,
    @Default('') String caseDeedDelivery,
    @Default([]) List<PropertyDto> properties,
    required String bidderUserName,
    required WinnerDetailDto winner,
    required DateTime startedTime,
    required DateTime stoppedTime,
    required num openingPrice,
    required num requiredDown,
    required int numberOfBidders,
    required int numberOfBids,
    required int lotNumber,
    @JsonKey(name: 'winnerCreatedDate') required DateTime createdDate,
    required AuctionHostCompany auctionHost,
    @Default([]) List<DocumentSummary> documents,
  }) = _PastWinningDetailDto;

  factory PastWinningDetailDto.fromJson(Map<String, dynamic> json) =>
      _$PastWinningDetailDtoFromJson(json);

  PastWinningDetail toPastWinning() => PastWinningDetail(
        lotId: lotId,
        auctionId: auctionId,
        depositReceivedDate: depositReceivedDate,
        paymentReceivedDate: paymentReceivedDate,
        status: status,
        caseId: caseId,
        caseFirmName: caseFirmName,
        caseFileNumber: caseFileNumber,
        caseNumber: caseNumber,
        caseDeedDelivery: caseDeedDelivery,
        properties: [for (final dto in properties) dto.toProperty()],
        bidderUserName: bidderUserName,
        winner: winner.toWinner(),
        startedTime: startedTime,
        stoppedTime: stoppedTime,
        openingPrice: openingPrice,
        requiredDown: requiredDown,
        numberOfBidders: numberOfBidders,
        numberOfBids: numberOfBids,
        lotNumber: lotNumber,
        createdDate: createdDate,
        auctionHost: auctionHost,
        documents: documents,
      );
}

@freezed
class WinnerDetailDto with _$WinnerDetailDto {
  const WinnerDetailDto._();

  const factory WinnerDetailDto({
    required int id,
    required String type,
    required String name,
    @Default('') String contactName,
    @Default('') String phoneNumber,
    required String address1,
    String? address2,
    required String city,
    required String state,
    required String zip,
    @Default(0) num reliefFee,
    required num bidAmount,
    required num bidDownAmount,
    @Default('') String bidBidderFullName,
    @Default('') String bidPaddleNumber,
  }) = _WinnerDetailDto;

  WinnerDetail toWinner() => WinnerDetail(
        id: id,
        type: type,
        name: name,
        contactName: contactName,
        phoneNumber: phoneNumber,
        address: address,
        bidAmount: bidAmount,
        bidDownAmount: bidDownAmount,
        bidderFullName: bidBidderFullName,
        paddleNumber: bidPaddleNumber,
      );

  Address get address => Address(
        streetLine1: address1,
        streetLine2: address2,
        city: city,
        stateCode: state,
        zip: zip,
      );

  factory WinnerDetailDto.fromJson(Map<String, dynamic> json) =>
      _$WinnerDetailDtoFromJson(json);
}
