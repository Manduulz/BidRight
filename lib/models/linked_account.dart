import 'package:json_annotation/json_annotation.dart';

part 'linked_account.g.dart';

@JsonSerializable(createToJson: false)
class AccountLink {
  final int bidderId;
  final LinkedAccount account;
  @JsonKey(name: 'nickName')
  final String nickname;
  final bool isValid;

  const AccountLink({
    required this.bidderId,
    required this.account,
    required this.nickname,
    required this.isValid,
  });

  factory AccountLink.fromJson(Map<String, dynamic> json) =>
      _$AccountLinkFromJson(json);
}

@JsonSerializable(createToJson: false)
class LinkedAccount {
  final int id;
  final String externalId;
  final String? type;
  @JsonKey(name: 'subType')
  final String? subtype;
  final String institutionName;
  final String? institutionLogo;
  final String name;
  final String mask;
  final DateTime modifiedDate;
  final num balance;

  LinkedAccount({
    required this.id,
    required this.externalId,
    this.type,
    this.subtype,
    required this.institutionName,
    this.institutionLogo,
    required this.name,
    required this.mask,
    required this.modifiedDate,
    required this.balance,
  });

  factory LinkedAccount.fromJson(Map<String, dynamic> json) =>
      _$LinkedAccountFromJson(json);
}
