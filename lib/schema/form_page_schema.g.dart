// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_page_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormPageSchema _$FormPageSchemaFromJson(Map<String, dynamic> json) {
  return FormPageSchema(
    route: json['route'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$FormPageSchemaToJson(FormPageSchema instance) =>
    <String, dynamic>{
      'name': instance.name,
      'route': instance.route,
    };
