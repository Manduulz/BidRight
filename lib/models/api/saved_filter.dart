import 'package:bid_right_mobile/models/search_filter.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_filter.freezed.dart';

part 'saved_filter.g.dart';

@freezed
class SavedFilter with _$SavedFilter {
  const SavedFilter._();

  const factory SavedFilter({
    int? id,
    required String name,
    required Map<String, dynamic> savedFilter,
  }) = _SavedFilter;

  factory SavedFilter.fromSearchFilter(
      {required String name, required SearchFilter filter}) {
    final savedFilter = {
      for (final f in filter.filters) ...{
        if (f.value != null && f.type.type.searchType == SearchType.interval)
          '${f.type.id}_${f.type.name}_1': _serializeValue(f.type, f.value)
        else if (f.value != null)
          '${f.type.id}_${f.type.name}': _serializeValue(f.type, f.value),
        if (f.value2 != null)
          '${f.type.id}_${f.type.name}_2': _serializeValue(f.type, f.value2),
      }
    }..removeWhere((key, value) => value == null);

    return SavedFilter(
        name: name, savedFilter: Map<String, String>.from(savedFilter));
  }

  factory SavedFilter.fromJson(Map<String, dynamic> json) =>
      _$SavedFilterFromJson(json);

  SearchFilter parseFilters(List<AttributeType> attributeTypes) {
    final categorizedFilters = savedFilter.entries.groupListsBy(
      (element) => int.parse(element.key.replaceAll(RegExp(r'\D.*'), '')),
    );

    final attributeTypeMap = attributeTypes.lastBy((e) => e.id);

    final filters = <AttributeFilter>[];
    for (final filter in categorizedFilters.entries) {
      final attributeType = attributeTypeMap[filter.key];
      if (attributeType == null) {
        continue;
      }
      final value1 = filter.value
          .firstWhereOrNull((element) => !element.key.endsWith('_2'))
          ?.value;
      final value2 = filter.value
          .firstWhereOrNull((element) => element.key.endsWith('_2'))
          ?.value;
      filters.add(AttributeFilter(
        type: attributeType,
        value: _parseValue(attributeType, value1),
        value2: _parseValue(attributeType, value2),
      ));
    }

    return SearchFilter(filters: filters, name: name);
  }
}

dynamic _parseValue(AttributeType type, dynamic value) => type.type.map(
      text: (_) => value?.toString(),
      date: (_) => DateTime.tryParse(value.toString()),
      int: (_) => int.tryParse(value.toString()),
      bool: (_) => value,
      decimal: (_) => num.tryParse(value.toString()),
      dropdown: (attribute) =>
          attribute.options.singleWhereOrNull((e) => e.value == value),
      unknown: (_) => value,
    );

dynamic _serializeValue(AttributeType type, dynamic value) =>
    type.type.maybeMap(
        date: (_) => (value as DateTime?)?.toIso8601String(),
        dropdown: (_) => (value as AttributeDropdownOption?)?.value,
        bool: (_) => value,
        orElse: () => value?.toString());
