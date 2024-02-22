import 'package:bid_right_mobile/models/address.dart';
import 'package:bid_right_mobile/models/search_filter.dart';
import 'package:bid_right_mobile/ui/auction/detail/auction_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'property.freezed.dart';

part 'property.g.dart';

@freezed
class LotBidderState with _$LotBidderState {
  const factory LotBidderState({
    required Lot lot,
    required bool isPinned,
  }) = _LotBidderState;
}

@freezed
class Lot with _$Lot {
  const Lot._();

  const factory Lot({
    required int id,
    required int auctionId,
    DateTime? actualStartTime,
    DateTime? stopTime,
    DateTime? actualStopTime,
    @Default(false) bool isCancelled,
    num? requiredDownPayment,
    required String firmName,
    String? firmLogoUrl,
    required Property property,
    required int propertyCount,
    required num? startingBid,
  }) = _Lot;

  bool get isStarted => actualStartTime != null;

  LotStatus get status {
    if (isCancelled) {
      return LotStatus.cancelled;
    }

    if (actualStartTime == null) {
      return LotStatus.pending;
    }

    if (actualStopTime == null) {
      return LotStatus.started;
    }

    return LotStatus.stopped;
  }
}

@freezed
class LotSummary with _$LotSummary {
  const LotSummary._();

  const factory LotSummary({
    required int id,
    required String streetLine1,
    String? streetLine2,
    required String city,
    String? county,
    required String stateCode,
    required String zipCode,
    String? countryCode,
    String? lotStatus,
    DateTime? auctionStartTime,
    @Default([]) List<PropertyImage> images,
    required int propertyCount,
  }) = _LotSummary;

  factory LotSummary.fromJson(Map<String, dynamic> json) =>
      _$LotSummaryFromJson(json);

  Address get address => Address(
        streetLine1: streetLine1,
        streetLine2: streetLine2,
        city: city,
        county: county,
        stateCode: stateCode,
        zip: zipCode,
        countryCode: countryCode,
      );
}

@JsonSerializable()
class PropertyImage {
  final String description;
  final int id;
  final String url;

  const PropertyImage(this.description, this.id, this.url);

  factory PropertyImage.fromJson(Map<String, dynamic> json) =>
      _$PropertyImageFromJson(json);
}

@freezed
class Property with _$Property {
  const Property._();

  const factory Property({
    int? id,
    required Address address,
    num? latitude,
    num? longitude,
    @Default([]) List<PropertyImage> images,
    String? type,
    num? beds,
    num? baths,
    num? area,
    String? valuation,
    @Default([]) List<PropertyAttribute> attributes,
  }) = _Property;
}

@freezed
class PropertyAttribute with _$PropertyAttribute {
  const PropertyAttribute._();

  const factory PropertyAttribute({
    PropertyAttributeType? type,
    required AttributeType attributeType,
    required String? value,
  }) = _PropertyAttribute;

  String get name => type != null ? _nameByAttribute(type!) : displayName;

  String get code => attributeType.name;

  String get displayName => attributeType.displayName;

  String get formattedValue {
    if (value?.toLowerCase() == 'true') {
      return 'yes';
    }

    if (value?.toLowerCase() == 'false') {
      return 'no';
    }

    if (code == 'HOA') {
      final amount = num.tryParse(value ?? '');
      if (amount != null) {
        return NumberFormat.simpleCurrency(name: 'USD', decimalDigits: 0)
            .format(amount);
      }
    }

    return attributeType.type.maybeMap(
      date: (_) => DateFormat.yMd().format(DateTime.parse(value!)),
      orElse: () => value ?? '',
    );
  }
}

enum PropertyAttributeType {
  baths,
  beds,
  area,
  valuation,
}

String _nameByAttribute(PropertyAttributeType type) {
  switch (type) {
    case PropertyAttributeType.baths:
      return 'Baths';
    case PropertyAttributeType.beds:
      return 'Beds';
    case PropertyAttributeType.area:
      return 'Total Area (square feet)';
    case PropertyAttributeType.valuation:
      return 'Estimated Value';
  }
}
