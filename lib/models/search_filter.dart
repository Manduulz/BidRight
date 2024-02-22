import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_filter.freezed.dart';

part 'search_filter.g.dart';

@freezed
class SearchFilter with _$SearchFilter {
  const SearchFilter._();

  const factory SearchFilter({
    String? name,
    @Default([]) List<AttributeFilter> filters,
  }) = _SearchFilter;

  List<dynamic> toJson() => filters.map((e) => e.toJson()).toList();
}

@freezed
class AttributeFilter with _$AttributeFilter {
  const AttributeFilter._();

  // Screw it, the API doesn't care about types, so neither will I.
  const factory AttributeFilter({
    required AttributeType type,
    dynamic value,
    dynamic value2,
  }) = _AttributeFilter;

  bool get isValid {
    final typeDetail = type.type;
    switch (typeDetail.searchType) {
      case SearchType.standard:
        return typeDetail.acceptsValue(value);
      case SearchType.interval:
        return typeDetail.acceptsValue(value) &&
            typeDetail.acceptsValue(value2);
    }
  }

  bool get isEmpty => (value == null || value == false) && value2 == null;

  bool get isNotEmpty => !isEmpty;

  Map<String, dynamic> toJson() => {
        'id': type.id,
        'value': value is AttributeDropdownOption
            ? (value as AttributeDropdownOption).value
            : value,
        'value2': value2,
      };
}

@freezed
class AttributeType with _$AttributeType {
  const AttributeType._();

  const factory AttributeType({
    required int id,
    required String name,
    required String displayName,
    required AttributeTypeDetail type,
  }) = _AttributeType;
}

@freezed
class AttributeTypeDetail with _$AttributeTypeDetail {
  const AttributeTypeDetail._();

  const factory AttributeTypeDetail.text() = TextAttribute;

  const factory AttributeTypeDetail.date({required SearchType searchType}) =
      DateAttribute;

  const factory AttributeTypeDetail.int({required SearchType searchType}) =
      IntAttribute;

  const factory AttributeTypeDetail.bool() = BoolAttribute;

  const factory AttributeTypeDetail.decimal({required SearchType searchType}) =
      DecimalAttribute;

  const factory AttributeTypeDetail.dropdown(
      {required List<AttributeDropdownOption> options}) = DropdownAttribute;

  const factory AttributeTypeDetail.unknown() = UnknownAttribute;

  SearchType get searchType => SearchType.standard;

  bool acceptsValue(dynamic value) => map(
        text: (_) => value is String?,
        date: (_) => value is DateTime?,
        int: (_) => value is int?,
        bool: (_) => value is bool?,
        decimal: (_) => value is num?,
        dropdown: (_) => value is AttributeDropdownOption?,
        unknown: (_) => true,
      );
}

@freezed
class AttributeDropdownOption with _$AttributeDropdownOption {
  const AttributeDropdownOption._();

  const factory AttributeDropdownOption(
      {required int id, required String value}) = _AttributeDropdownOption;

  factory AttributeDropdownOption.fromJson(Map<String, dynamic> json) =>
      _$AttributeDropdownOptionFromJson(json);
}

@JsonEnum()
enum SearchType {
  @JsonValue('Default')
  standard,
  @JsonValue('Interval')
  interval,
}
