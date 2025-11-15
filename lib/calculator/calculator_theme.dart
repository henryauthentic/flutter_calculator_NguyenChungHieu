import 'package:flutter/material.dart';

ThemeData buildLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.grey[200],
    primaryColor: const Color(0xFF2D3142),
    fontFamily: 'Roboto',
  );
}

ThemeData buildDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF2D3142),
    primaryColor: const Color(0xFF2D3142),
    fontFamily: 'Roboto',
  );
}
