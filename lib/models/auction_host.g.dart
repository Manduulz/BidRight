// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_host.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifiedAuctionHost _$VerifiedAuctionHostFromJson(Map<String, dynamic> json) =>
    VerifiedAuctionHost(
      name: json['name'] as String?,
      description: json['description'] as String?,
      phone: json['phoneNumber'] as String?,
      email: json['supportEmail'] as String?,
      url: json['website'] as String?,
      imageUrl: json['backgroundImageUrl'] as String?,
      logoUrl: json['logoUrl'] as String?,
    );

_$AuctionHostCompanyImpl _$$AuctionHostCompanyImplFromJson(
        Map<String, dynamic> json) =>
    _$AuctionHostCompanyImpl(
      name: json['name'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String?,
      supportEmail: json['supportEmail'] as String?,
      wireInstructionsUrl: json['wireInstructionsUrl'] as String?,
    );

Map<String, dynamic> _$$AuctionHostCompanyImplToJson(
        _$AuctionHostCompanyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'supportEmail': instance.supportEmail,
      'wireInstructionsUrl': instance.wireInstructionsUrl,
    };
