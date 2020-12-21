import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider {
  static ThemeData getThemeData({
    int primaryColor,
    int secondaryColor,
    String fontFamily1,
    String fontFamily2,
  }) {
    return ThemeData(
      accentColor: Color(secondaryColor),
      primaryColor: Color(primaryColor),
      backgroundColor: Color(primaryColor),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
        headline1: GoogleFonts.getFont(fontFamily1, color: Colors.white),
        bodyText1:
            GoogleFonts.getFont(fontFamily2, color: Colors.white, fontSize: 24),
        bodyText2: GoogleFonts.getFont(fontFamily1,
            color: Colors.white70, fontSize: 20, height: 1.3),
        button: GoogleFonts.getFont(fontFamily2,
            color: Color(primaryColor),
            fontWeight: FontWeight.w500,
            fontSize: 18),
      ),
    );
  }
}
