import 'package:bid_right_mobile/models/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'bidder.freezed.dart';

part 'bidder.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class Bidder with _$Bidder {
  const Bidder._();

  const factory Bidder({
    required int id,
    required PersonalInfo personalInfo,
    required num balance,
    required num lockedBalance,
    required num availableBalance,
    required String userName,
    required bool isVerified,
    required List<Phone> phones,
    required bool hasAuthenticator,
  }) = _Bidder;

  String get firstName => personalInfo.firstName;

  String get name => personalInfo.name;

  bool get hasAddress => personalInfo.address.streetLine1.isNotEmpty;
}

@freezed
class PersonalInfo with _$PersonalInfo {
  const PersonalInfo._();

  const factory PersonalInfo({
    required String firstName,
    required String lastName,
    required String email,
    required DateTime birthDate,
    required Address address,
  }) = _PersonalInfo;

  Map<String, dynamic> toJson() => {
    'firstName': firstName,
    'lastName': lastName,
    'email': email,
    'address1': address.streetLine1,
    'address2': address.streetLine2,
    'city': address.city,
    'state': address.stateCode,
    'zip': address.zip,
    'birthDate': DateFormat('yyyy-MM-dd', 'en_US').format(birthDate),
  };

  String get name => '$firstName $lastName';
}

@freezed
class Phone with _$Phone {
  const Phone._();

  const factory Phone({
    required String number,
    required bool isPrimary,
    DateTime? verifiedDate,
  }) = _Phone;

  bool get isVerified => verifiedDate != null;

  factory Phone.fromJson(Map<String, dynamic> json) => _$PhoneFromJson(json);
}

@JsonSerializable(createFactory: false)
class NewBidder {
  final String firstName;
  final String lastName;
  final String email;
  @JsonKey(name: 'phoneNumber')
  final String phone;

  const NewBidder({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
  });

  Map<String, dynamic> toJson() => _$NewBidderToJson(this);
}
