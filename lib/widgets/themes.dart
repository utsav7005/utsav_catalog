import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primaryColor: Mytheme.darkBluishColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
      snackBarTheme: SnackBarThemeData(
        actionTextColor: Mytheme.darkBluishColor,
        backgroundColor: Mytheme.darkBluishColor,
      ),
      listTileTheme: ListTileThemeData(
        textColor: Mytheme.darkBluishColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Mytheme.darkBluishColor),
          foregroundColor: MaterialStateProperty.all(Mytheme.creamColor),
          // You can add more button styles as needed
        ),
      ),
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonTheme: ButtonThemeData(buttonColor: Mytheme.darkBluishColor),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Mytheme.darkBluishColor,
          foregroundColor: Mytheme.creamColor),
      iconTheme: IconThemeData(color: Mytheme.darkBluishColor),
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Mytheme.darkBluishColor, size: 32),
        titleTextStyle: GoogleFonts.poppins(
          color: Mytheme.darkBluishColor,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        primaryColor: Colors.lightBlueAccent,
        fontFamily: GoogleFonts.poppins().fontFamily,
        snackBarTheme: SnackBarThemeData(
          actionTextColor: Mytheme.darkYellowishColor,
          backgroundColor: Mytheme.darkYellowishColor,
        ),
        listTileTheme: ListTileThemeData(
          textColor: Mytheme.creamColor,
          iconColor: Mytheme.darkBluishColor,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Mytheme.darkYellowishColor),
            foregroundColor: MaterialStateProperty.all(Mytheme.darkBluishColor),
            // You can add more button styles as needed
          ),
        ),
        cardColor: Mytheme.darkcreamColor,
        canvasColor: darkdarkcreamColor,
        buttonTheme: ButtonThemeData(buttonColor: Mytheme.darkYellowishColor),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Mytheme.darkYellowishColor,
            foregroundColor: Mytheme.darkBluishColor),
        iconTheme: IconThemeData(color: Mytheme.darkBluishColor),
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Mytheme.darkYellowishColor, size: 32),
          titleTextStyle: GoogleFonts.poppins(
            color: Mytheme.darkYellowishColor,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkcreamColor = Color.fromARGB(255, 44, 44, 47);
  static Color darkdarkcreamColor = Color.fromARGB(255, 27, 27, 29);
  static Color darkBluishColor = const Color(0xff403b58);
  static Color darkYellowishColor = const Color.fromARGB(255, 254, 202, 40);
  static Color lightBluishColor = const Color.fromARGB(255, 25, 115, 232);
}
