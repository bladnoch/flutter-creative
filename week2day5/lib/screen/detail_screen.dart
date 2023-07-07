import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String image, title, id;

  DetailScreen({
    super.key,
    required this.image,
    required this.title,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Container(
          alignment: Alignment.centerLeft,
          child: Text("Back to list",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Flexible(
              flex: 3,
              child:Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child:  Text("title here",),

              ),
          ),
          Flexible(
            flex: 1,
            child:Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child:  Text("rate here",),

            ),
          ),
          Flexible(
            flex: 1,
            child:Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              child:  Text("hours | genre",),

            ),
          ),
          Flexible(
            flex: 1,
            child:Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child:  Text("Storyline",),

            ),
          ),
          Flexible(
            flex: 1,
            child:Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              child:  Text("storyline here",),

            ),
          ),
          // Container(
          //   color: Colors.deepPurpleAccent,
          //
          //     child: Text("title here"
          //     ),
          // ),
          //
          // Container(
          //   color: Colors.green,
          //     height: 40,
          //     child: Text("rate here"
          //     ),
          // ),
          // Container(
          //   color: Colors.redAccent,
          //   height: 40,
          //     child: Text("total hours | genre here"
          //     ),
          // ),
          // Text("Storyline"),
          // Container(
          //   color: Colors.lightBlue,
          //   height: 200,
          //     child: Text("storyline here"),
          // ),
          // Container(
          //   height: 80,
          //   width: 200,
          //   decoration: BoxDecoration(
          //     color: Colors.amber,
          //   ),
          //     child: Center(
          //         child: Text(
          //             "Buy ticket"),
          //     ),
          // ),
        ],
      ),
    );
  }
}
