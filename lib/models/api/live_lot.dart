import 'package:bid_right_mobile/models/address.dart';
import 'package:bid_right_mobile/models/live_lot.dart';
import 'package:bid_right_mobile/models/property.dart' hide PropertyAttribute;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'property.dart';

part 'live_lot.freezed.dart';

part 'live_lot.g.dart';

@freezed
class LiveLotDto with _$LiveLotDto {
  const LiveLotDto._();

  const factory LiveLotDto({
    required int id,
    required int caseId,
    required int auctionId,
    String? auctionHostName,
    String? auctionHostLogoUrl,
    // required int lotNumber,
    required num openingPrice,
    num? currentPrice,
    DateTime? stopTime,
    required String streetLine1,
    String? streetLine2,
    required String city,
    String? county,
    required String stateCode,
    required String zipCode,
    @Default([]) List<PropertyAttribute> attributes,
    required int propertyCount,
  }) = _LiveLotDto;

  factory LiveLotDto.fromJson(Map<String, dynamic> json) =>
      _$LiveLotDtoFromJson(json);

  LiveLot toDomain() {
    final attributes =
        this.attributes.map((e) => e.toModelAttribute()).toList();
    final attributeMap = {
      for (final attribute in attributes)
        if (attribute.type != null) attribute.type!: attribute
    };

    return LiveLot(
      id: id,
      auctionId: auctionId,
      stopTime: stopTime,
      currentBid: currentPrice ?? openingPrice,
      hasBids: currentPrice != null,
      auctionHostName: auctionHostName,
      auctionHostLogoUrl: auctionHostLogoUrl,
      property: Property(
        address: Address(
          streetLine1: streetLine1,
          streetLine2: streetLine2,
          city: city,
          county: county,
          zip: zipCode,
          stateCode: stateCode,
        ),
        attributes: attributes,
        baths: num.tryParse(
            attributeMap[PropertyAttributeType.baths]?.value ?? ''),
        beds:
            int.tryParse(attributeMap[PropertyAttributeType.beds]?.value ?? ''),
        area:
            num.tryParse(attributeMap[PropertyAttributeType.area]?.value ?? ''),
        valuation: attributeMap[PropertyAttributeType.valuation]?.value,
      ),
      propertyCount: propertyCount,
    );
  }
}
