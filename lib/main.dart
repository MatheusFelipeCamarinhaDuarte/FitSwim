import 'package:fit_swim/app/app.dart';
import 'package:fit_swim/app/theme/app_theme.dart';
import 'package:fit_swim/features/login/presentation/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fit Swim',
      theme: themeApp,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
