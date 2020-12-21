library beautiful_forms;

import 'package:beautiful_forms/builder/routes_builder.dart';
import 'package:beautiful_forms/model/page_schema.dart';
import 'package:beautiful_forms/theme.dart';
import 'package:flutter/material.dart';

class Form extends StatelessWidget {
  final String title;
  final int primaryColor;
  final int secondaryColor;
  final String fontFamily1;
  final String fontFamily2;
  final String initialPage;
  final List<FormPageSchema> pagesSchemas;

  Form({
    this.title,
    this.primaryColor,
    this.secondaryColor,
    this.fontFamily1,
    this.fontFamily2,
    this.initialPage,
    this.pagesSchemas,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeProvider.getThemeData(
          primaryColor: primaryColor,
          secondaryColor: secondaryColor,
          fontFamily1: fontFamily1,
          fontFamily2: fontFamily2),
      routes: RoutesBuilder.buildRoutes(context, pagesSchemas),
      initialRoute: '/$initialPage',
    );
  }
}
