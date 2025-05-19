import 'package:flutter/material.dart';

ThemeData themeApp = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
  appBarTheme: AppBarTheme(
      backgroundColor: Colors.orange,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 32, color: Colors.black)),
  useMaterial3: true,
);
