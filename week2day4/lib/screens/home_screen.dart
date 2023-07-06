import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int totalSeconds=1500;
  bool isRunning = false;
  int round=0;
  int goal=0;
  late Timer timer;



  void onTick(Timer timer){
    setState(() {
      totalSeconds=totalSeconds-1;
    });
  }

  void onStartPressed(){
    timer=Timer.periodic(Duration(seconds: 1), onTick,);
    setState(() {
      isRunning=true;
    });
  }

  void onPausePressed(){
    timer.cancel();
    setState(() {
      isRunning=false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        children: [

          ///pomotimer
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

          ///timer
          Flexible(
            flex: 2,
            child: Center(
              child: Container(
                child: Text(
                  "$totalSeconds",
                  style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 80,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),

          ///time selecter
          Flexible(
            flex: 1,
            child: Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextButton(
                        onPressed: fifteenMin,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('15',
                            style: TextStyle(
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Theme.of(context).cardColor,
                          textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,),
                      child: TextButton(
                        onPressed: twentyMin,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('20',
                            style: TextStyle(
                              color: Colors.redAccent,
                            ),),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Theme.of(context).cardColor,
                          textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextButton(
                        onPressed: twentyFiveMin,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text('25',
                            style: TextStyle(
                              color: Colors.redAccent,
                            ),),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Theme.of(context).cardColor,
                          textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextButton(
                        onPressed: thirtyMin,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text('30',
                            style: TextStyle(
                              color: Colors.redAccent,
                            ),),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Theme.of(context).cardColor,
                          textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,),
                      child: TextButton(
                        onPressed: thirtyFiveMin,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text('35',
                            style: TextStyle(
                              color: Colors.redAccent,
                            ),),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Theme.of(context).cardColor,
                          textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// button
          Flexible(
            flex: 2,
            child: Center(
              child: IconButton(
                iconSize: 110,
                color: Theme.of(context).cardColor,
                onPressed: isRunning ? onPausePressed: onStartPressed,
                icon: Icon(
                    isRunning ? Icons.pause_circle_filled_outlined: Icons.play_circle_fill_outlined,
                ),
              ),
            ),
          ),

          /// round, goal
          Flexible(
            flex: 2,
            child: Container(
              child: Row(
              children: [

                ///round
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${round} / 4",
                          style: TextStyle(
                            color: Theme.of(context).cardColor.withOpacity(0.6),
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text("ROUND",
                          style: TextStyle(
                            color: Theme.of(context).cardColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),),
                      ],
                    ),
                  ),
                ),

                ///goal
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${goal} / 12",
                          style: TextStyle(
                            color: Theme.of(context).cardColor.withOpacity(0.6),
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text("GOAL",
                          style: TextStyle(
                            color: Theme.of(context).cardColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void thirtyFiveMin(){
    setState(() {
      totalSeconds=3500;
      onPausePressed();
    });
  }

  void thirtyMin(){
    setState(() {
      totalSeconds=3000;
      onPausePressed();
    });
  }

  void twentyFiveMin(){
    setState(() {
      totalSeconds=2500;
      onPausePressed();
    });
  }

  void twentyMin(){
    setState(() {
      totalSeconds=2000;
      onPausePressed();
    });
  }

  void fifteenMin(){
    setState(() {
      totalSeconds=1500;
      onPausePressed();
    });
  }
}
