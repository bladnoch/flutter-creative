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
  bool showTitle =true;

  void toggle(){
    setState(() {
      showTitle=!showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: Colors.redAccent[200],
          )
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? Title() : Text("nothing"),
              IconButton(onPressed: toggle, icon: Icon(Icons.remove_red_eye),),
            ],
          ),
        ),
      ),
    );
  }
}


class Title extends StatefulWidget {
  const Title({
    super.key,
  });

  @override
  State<Title> createState() => _TitleState();
}

class _TitleState extends State<Title> {

  @override
  void initState(){
    super.initState();
    print("hello");
  }

  @override
  void dispose(){
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Text("Title here",
      style: (
          TextStyle(
              fontSize: 30
          )
      ),
    );
  }
}
