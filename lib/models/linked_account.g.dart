// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linked_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountLink _$AccountLinkFromJson(Map<String, dynamic> json) => AccountLink(
      bidderId: json['bidderId'] as int,
      account: LinkedAccount.fromJson(json['account'] as Map<String, dynamic>),
      nickname: json['nickName'] as String,
      isValid: json['isValid'] as bool,
    );

LinkedAccount _$LinkedAccountFromJson(Map<String, dynamic> json) =>
    LinkedAccount(
      id: json['id'] as int,
      externalId: json['externalId'] as String,
      type: json['type'] as String?,
      subtype: json['subType'] as String?,
      institutionName: json['institutionName'] as String,
      institutionLogo: json['institutionLogo'] as String?,
      name: json['name'] as String,
      mask: json['mask'] as String,
      modifiedDate: DateTime.parse(json['modifiedDate'] as String),
      balance: json['balance'] as num,
    );
