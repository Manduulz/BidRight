// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RawAttributeTypeImpl _$$RawAttributeTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$RawAttributeTypeImpl(
      id: json['attributeId'] as int,
      name: json['attributeName'] as String,
      displayName: json['attributeDisplayName'] as String,
      options: (json['optionData'] as List<dynamic>?)
              ?.map((e) =>
                  AttributeDropdownOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      type: json['attributeType'] as String,
      searchType: $enumDecode(_$SearchTypeEnumMap, json['searchType'],
          unknownValue: SearchType.standard),
    );

Map<String, dynamic> _$$RawAttributeTypeImplToJson(
        _$RawAttributeTypeImpl instance) =>
    <String, dynamic>{
      'attributeId': instance.id,
      'attributeName': instance.name,
      'attributeDisplayName': instance.displayName,
      'optionData': instance.options,
      'attributeType': instance.type,
      'searchType': _$SearchTypeEnumMap[instance.searchType]!,
    };

const _$SearchTypeEnumMap = {
  SearchType.standard: 'Default',
  SearchType.interval: 'Interval',
};
