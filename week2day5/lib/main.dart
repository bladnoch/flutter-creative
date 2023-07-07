import 'package:flutter/material.dart';
import 'package:week2day5/screen/home_screen.dart';
import 'package:week2day5/services/api_service.dart';

void main() {
  // ApiService().getPopularMovies();
  // ApiService().getOnScreenMovies();
  // ApiService().getComingMovies();

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


