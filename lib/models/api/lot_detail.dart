import 'package:bid_right_mobile/models/address.dart';
import 'package:bid_right_mobile/models/api/property.dart';
import 'package:bid_right_mobile/models/auction.dart';
import 'package:bid_right_mobile/models/auction_bidder.dart';
import 'package:bid_right_mobile/models/property.dart' hide PropertyAttribute;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lot_detail.freezed.dart';

part 'lot_detail.g.dart';

//ignore_for_file: invalid_annotation_target

@freezed
class LotDetailDto with _$LotDetailDto {
  const LotDetailDto._();

  const factory LotDetailDto({
    required int id,
    required bool isPinned,
    num? minBidIncrements,
    DateTime? startedTime,
    DateTime? stoppedTime,
    DateTime? stopTime,
    required String lotStatus,
    required AuctionDetail auction,
    int? winnerBidId,
    AuctionBidder? auctionBidder,
    @JsonKey(name: 'auctionBidderLot')
    LotBidder? lotBidder,
    @Default([]) List<Bid> bids,
    required num requiredDown,
    required num openingPrice,
    required PropertyDto property,
    required int propertyCount,
  }) = _LotDetailDto;

  factory LotDetailDto.fromJson(Map<String, dynamic> json) =>
      _$LotDetailDtoFromJson(json);

  AuctionDetailWithLot toAuction() => AuctionDetailWithLot(
        auction: auction,
        minBidIncrements: minBidIncrements ?? 1,
        lot: Lot(
          id: id,
          auctionId: auction.id,
          requiredDownPayment: requiredDown,
          actualStartTime: startedTime,
          stopTime: stopTime,
          actualStopTime: stoppedTime,
          isCancelled: lotStatus == 'Cancelled',
          firmName: auction.hostName ?? '',
          firmLogoUrl: null,
          property: property.toProperty(),
          propertyCount: propertyCount,
          startingBid: openingPrice,
        ),
        bidState: LotBidState(
          winnerBidId: winnerBidId,
          bidder: auctionBidder,
          bids: bids,
          isJoined: lotBidder?.enteredDate != null && lotBidder!.leftDate == null,
          lockedAmount: lotBidder?.lockedAmount ?? 0,
        ),
      );
}

@freezed
class PropertyDto with _$PropertyDto {
  const PropertyDto._();

  const factory PropertyDto({
    required int id,
    String? streetLine1,
    String? streetLine2,
    String? city,
    String? zipCode,
    String? stateCode,
    String? countryCode,
    String? county,
    num? latitude,
    num? longitude,
    @Default([]) List<PropertyAttribute> extendedData,
    @Default([]) List<PropertyImage> imageData,
  }) = _PropertyDto;

  factory PropertyDto.fromJson(Map<String, dynamic> json) =>
      _$PropertyDtoFromJson(json);

  Property toProperty() {
    final address = Address(
      streetLine1: streetLine1 ?? '',
      streetLine2: streetLine2 ?? '',
      city: city ?? '',
      stateCode: stateCode ?? '',
      zip: zipCode ?? '',
      county: county ?? '',
      countryCode: countryCode ?? '',
    );

    final attributeMap = {
      for (final attribute in extendedData)
        attribute.attributeId: attribute.value
    };

    return Property(
      id: id,
      address: address,
      latitude: latitude,
      longitude: longitude,
      images: imageData,
      type: attributeMap[22],
      beds: num.tryParse(attributeMap[4] ?? ''),
      baths: num.tryParse(attributeMap[2] ?? ''),
      area: num.tryParse(attributeMap[19] ?? ''),
      valuation: attributeMap[29],
      attributes: extendedData.map((e) => e.toModelAttribute()).toList(),
    );
  }
}
