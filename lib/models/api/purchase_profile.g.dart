// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PurchaseProfileDto _$PurchaseProfileDtoFromJson(Map<String, dynamic> json) =>
    PurchaseProfileDto(
      id: json['id'] as int,
      type: json['type'] as String,
      name: json['name'] as String,
      contactName: json['contactName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zip: json['zip'] as String?,
      isPrimary: json['isPrimary'] as bool? ?? false,
      isAgentForBidder: json['isAgentForBidder'] as bool? ?? false,
    );

Map<String, dynamic> _$PurchaseProfileUpdateDtoToJson(
        PurchaseProfileUpdateDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'contactName': instance.contactName,
      'isContactSame': instance.isContactSame,
      'isAgentForBidder': instance.isAgentForBidder,
      'phoneNumber': instance.phoneNumber,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
    };
