import 'package:flutter/material.dart';

///@main.dart:
///@author
///@since
///@

class Player{
  String name;
  Player({required this.name});
}

void main() {
  var dk=Player(
    name:"dk",
  );
  runApp(MyApp());

}


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text("hello flutter"
         ),
       ),
       body: Center(
         child: Text("hello world"),
       ),
     ),
   );
  }
}
