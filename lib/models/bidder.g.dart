// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bidder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$NewBidderToJson(NewBidder instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phone,
    };

_$PhoneImpl _$$PhoneImplFromJson(Map<String, dynamic> json) => _$PhoneImpl(
      number: json['number'] as String,
      isPrimary: json['isPrimary'] as bool,
      verifiedDate: json['verifiedDate'] == null
          ? null
          : DateTime.parse(json['verifiedDate'] as String),
    );

Map<String, dynamic> _$$PhoneImplToJson(_$PhoneImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'isPrimary': instance.isPrimary,
      'verifiedDate': instance.verifiedDate?.toIso8601String(),
    };
