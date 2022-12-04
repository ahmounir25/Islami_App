import 'package:flutter/material.dart';
import 'package:islami_me/Home/HomeScreen.dart';
import 'package:islami_me/themes/myThemeData.dart';

void main() {
  runApp(MaterialApp(
    routes: {HomeScreen.routeName:(context) => HomeScreen()},
    initialRoute:HomeScreen.routeName ,
    debugShowCheckedModeBanner: false,
    theme: myThemeData.lightTheme,
    darkTheme: myThemeData.darkTheme,
    themeMode:ThemeMode.light ,
  ));
}

