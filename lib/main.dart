import 'package:flutter/material.dart';
import 'package:islami_me/Home/HomeScreen.dart';
import 'package:islami_me/tabs/Ahadeth/hadethDetails.dart';
import 'package:islami_me/tabs/Quran/suraDetails.dart';
import 'package:islami_me/themes/myThemeData.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      HomeScreen.routeName: (context) => HomeScreen(),
      suraDetails.routeName: (context) => suraDetails(),
      hadethDetails.routeName:(context) => hadethDetails(),
    },
    initialRoute: HomeScreen.routeName,
    debugShowCheckedModeBanner: false,
    theme: myThemeData.lightTheme,
    darkTheme: myThemeData.darkTheme,
    themeMode: ThemeMode.light,
  ));
}
