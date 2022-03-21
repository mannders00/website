import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebTheme {
  
  static const blackBlue = Color(0xff181a1f);
  static var theme = ThemeData(
    fontFamily: GoogleFonts.inconsolata().fontFamily,
    canvasColor: blackBlue,
    appBarTheme: const AppBarTheme(
      color: Colors.white10
    )
  );
  
}