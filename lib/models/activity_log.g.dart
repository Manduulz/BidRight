// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogEntryImpl _$$LogEntryImplFromJson(Map<String, dynamic> json) =>
    _$LogEntryImpl(
      eventId: json['eventId'] as String,
      createdDate: DateTime.parse(json['createdDate'] as String),
      title: json['actLogTitle'] as String,
      body: json['actLogBody'] as String,
    );

Map<String, dynamic> _$$LogEntryImplToJson(_$LogEntryImpl instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'createdDate': instance.createdDate.toIso8601String(),
      'actLogTitle': instance.title,
      'actLogBody': instance.body,
    };
