import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: Column(
          children: [
            Row(
              children: [
                Text("data1"),
                Text("data2",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
