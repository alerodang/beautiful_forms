library beautiful_forms;

import 'package:beautiful_forms/theme.dart';
import 'package:flutter/material.dart';

import 'builder/routes_builder.dart';
import 'model/page_schema.dart';

class BeautifulForm extends StatelessWidget {
  final String title;
  final int primaryColor;
  final int secondaryColor;
  final String fontFamily1;
  final String fontFamily2;
  final String initialPage;
  final List<FormPageSchema> pagesSchemas;

  BeautifulForm({
    required this.title,
    required this.primaryColor,
    required this.secondaryColor,
    required this.fontFamily1,
    required this.fontFamily2,
    required this.initialPage,
    required this.pagesSchemas,
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
