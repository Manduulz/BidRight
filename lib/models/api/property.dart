import 'package:bid_right_mobile/models/search_filter.dart';
import 'package:json_annotation/json_annotation.dart';

import '../address.dart';
import '../property.dart' hide PropertyAttribute;
import '../property.dart' as m show PropertyAttribute;

part 'property.g.dart';

@JsonSerializable()
class PropertyBidderResponse {
  final int id;
  final int auctionId;
  final bool isPinned;
  @JsonKey(name: 'auctionStartTime')
  final DateTime startDate;
  @JsonKey(name: 'auctionHostName')
  final String? firmName;
  @JsonKey(name: 'auctionHostLogoUrl')
  final String? firmLogoUrl;
  final String? streetLine1;
  final String? streetLine2;
  final String? city;
  final String? county;
  final String? stateCode;
  final String? zipCode;
  final String? countryCode;
  final num? latitude;
  final num? longitude;
  final num openingPrice;
  final List<PropertyImage> images;
  final List<PropertyAttribute> attributes;
  final int propertyCount;

  const PropertyBidderResponse({
    required this.id,
    required this.auctionId,
    this.isPinned = false,
    required this.startDate,
    this.firmName,
    this.firmLogoUrl,
    this.streetLine1,
    this.streetLine2,
    this.city,
    this.county,
    this.stateCode,
    this.zipCode,
    this.countryCode,
    this.latitude,
    this.longitude,
    required this.openingPrice,
    required this.images,
    required this.attributes,
    required this.propertyCount,
  });

  factory PropertyBidderResponse.fromJson(Map<String, dynamic> json) =>
      _$PropertyBidderResponseFromJson(json);

  LotBidderState toLot() {
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
      for (final attribute in attributes) attribute.attributeId: attribute.value
    };

    final property = Property(
      address: address,
      latitude: latitude,
      longitude: longitude,
      images: images,
      type: attributeMap[22],
      beds: num.tryParse(attributeMap[4] ?? ''),
      baths: num.tryParse(attributeMap[2] ?? ''),
      area: num.tryParse(attributeMap[19] ?? ''),
      valuation: attributeMap[29],
      attributes: attributes.map((e) => e.toModelAttribute()).toList(),
    );

    return LotBidderState(
      lot: Lot(
        id: id,
        auctionId: auctionId,
        actualStartTime: startDate,
        firmName: firmName ?? '',
        firmLogoUrl: firmLogoUrl,
        startingBid: openingPrice,
        property: property,
        propertyCount: propertyCount,
      ),
      isPinned: isPinned,
    );
  }
}

@JsonSerializable()
class PropertyAttribute {
  final int attributeId;
  final String attributeName;
  final String attributeDisplayName;
  final String? value;
  @JsonKey(defaultValue: [])
  final List<AttributeDropdownOption> optionData;
  final String attributeType;

  const PropertyAttribute(
    this.attributeId,
    this.attributeName,
    this.attributeDisplayName,
    this.value,
    this.optionData,
    this.attributeType,
  );

  factory PropertyAttribute.fromJson(Map<String, dynamic> json) =>
      _$PropertyAttributeFromJson(json);

  m.PropertyAttribute toModelAttribute() {
    final type = attributesById[attributeId];
    return m.PropertyAttribute(
      type: type,
      attributeType: AttributeType(
        id: attributeId,
        name: attributeName,
        displayName: attributeDisplayName,
        type: _detail(),
      ),
      value: value,
    );
  }

  // TODO remove duplication
  AttributeTypeDetail _detail() {
    switch (attributeType) {
      case 'TextField':
        return const AttributeTypeDetail.text();
      case 'DateField':
        return const AttributeTypeDetail.date(searchType: SearchType.standard);
      case 'IntField':
        return const AttributeTypeDetail.int(searchType: SearchType.standard);
      case 'BoolField':
        return const AttributeTypeDetail.bool();
      case 'DecimalField':
        return const AttributeTypeDetail.decimal(searchType: SearchType.standard);
      case 'DropdownField':
        return AttributeTypeDetail.dropdown(options: optionData);
      default:
        return const AttributeTypeDetail.unknown();
    }
  }
}

const attributesById = <int, PropertyAttributeType>{
  2: PropertyAttributeType.baths,
  4: PropertyAttributeType.beds,
  19: PropertyAttributeType.area,
  29: PropertyAttributeType.valuation,
};
