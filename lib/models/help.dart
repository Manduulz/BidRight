import 'package:json_annotation/json_annotation.dart';

part 'help.g.dart';

@JsonSerializable(createToJson: false)
class HelpResource {
  final int id;
  final String title;
  final String description;
  final String? link;

  const HelpResource(this.id, this.title, this.description, this.link);

  factory HelpResource.fromJson(Map<String, dynamic> json) =>
      _$HelpResourceFromJson(json);
}