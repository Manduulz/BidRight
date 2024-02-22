import 'package:freezed_annotation/freezed_annotation.dart';

part 'document.freezed.dart';
part 'document.g.dart';

@freezed
class DocumentSummary with _$DocumentSummary {
  const DocumentSummary._();

  const factory DocumentSummary({
    required String name,
    required String url,
}) = _DocumentSummary;

  factory DocumentSummary.fromJson(Map<String, dynamic> json) => _$DocumentSummaryFromJson(json);
}