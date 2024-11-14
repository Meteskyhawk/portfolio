import 'package:flutter/material.dart';

final appTheme = ThemeData(
  fontFamily: 'Monospace',
  primaryColor: Colors.green[500],
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.green,
    accentColor: Colors.green[500],
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Colors.green,
      fontSize: 48.0,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: Colors.green,
      fontSize: 36.0,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      color: Colors.green,
      fontSize: 18.0,
    ),
  ),
);
