import 'package:flutter/material.dart';

class myThemeData {
  static const Color blackColor = Color.fromRGBO(36, 36, 36, 1.0);
  static const Color goldColor = Color.fromRGBO(183, 147, 95, 1.0);

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: blackColor, fontSize: 30, fontWeight: FontWeight.bold),
        headline2: TextStyle(fontSize: 20, color: blackColor),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: goldColor,
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
      ));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          centerTitle: true, color: Colors.transparent, elevation: 0));
}
