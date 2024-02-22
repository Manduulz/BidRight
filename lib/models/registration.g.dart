// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$NewBidderRequestImplToJson(
        _$NewBidderRequestImpl instance) =>
    <String, dynamic>{
      'userName': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phone,
      'birthDate': instance.dateOfBirth.toIso8601String(),
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
      'password': instance.password,
      'verificationId': instance.verificationId,
      'verificationCode': instance.verificationCode,
    };
