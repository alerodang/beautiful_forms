library beautiful_forms;

import 'package:beautiful_forms/builder/routes_builder.dart';
import 'package:beautiful_forms/schema/form_schema.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Form extends StatelessWidget {
  final FormSchema schema;

  Form(this.schema);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: schema.title,
      theme: ThemeData(
        accentColor: Color(schema.accentColor),
        primaryColor: Color(schema.primaryColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline1:  GoogleFonts.getFont(schema.fontFamily1, color: Colors.white),
          bodyText1: GoogleFonts.getFont(schema.fontFamily2, color: Colors.white, fontSize: 24),
          bodyText2: GoogleFonts.getFont(schema.fontFamily1, color: Colors.white70, fontSize: 20, height: 1.3),
          button: GoogleFonts.getFont(schema.fontFamily2, color: Color(schema.primaryColor), fontWeight: FontWeight.w500, fontSize: 18),
        ),
        buttonColor: Color(schema.accentColor),
      ),
      routes: RoutesBuilder.buildRoutes(context, schema),
      initialRoute: schema.initialRoute,
    );
  }
}
