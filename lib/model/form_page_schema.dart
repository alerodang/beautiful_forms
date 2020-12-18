import 'package:beautiful_forms/model/option.dart';
import 'package:json_annotation/json_annotation.dart';

part 'form_page_schema.g.dart';

@JsonSerializable(nullable: false)
class FormPageSchema {
  final String imageRoute;
  final String type;   // TODO to enum
  final String name;
  @JsonSerializable(nullable: true)
  final List<Option> options;
  @JsonSerializable(nullable: true)
  final String inputType;
  @JsonSerializable(nullable: true)
  final String text;
  @JsonSerializable(nullable: true)
  final String restaurantName;
  @JsonSerializable(nullable: true)
  final String route;
  @JsonSerializable(nullable: true)
  final String question;
  @JsonSerializable(nullable: true)
  final String nextRoute;
  @JsonSerializable(nullable: true)
  final int accentColor;

  FormPageSchema({
    this.question,
    this.imageRoute,
    this.inputType,
    this.options,
    this.text,
    this.name,
    this.nextRoute,
    this.restaurantName,
    this.route,
    this.type,
    this.accentColor,
  });

  factory FormPageSchema.fromJson(Map<String, dynamic> json) =>
      _$FormPageSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$FormPageSchemaToJson(this);
}
