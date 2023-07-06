import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 20),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text('POMOTIMER',
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Center(
              child: Container(
                child: Text(
                  "25:00",
                  style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 80,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Center(
              // child: IconButton(
              //   icon: Icon(Icons.play_circle_fill_outlined),
              ),
          ),
          // ),
          Flexible(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
