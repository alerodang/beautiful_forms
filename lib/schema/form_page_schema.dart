import 'package:json_annotation/json_annotation.dart';

part 'form_page_schema.g.dart';

@JsonSerializable(nullable: false)
class FormPageSchema {
  final String name;
  final String route;

  FormPageSchema({this.route, this.name});

  factory FormPageSchema.fromJson(Map<String, dynamic> json) => _$FormPageSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$FormPageSchemaToJson(this);
}
