import 'package:beautiful_forms/builder/form_builder.dart';
import 'package:beautiful_forms/model/form_schema.dart';
import 'package:flutter/material.dart';

FormSchema schema = FormSchema.fromJson({
  "title": "Foo From",
  "color1": 0xff000000,
  "color2": 0xfff3cd59,
  "fontFamily1": "Karla",
  "fontFamily2": "Roboto",
  "initialPage": "portada",
  "pagesSchemas": [
    {
      "type": "PortraitPageSchema",
      "data": {
        "name": "portada",
        "text": "", // TODO
        "restaurantName": "Tasca Galileo",
        "nextPage": "nombre",
      },
    },
    {
      "type": "StringFieldInputPageSchema",
      "data": {
        "inputType": "string",
        "name": "nombre",
        "question": "¿Cuál es tu nombre?",
        "text": "Introduce tu nombre y apellidos",
        "nextPage": "tamaño-de-mesa",
      }
    },
    {
      "type": "NumberFieldInputPageSchema",
      "data": {
        "inputType": "number",
        "name": "tamaño-de-mesa",
        "question": "¿Cuántos sois?",
        "text": "Selecciona el tamaño de la mesa",
        "nextPage": "zona",
      }
    },
    {
      "type": "OptionInputPageSchema",
      "data": {
        "inputType": "string",
        "name": "zona",
        "question": "¿Dónde quieres comer?",
        "text": 'Elige una opción',
        "options": [
          {"text": "comer", "value": "outdoor"},
          {"text": "tomar algo", "value": "indoor"},
          {"text": "copeo", "value": "indoor"}
        ],
        "accentColor": "0xfff3cd59"
      }
    }
  ]
});

Future<void> main() async {
  runApp(FormBuilder.fromSchema(schema));
}

// TODO añadir validación
// TODO añadir envio de formularios
// TODO all specific conf to an object call portrait params and we validate it in the builder
