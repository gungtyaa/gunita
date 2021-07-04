import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData themeData = ThemeData(
  primaryColor: Color(0xFFF7F8F9),
  accentColor: Color(0xFF7848F4),
  textTheme: TextTheme(
    headline1: GoogleFonts.cabin(
        fontSize: 104, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.cabin(
        fontSize: 65, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.cabin(fontSize: 52, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.cabin(
        fontSize: 37, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headline5: GoogleFonts.cabin(fontSize: 26, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.cabin(
        fontSize: 22, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.cabin(
        fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.cabin(
        fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.roboto(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.roboto(
        fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.roboto(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  ),
);
