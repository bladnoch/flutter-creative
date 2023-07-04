import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
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
                      Text(" 17 18 19 20 21 22 23 24 25 26 27 28 29",
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

          ],
        ),
      ),
    );
  }
}
