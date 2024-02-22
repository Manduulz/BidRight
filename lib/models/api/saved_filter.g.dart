// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavedFilterImpl _$$SavedFilterImplFromJson(Map<String, dynamic> json) =>
    _$SavedFilterImpl(
      id: json['id'] as int?,
      name: json['name'] as String,
      savedFilter: json['savedFilter'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$SavedFilterImplToJson(_$SavedFilterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'savedFilter': instance.savedFilter,
    };
