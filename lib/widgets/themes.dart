import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonTheme: ButtonThemeData(buttonColor: Colors.amber),
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkcreamColor,
      buttonTheme: ButtonThemeData(buttonColor: Colors.amber),
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black),
      ));
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkcreamColor = const Color.fromARGB(255, 38, 38, 39);
  static Color darkBluishColor = const Color(0xff403b58);
  static Color lightBluishColor = const Color.fromARGB(255, 141, 134, 176);
}
