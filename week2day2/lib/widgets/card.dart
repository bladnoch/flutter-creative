

import 'package:flutter/material.dart';

class Card extends StatelessWidget{
  
  final List<String> date, topic, people;
  final color;

  const Card({super.key,
    required this.topic,
    required this.people,
    required this.date,
    required this.color});

  peopleString(people){
    var temp="";
    for(int i=0;i<people.length;i++){
      temp+=people[i]+"      ";
    }
    return temp;
  }
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// 날짜
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      textDirection: TextDirection.ltr,
                      children: [
                        Text(date[0],
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(date[1],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text("|",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(date[2],
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(date[3],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Design Meeting
                        Text(topic[0],
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Text(topic[1],
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20,),

                        Text(peopleString(people).toUpperCase(),
                          style:
                          TextStyle(
                              fontSize: 18,
                              color: Colors.black87.withOpacity(0.6),
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

  }


}