import 'package:beautiful_forms/builder/form_builder.dart';
import 'package:beautiful_forms/model/form_schema.dart';
import 'package:flutter/material.dart';

FormSchema schema = FormSchema.fromJson({
  'title': 'First Form',
  'primaryColor': 0xff000000,
  'accentColor': 0xfff3cd59,
  'fontFamily1': 'Karla',
  'fontFamily2': 'Roboto',
  'initialRoute': '/',
  'pagesSchemas': [
    {
      'type': 'portrait',
      'name': 'start',
      'route': '/',
      'imageRoute': 'assets/images/logo.png',
      'restaurantName': 'Tasca Galileo',
      'nextRoute': '/name',
      'options': [],
    },
    {
      'type': 'question',
      'inputType': 'string',
      'name': 'name',
      'route': '/name',
      'question': '¿Cuál es tu nombre?',
      'options': [],
      'text': 'Introduce tu nombre y apellidos',
      'accentColor': 0xfff3cd59,
      'nextRoute': '/telefono'
    },
    {
      'type': 'question',
      'inputType': 'number',
      'name': 'telefono',
      'route': '/telefono',
      'question': 'Nosotros te avisamos',
      'options': [],
      'text': 'Introduce tu número de teléfono',
      'accentColor': 0xfff3cd59,
      'nextRoute': '/personas'
    },
    {
      'type': 'question',
      'inputType': 'number',
      'name': 'personas',
      'route': '/personas',
      'question': '¿Cuántos sois?',
      'options': [],
      'text': 'Dinos el tamaño de la mesa',
      'accentColor': 0xfff3cd59,
      'nextRoute': '/zona'
    },
    {
      'type': 'options',
      'inputType': 'string',
      'name': 'zona',
      'route': '/zona',
      'question': '¿Dónde quieres comer?',
      'options': [
        {'text': 'terraza', 'value': 'outdoor'},
        {'text': 'interior', 'value': 'indoor'},
        {'text': 'indiferente', 'value': 'no-preference'},
      ],
      'accentColor': 0xfff3cd59,
    },
    {
      'type': 'options',
      'inputType': 'string',
      'name': 'zona',
      'route': '/zona',
      'question': '¿Dónde quieres comer?',
      'options': [
        {'text': 'comer', 'value': 'outdoor'},
        {'text': 'tomar algo', 'value': 'indoor'},
        {'text': 'copeo', 'value': 'indoor'},
      ],
      'accentColor': 0xfff3cd59,
    }
  ],
});

Future<void> main() async {
  runApp(FormBuilder.fromSchema(schema));
}

// TODO añadir validación
// TODO añadir envio de formularios
// TODO all specific conf to an object call portrait params and we validate it in the builder
