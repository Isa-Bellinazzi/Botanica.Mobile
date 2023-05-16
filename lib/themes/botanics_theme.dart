import 'package:flutter/material.dart';

import 'colors_theme.dart';

ThemeData myTheme = ThemeData(
  primarySwatch: ColorsTheme.primaryColor,
  primaryColor: ColorsTheme.primaryColor,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
  ),
);
