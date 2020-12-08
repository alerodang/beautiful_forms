// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_page_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormPageSchema _$FormPageSchemaFromJson(Map<String, dynamic> json) {
  return FormPageSchema(
    question: json['question'] as String,
    imageRoute: json['imageRoute'] as String,
    text: json['text'] as String,
    name: json['name'] as String,
    nextRoute: json['nextRoute'] as String,
    restaurantName: json['restaurantName'] as String,
    route: json['route'] as String,
    type: json['type'] as String,
    accentColor: json['accentColor'] as int,
  );
}

Map<String, dynamic> _$FormPageSchemaToJson(FormPageSchema instance) =>
    <String, dynamic>{
      'imageRoute': instance.imageRoute,
      'type': instance.type,
      'name': instance.name,
      'text': instance.text,
      'restaurantName': instance.restaurantName,
      'route': instance.route,
      'question': instance.question,
      'nextRoute': instance.nextRoute,
      'accentColor': instance.accentColor,
    };
