import 'package:fc_12_bmi/home_screen.dart';
import 'package:fc_12_bmi/result_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff0A0D22),
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 14, 18, 48),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
