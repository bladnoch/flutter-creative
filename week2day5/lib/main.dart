import 'package:flutter/material.dart';
import 'package:week2day5/screen/home_screen.dart';

/// main.dart
/// @author doungukkim
/// @since 7/7/2023
/// @version v0.0.1

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}


