import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> num=[];

  void onClicked(){
    setState(() {
      num.add(num.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("click count",style: (TextStyle(fontSize: 30)),),
              for(var n in num) Text("$n"),
              IconButton(iconSize: 40, onPressed: onClicked, icon: Icon(Icons.add_box_rounded),),
            ],
          ),
        ),
      ),
    );
  }
}
