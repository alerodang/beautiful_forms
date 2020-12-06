library beautiful_forms;

import 'package:beautiful_forms/builder/routes_builder.dart';
import 'package:beautiful_forms/schema/form_schema.dart';
import 'package:flutter/material.dart';

class Form extends StatelessWidget {
  final FormSchema schema;

  Form(this.schema);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: schema.title,
      theme: ThemeData(
        accentColor: Color(schema.accentColor),
        fontFamily: schema.fontFamily,
        primaryColor: Color(schema.primaryColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white70),
          button: TextStyle(color: Color(schema.primaryColor), fontSize: 18),
        ),
        buttonColor: Color(schema.accentColor),
      ),
      routes: RoutesBuilder.buildRoutes(context, schema.pagesSchemas),
      initialRoute: schema.initialRoute,
    );
  }
}
