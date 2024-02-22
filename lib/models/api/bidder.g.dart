// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bidder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BidderDtoImpl _$$BidderDtoImplFromJson(Map<String, dynamic> json) =>
    _$BidderDtoImpl(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      balance: json['balance'] as num,
      lockedBalance: json['lockedBalance'] as num,
      availableBalance: json['availableBalance'] as num,
      address1: json['address1'] as String? ?? '',
      address2: json['address2'] as String?,
      city: json['city'] as String? ?? '',
      state: json['state'] as String? ?? '',
      zip: json['zip'] as String? ?? '',
      configuredAuthenticatorApp:
          json['configuredAuthenticatorApp'] as bool? ?? false,
      userName: json['userName'] as String,
      isVerified: json['isVerified'] as bool,
      bidderPhones: (json['bidderPhones'] as List<dynamic>)
          .map((e) => Phone.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BidderDtoImplToJson(_$BidderDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'birthDate': instance.birthDate.toIso8601String(),
      'balance': instance.balance,
      'lockedBalance': instance.lockedBalance,
      'availableBalance': instance.availableBalance,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
      'configuredAuthenticatorApp': instance.configuredAuthenticatorApp,
      'userName': instance.userName,
      'isVerified': instance.isVerified,
      'bidderPhones': instance.bidderPhones,
    };
