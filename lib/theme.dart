import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider {
  static ThemeData getThemeData({
    required int primaryColor,
    required int secondaryColor,
    required String fontFamily1,
    required String fontFamily2,
  }) {
    return ThemeData(
      hintColor: Color(secondaryColor),
      primaryColor: Color(primaryColor),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.getFont(fontFamily1, color: Colors.white),
        bodyLarge:
            GoogleFonts.getFont(fontFamily2, color: Colors.white, fontSize: 24),
        bodyMedium: GoogleFonts.getFont(fontFamily1,
            color: Colors.white70, fontSize: 20, height: 1.3),
        labelLarge: GoogleFonts.getFont(
          fontFamily2,
          color: Color(primaryColor),
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
    );
  }
}
