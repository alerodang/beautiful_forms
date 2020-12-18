// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Option _$OptionFromJson(Map<String, dynamic> json) {
  return Option(
    text: json['text'] as String,
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };
