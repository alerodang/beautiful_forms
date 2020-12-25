import 'dart:convert';

import 'package:beautiful_forms/builder/form_builder.dart';
import 'package:beautiful_forms/widgets/providers/form_fields_notifier_provider.dart';

import 'package:beautiful_forms/model/form_schema.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/services/QueueService.dart';

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

Function onSubmit = (Map<String, dynamic> formattedData) async => {await QueueService.createSubscription('YumYum', {
  "subscription": {
    "consumedAt": null,
    "customer": {"contactData": {}},
    "deletedAt": null,
    "restaurantName": "YumYum",
    "restaurant": {
      "owner": {
        "name": "Ale",
        "contactData": {
          "email": "alerodriguezangulo@gmail.com",
          "phoneNumber": "650021010"
        }
      },
      "messages": [
        {
          "name": "Es tu turno",
          "text":
          "En breve será tu turno, te recomendamos que te vayas acercando"
        }
      ],
      "location": "location",
      "filters": [
        {
          "name": "Localización",
          "options": [
            "interior",
            "exterior",
          ]
        }
      ],
      "restaurantName": "YumYum"
    },
    "tags": [
      {"name": "zone"},
      {"name": "type"}
    ],
    "subscribedAt": "20201222133342",
    "uniqueId": "84615f77-06cc-43b7-9a76-b5361925837b"
  }
})};

Future<void> main() async {
  FormFieldsNotifierProvider queueSubscriptionProvider = FormFieldsNotifierProvider(schema.pagesSchemas, onSubmit);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => queueSubscriptionProvider),
      ],
      child: FormBuilder.fromSchema(
        schema,
      ),
    ),
  );
}
