import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_log.freezed.dart';

part 'activity_log.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class LogEntry with _$LogEntry {
  const LogEntry._();

  const factory LogEntry({
    required String eventId,
    required DateTime createdDate,
    @JsonKey(name: 'actLogTitle') required String title,
    @JsonKey(name: 'actLogBody') required String body,
  }) = _LogEntry;

  factory LogEntry.fromJson(Map<String, dynamic> json) =>
      _$LogEntryFromJson(json);
}
