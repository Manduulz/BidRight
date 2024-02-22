import 'package:bid_right_mobile/models/search_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute.freezed.dart';

part 'attribute.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class RawAttributeType with _$RawAttributeType {
  const RawAttributeType._();

  const factory RawAttributeType({
    @JsonKey(name: 'attributeId') required int id,
    @JsonKey(name: 'attributeName') required String name,
    @JsonKey(name: 'attributeDisplayName') required String displayName,
    @JsonKey(name: 'optionData')
    @Default([])
        List<AttributeDropdownOption> options,
    @JsonKey(name: 'attributeType') required String type,
    @JsonKey(unknownEnumValue: SearchType.standard)
        required SearchType searchType,
  }) = _RawAttributeType;

  factory RawAttributeType.fromJson(Map<String, dynamic> json) =>
      _$RawAttributeTypeFromJson(json);

  AttributeType toType() {
    return AttributeType(
      id: id,
      name: name,
      displayName: displayName,
      type: _detail(),
    );
  }

  AttributeTypeDetail _detail() {
    switch (type) {
      case 'TextField':
        return const AttributeTypeDetail.text();
      case 'DateField':
        return AttributeTypeDetail.date(searchType: searchType);
      case 'IntField':
        return AttributeTypeDetail.int(searchType: searchType);
      case 'BoolField':
        return const AttributeTypeDetail.bool();
      case 'DecimalField':
        return AttributeTypeDetail.decimal(searchType: searchType);
      case 'DropdownField':
        return AttributeTypeDetail.dropdown(options: options);
      default:
        return const AttributeTypeDetail.unknown();
    }
  }
}
