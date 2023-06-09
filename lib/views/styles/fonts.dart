

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFonts {
  static TextStyle manrope({
    required double fontSize,
    FontWeight? fontWeight,
    required Color color,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  
    // Corrected property name

  }) {
    return GoogleFonts.manrope(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
     
     // Corrected property name
    );
  }
}


