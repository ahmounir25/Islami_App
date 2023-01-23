import 'package:flutter/material.dart';

class myProvider extends ChangeNotifier {
  String language = 'en';
  ThemeMode theme = ThemeMode.light;

  void changeLanguage(String langCode) {
    language = langCode;
    notifyListeners();
  }

  void changeTheme(ThemeMode newTheme) {
    theme = newTheme;
    notifyListeners();
  }
}
