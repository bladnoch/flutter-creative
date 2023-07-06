import 'package:flutter/material.dart';
import 'package:week2day4/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFF02343F
          ),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF02343F),
          ),
        ),
        cardColor: const Color(0xFFF0EDCC),
      ),
      home: HomeScreen(),
      );
  }
}
