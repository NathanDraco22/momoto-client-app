import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getLightTheme() => ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(toolbarHeight: 48),
    cardTheme: CardThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
    ),
  );
}
