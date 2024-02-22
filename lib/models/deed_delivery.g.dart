// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deed_delivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PickupImpl _$$PickupImplFromJson(Map<String, dynamic> json) => _$PickupImpl(
      $type: json['deedDelivery'] as String?,
    );

Map<String, dynamic> _$$PickupImplToJson(_$PickupImpl instance) =>
    <String, dynamic>{
      'deedDelivery': instance.$type,
    };

_$ShipImpl _$$ShipImplFromJson(Map<String, dynamic> json) => _$ShipImpl(
      address: json['deedShippingAddress'] as String,
      $type: json['deedDelivery'] as String?,
    );

Map<String, dynamic> _$$ShipImplToJson(_$ShipImpl instance) =>
    <String, dynamic>{
      'deedShippingAddress': instance.address,
      'deedDelivery': instance.$type,
    };
