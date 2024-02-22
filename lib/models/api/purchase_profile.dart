import 'package:bid_right_mobile/models/address.dart';
import 'package:bid_right_mobile/models/purchase_profile.dart';
import 'package:json_annotation/json_annotation.dart';

part 'purchase_profile.g.dart';

@JsonSerializable(createToJson: false)
class PurchaseProfileDto {
  final int id;
  final String type;
  final String name;
  final String? contactName;
  final String? phoneNumber;
  final String? address1;
  final String? address2;
  final String? city;
  final String? state;
  final String? zip;
  final bool isPrimary;
  final bool isAgentForBidder;

  const PurchaseProfileDto({
    required this.id,
    required this.type,
    required this.name,
    required this.contactName,
    required this.phoneNumber,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.zip,
    this.isPrimary = false,
    this.isAgentForBidder = false,
  });

  PurchaseProfile toPurchaseProfile() {
    Address? address;
    if (address1 != null && city != null && state != null && zip != null) {
      address = Address(
          streetLine1: address1!, city: city!, stateCode: state!, zip: zip!);
    }

    return PurchaseProfile(
      id: id,
      type: type,
      name: name,
      contactName: contactName,
      phone: phoneNumber,
      address: address,
      isPrimary: isPrimary,
      isAgent: isAgentForBidder,
    );
  }

  factory PurchaseProfileDto.fromJson(Map<String, dynamic> json) =>
      _$PurchaseProfileDtoFromJson(json);
}

@JsonSerializable(createFactory: false)
class PurchaseProfileUpdateDto {
  final String type;
  final String name;
  final String? contactName;
  final bool isContactSame;
  final bool isAgentForBidder;
  final String? phoneNumber;
  final String? address1;
  final String? address2;
  final String? city;
  final String? state;
  final String? zip;

  const PurchaseProfileUpdateDto({
    required this.type,
    required this.name,
    required this.contactName,
    required this.isContactSame,
    required this.isAgentForBidder,
    required this.phoneNumber,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.zip,
  });

  factory PurchaseProfileUpdateDto.fromPurchaseProfile(PurchaseProfile profile) {
    return PurchaseProfileUpdateDto(
      type: profile.type,
      name: profile.name,
      contactName: profile.contactName,
      isContactSame: profile.address == null,
      isAgentForBidder: profile.isAgent,
      phoneNumber: profile.phone,
      address1: profile.address?.streetLine1,
      address2: profile.address?.streetLine2,
      city: profile.address?.city,
      state: profile.address?.stateCode,
      zip: profile.address?.zip,
    );
  }

  Map<String, dynamic> toJson() => _$PurchaseProfileUpdateDtoToJson(this);
}