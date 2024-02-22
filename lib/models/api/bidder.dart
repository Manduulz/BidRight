import 'package:bid_right_mobile/models/address.dart';
import 'package:bid_right_mobile/models/bidder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bidder.freezed.dart';
part 'bidder.g.dart';

@freezed
class BidderDto with _$BidderDto {
  const BidderDto._();

  const factory BidderDto({
    required int id,
    required String firstName,
    required String lastName,
    required String email,
    required DateTime birthDate,
    required num balance,
    required num lockedBalance,
    required num availableBalance,
    @Default('') String address1,
    String? address2,
    @Default('') String city,
    @Default('') String state,
    @Default('') String zip,
    @Default(false) bool configuredAuthenticatorApp,
    required String userName,
    required bool isVerified,
    required List<Phone> bidderPhones,
  }) = _BidderDto;

  factory BidderDto.fromJson(Map<String, dynamic> json) => _$BidderDtoFromJson(json);

  Bidder toDomain() => Bidder(
    id: id,
    balance: balance,
    lockedBalance: lockedBalance,
    availableBalance: availableBalance,
    userName: userName,
    isVerified: isVerified,
    phones: bidderPhones,
    hasAuthenticator: configuredAuthenticatorApp,
    personalInfo: PersonalInfo(
      firstName: firstName,
      lastName: lastName,
      email: email,
      birthDate: birthDate,
      address: Address(
        streetLine1: address1,
        streetLine2: address2,
        city: city,
        stateCode: state,
        zip: zip,
      )
    )
  );
}