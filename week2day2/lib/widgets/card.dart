import 'package:flutter/material.dart';


/// card.dart: three button part cards
/// @author doungukkim
/// @since 7/4/2023
/// @version v0.0.1

class ThreeCards extends StatelessWidget{

  /// @topic : main topic of plan
  /// @date : start, end date
  /// @people : people who involved
  /// @color : card color  ex) Colors.yellow

  final List<String> date, topic, people;
  final color;

  /// Constructor
  /// get topic, date, people, color
  const ThreeCards({
    super.key,
    required this.topic,
    required this.people,
    required this.date,
    required this.color,
  });

  /// peopleString() method
  /// make single String from people list
  peopleString(people){
    var temp="";
    for(int i=0;i<people.length;i++){
      temp+=people[i]+"      ";
    }
    return temp;
  }


  @override
  Widget build(BuildContext context) {

    /// card design
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(40),
          ),
          ///materials in card
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
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

                          ///starting month
                          Text(date[0],
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          ///starting date
                          Text(date[1],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text("|",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          ///end month
                          Text(date[2],
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          ///end date
                          Text(date[3],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Design Meeting
                          Text(topic[0].toUpperCase(),
                            style: const TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          Text(topic[1].toUpperCase(),
                            style: const TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 20,),

                          Text(peopleString(people).toUpperCase(), //uppercase
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
      ),
    );

  }


}