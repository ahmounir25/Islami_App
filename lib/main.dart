import 'package:flutter/material.dart';
import 'package:islami_me/HomeScreen.dart';

void main() {
  runApp(MaterialApp(
    routes: {HomeScreen.routeName:(context) => HomeScreen()},
    initialRoute:HomeScreen.routeName ,
  ));
}

