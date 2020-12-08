// GENERATED CODE - DO NOT MODIFY BY HAND

part of beautiful_forms;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormSchema _$FormSchemaFromJson(Map<String, dynamic> json) {
  return FormSchema(
    accentColor: json['accentColor'] as int,
    fontFamily1: json['fontFamily1'] as String,
    fontFamily2: json['fontFamily2'] as String,
    initialRoute: json['initialRoute'] as String,
    pagesSchemas: (json['pagesSchemas'] as List)
        .map((e) => FormPageSchema.fromJson(e as Map<String, dynamic>))
        .toList(),
    primaryColor: json['primaryColor'] as int,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$FormSchemaToJson(FormSchema instance) =>
    <String, dynamic>{
      'accentColor': instance.accentColor,
      'fontFamily1': instance.fontFamily1,
      'fontFamily2': instance.fontFamily2,
      'initialRoute': instance.initialRoute,
      'pagesSchemas': instance.pagesSchemas,
      'primaryColor': instance.primaryColor,
      'title': instance.title,
    };
