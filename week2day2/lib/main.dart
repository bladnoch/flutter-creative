import 'package:flutter/material.dart';
import 'package:week_two_day_two/widgets/card.dart';

/// main.dart: UI Clone coding
/// @author doungukkim
/// @since 7/4/2023
/// @version v0.0.1

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext){
    return MaterialApp(
      home: Scaffold(
        ///bqckground color
        backgroundColor: Color(0x101820),
        body:Column(
          children: [
            SizedBox(height: 60,),

            ///photo image, +
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    ///profile image
                    child: Image.asset('assets/photos/profile.jpg',
                      width: 60,
                      height: 60,),
                  ),
                  Text("+",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),

            /// MONDAY 16
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
              children: [
                Text("MONDAY 16",
                  style: TextStyle( color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),

            ///TODAY, *, 17 18 19 20 21...
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [

                      /// Text : TODAY
                      Text("TODAY ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      /// Icon : circle
                      Icon(Icons.circle,
                        color: Colors.pink,
                        size: 15,),

                      ///Text : 17 18 19...
                      Text(" 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 46,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),

            ///cards
            Column(
              children: [
                ThreeCards(
                    date: ["11","30","12","20"],
                    topic: ["DESIGN","MEETING"],
                    people: ["alex","helena","Jack",],
                    color:Colors.yellow[400],
                ),
                SizedBox(height: 10,),

                ThreeCards(
                  date: ["12","35","14","10"],
                  topic: ["daily","project"],
                  people: ["me","richard","ciry","+4"],
                  color:Colors.deepPurple[400],
                ),
                SizedBox(height: 50,),

                ThreeCards(
                  date: ["15","00","16","30"],
                  topic: ["weekly","planning"],
                  people: ["den","nana","mark",],
                  color:Colors.lightGreen,
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
