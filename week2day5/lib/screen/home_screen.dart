import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        foregroundColor: Colors.redAccent,
        title: Text("asdf ",
        style: TextStyle(
          fontSize: 20,
        ),),
      ),
    );
  }
}
