import 'package:flutter/material.dart';

class PracTheme {
  static final ThemeData customTheme = ThemeData.dark().copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple.shade600,
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 24),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))))),
      appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: Colors.deepPurple.shade700,
          titleTextStyle:
              const TextStyle().copyWith(fontSize: 28, letterSpacing: 2)),
      iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
              backgroundColor: Colors.deepPurple.shade600,
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))))));
}
