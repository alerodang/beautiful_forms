import 'package:beautiful_forms/builder/form_builder.dart';
import 'package:beautiful_forms/widgets/providers/form_fields_notifier_provider.dart';

import 'package:beautiful_forms/model/form_schema.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

FormSchema schema = FormSchema.fromJson({
  "title": "Foo From",
  "color1": 0xff000000,
  "color2": 0xfff3cd59,
  "fontFamily1": "Karla",
  "fontFamily2": "Roboto",
  "initialPage": "portrait",
  "pagesSchemas": [
    {
      "type": "PortraitPageSchema",
      "data": {
        "name": "portrait",
        "text": "", // TODO
        "imageRoute": "assets/images/logo.png",
        "restaurantName": "YumYum",
        "nextPage": "name",
        "options": []
      },
    },
    {
      "type": "StringFieldInputPageSchema",
      "data": {
        "inputType": "string",
        "name": "name",
        "question": "¿Cuál es tu nombre?",
        "options": [],
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
        "options": [],
        "text": "Introduce el tamaño de la mesa",
        "nextPage": "phoneNumber",
      }
    },
    {
      "type": "PhoneNumberFieldInputPageSchema",
      "data": {
        "inputType": "phone",
        "name": "phoneNumber",
        "question": "¿Cuál es u número?",
        "options": [],
        "text": "Introduce tu número de teléfono",
        "nextPage": "zone",
      }
    },
    {
      "type": "OptionInputPageSchema",
      "data": {
        "inputType": "string",
        "name": "zone",
        "question": "¿Dónde quieres comer?",
        "text": 'Elige una opción',
        "options": [
          {"text": "mesa", "value": "table"},
          {"text": "barra", "value": "bar"},
        ],
        "nextPage": "type",
      }
    },
    {
      "type": "OptionInputPageSchema",
      "data": {
        "inputType": "string",
        "name": "type",
        "question": "¿Qué vas a hacer?",
        "text": 'Elige una opción',
        "options": [
          {"text": "comer", "value": "eat"},
          {"text": "tomar algo", "value": "drink"},
        ],
        "nextPage": "end",
      }
    },
    {
      "type": "EndPageSchema",
      "data": {
        "restaurantName": "YumYum",
        "inputType": "string",
        "name": "end",
        "text": '¡Muchas gracias!',
      }
    }
  ]
});

Future<void> main() async {
  FormFieldsNotifierProvider queueSubscriptionProvider = FormFieldsNotifierProvider(schema.pagesSchemas);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => queueSubscriptionProvider),
      ],
      child: FormBuilder.fromSchema(schema),
    ),
  );
}
