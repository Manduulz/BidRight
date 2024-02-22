// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_verification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhoneVerificationTokenImpl _$$PhoneVerificationTokenImplFromJson(
        Map<String, dynamic> json) =>
    _$PhoneVerificationTokenImpl(
      id: json['id'] as int,
      number: json['number'] as String,
      expirationDate: DateTime.parse(json['expirationDate'] as String),
    );

Map<String, dynamic> _$$PhoneVerificationTokenImplToJson(
        _$PhoneVerificationTokenImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'expirationDate': instance.expirationDate.toIso8601String(),
    };
