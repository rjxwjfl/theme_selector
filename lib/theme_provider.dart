import 'package:dartpad/theme_palette.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  late ColorScheme _colorScheme;

  ThemeProvider() {
    _colorScheme = themeSwitcher(1, 0);
  }

  get colorScheme => _colorScheme;

  themeSwitcher(int mode, int value) {
    if (mode == 1) {
      switch (value) {
        case 0:
          return lightPurpleTheme;
        case 25:
          return lightAmberScheme;
        case 50:
          return lightPinkScheme;
        case 75:
          return lightPaleScheme;
        case 100:
          return lightWoodScheme;
        default:
          return lightPurpleTheme;
      }
    }
    if (mode == 2){
      switch (value) {
        case 0:
          return darkPurpleTheme;
        case 25:
          return darkAmberScheme;
        case 50:
          return darkPinkScheme;
        case 75:
          return darkPaleScheme;
        case 100:
          return darkWoodScheme;
        default:
          return darkPurpleTheme;
      }
    }
  }

  void themeSelector(double value, bool isDarkMode) {
    int convertNum = value.round();
    _colorScheme = themeSwitcher(modeSwitcher(isDarkMode), convertNum);
    notifyListeners();
  }

  modeSwitcher(bool isDarkMode) {
    switch (isDarkMode) {
      case false:
        return 1;
      case true:
        return 2;
      default:
        return 1;
    }
  }
}
