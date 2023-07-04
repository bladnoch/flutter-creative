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
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
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

            SizedBox(height: 30,),
            Row(
              children: [
                Text("MONDAY 16",
                  style: TextStyle( color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text("TODAY ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(Icons.circle,
                    color: Colors.pink,
                    size: 15,),

                    Text(" 17  18  19  20",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 48,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
