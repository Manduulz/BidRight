import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction_host.freezed.dart';
part 'auction_host.g.dart';

@JsonSerializable(createToJson: false)
class VerifiedAuctionHost {
  final String? name;
  final String? description;
  @JsonKey(name: 'phoneNumber')
  final String? phone;
  @JsonKey(name: 'supportEmail')
  final String? email;
  @JsonKey(name: 'website')
  final String? url;
  @JsonKey(name: 'backgroundImageUrl')
  final String? imageUrl;
  final String? logoUrl;

  VerifiedAuctionHost({
    this.name,
    this.description,
    this.phone,
    this.email,
    this.url,
    this.imageUrl,
    this.logoUrl,
  });

  factory VerifiedAuctionHost.fromJson(Map<String, dynamic> json) =>
      _$VerifiedAuctionHostFromJson(json);
}

@freezed
class AuctionHostCompany with _$AuctionHostCompany {
  const factory AuctionHostCompany({
    @Default('') String name,
    String? phoneNumber,
    String? supportEmail,
    String? wireInstructionsUrl,
  }) = _AuctionHostCompany;

  factory AuctionHostCompany.fromJson(Map<String, dynamic> json) =>
      _$AuctionHostCompanyFromJson(json);
}
