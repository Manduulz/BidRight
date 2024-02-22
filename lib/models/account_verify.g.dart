// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_verify.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountVerifyResponseImpl _$$AccountVerifyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountVerifyResponseImpl(
      isVerified: json['isVerified'] as bool? ?? false,
      phones: (json['phones'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AccountVerifyResponseImplToJson(
        _$AccountVerifyResponseImpl instance) =>
    <String, dynamic>{
      'isVerified': instance.isVerified,
      'phones': instance.phones,
    };
