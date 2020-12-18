import 'package:beautiful_forms/builder/form_builder.dart';
import 'package:beautiful_forms/schema/form_schema.dart';
import 'package:flutter/material.dart';

FormSchema schema = FormSchema.fromJson({
  'title': 'First Form',
  'primaryColor': 0xff000000,
  'accentColor': 0xffffeD00,
  'fontFamily1': 'Karla',
  'fontFamily2': 'Roboto',
  'initialRoute': '/',
  'pagesSchemas': [
    {
      'type': 'portrait',
      'name': 'start',
      'route': '/',
//TODO all specific conf to an object call portrait params and we validate it in the builder
      'imageRoute': 'assets/images/logo.png',
      'restaurantName': 'Tasca Galileo',
      'nextRoute': '/name'
    },
    {
      'type': 'question',
      'inputType': 'string',
      'name': 'name',
      'route': '/name',
      'question': '¿Cuál es tu nombre?',
      'text': 'Introduce tu nombre y apellidos',
      'accentColor': 0xffffeD00,
      'nextRoute': '/telefono'
    },
    {
      'type': 'question',
      'inputType': 'number',
      'name': 'telefono',
      'route': '/telefono',
      'question': 'Nosotros te avisamos',
      'text': 'Introduce tu número de teléfono',
      'accentColor': 0xffffeD00,
      'nextRoute': '/personas'
    },
    {
      'type': 'question',
      'inputType': 'number',
      'name': 'personas',
      'route': '/personas',
      'question': '¿Cuantos sois?',
      'text': 'Dinos el tamaño de la mesa',
      'accentColor': 0xffffeD00,
    }
  ],
});

Future<void> main() async {
  runApp(FormBuilder.fromSchema(schema));
}

// TODO añadir validación
// TODO añadir envio de formularios