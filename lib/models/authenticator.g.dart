// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticatorImpl _$$AuthenticatorImplFromJson(Map<String, dynamic> json) =>
    _$AuthenticatorImpl(
      qrCodeImageUrl: json['qrCodeImageUrl'] as String,
      manualEntrySetupCode: json['manualEntrySetupCode'] as String,
    );

Map<String, dynamic> _$$AuthenticatorImplToJson(_$AuthenticatorImpl instance) =>
    <String, dynamic>{
      'qrCodeImageUrl': instance.qrCodeImageUrl,
      'manualEntrySetupCode': instance.manualEntrySetupCode,
    };
