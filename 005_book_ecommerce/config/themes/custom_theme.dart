import 'package:flutter/material.dart';
import 'custom_color_scheme.dart';

final class CustomTheme {
  ThemeData get lightThemeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.lightColorScheme,
      );

  ThemeData get darkThemeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.darkColorScheme,
      );
}
