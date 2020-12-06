import 'package:beautiful_forms/builder/form_builder.dart';
import 'package:beautiful_forms/schema/form_schema.dart';
import 'package:flutter/material.dart';

FormSchema schema = FormSchema.fromJson({
  'accentColor': 0xfff3cd58,
  'fontFamily': 'Roboto',
  'initialRoute': '/',
  'pagesSchemas': [
    {'name': 'start', 'route': '/'},
    {'name': 'data', 'route': '/data'}
  ],
  'primaryColor': 0xff000000,
  'title': 'First Form'
});

Future<void> main() async {
  runApp(FormBuilder.fromSchema(schema));
}
