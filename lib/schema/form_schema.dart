library beautiful_forms;

import 'package:beautiful_forms/schema/form_page_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'form_schema.g.dart';

@JsonSerializable(nullable: false)
class FormSchema {
  final int accentColor;
  final String fontFamily;
  final String initialRoute;
  final List<FormPageSchema> pagesSchemas;
  final int primaryColor;
  final String title;

  FormSchema(
      {this.accentColor,
      this.fontFamily,
      this.initialRoute,
      this.pagesSchemas,
      this.primaryColor,
      this.title});

  factory FormSchema.fromJson(Map<String, dynamic> json) =>
      _$FormSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$FormSchemaToJson(this);
}
