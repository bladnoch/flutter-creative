import 'package:flutter/material.dart';
import 'package:week2day5/screen/home_screen.dart';
import 'package:week2day5/services/api_service.dart';

import '../models/movie_detail_model.dart';

/// detail_screen.dart
/// @author doungukkim
/// @since 7/8/2023
/// @version v0.0.1

class DetailScreen extends StatefulWidget {
  final String image, title, id;

  DetailScreen({
    super.key,
    required this.image,
    required this.title,
    required this.id,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  late Future<MovieDetailModel> movie;

  @override
  void initState() {
    super.initState();
    movie=ApiService.getDetail(widget.id);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: FutureBuilder(
        future: movie,
        builder: (context , snapshot){
          if(snapshot.hasData){
            snapshot.data!.poster_path;
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    snapshot.data!.poster_path,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow:[
                      BoxShadow(
                          blurRadius:5,
                          offset: Offset(1,1),
                          color: Colors.black.withOpacity(0.4)
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [

                      SizedBox(height: 36,),

                      ///back to list
                      Flexible(
                        flex: 1,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => HomeScreen() ),);
                            },
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Icon(Icons.arrow_back_ios, color: Colors.white, size: 18,),
                                  Text("back to list",style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize:20,

                                  ),),
                                ],
                              ),
                            ),
                          ),),

                      ///Title
                      Flexible(
                        flex: 6,
                        child:Container(
                          alignment: Alignment.bottomLeft,
                          child: FutureBuilder(
                            future: movie,
                            builder: (context , snapshot){
                              if(snapshot.hasData){
                                return Text(snapshot.data!.title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 30,
                                  ),
                                );
                              }
                              return Text("please...");
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),

                      ///Stars
                      Flexible(
                        flex: 1,
                        child:Container(
                          alignment: Alignment.topLeft,
                          child: FutureBuilder(
                            future: movie,
                            builder: (context , snapshot){
                              if(snapshot.hasData){
                                return Text("${snapshot.data!.vote_average} / 10",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                );
                              }
                              return Text("please...");
                            },
                          ),

                        ),
                      ),
                      SizedBox(height: 10,),

                      ///hrs/genre
                      Flexible(
                        flex: 1,
                        child:Container(
                          alignment: Alignment.topLeft,
                          child:  FutureBuilder(
                            future: movie,
                            builder: (context , snapshot){
                              if(snapshot.hasData){
                                return Text("${snapshot.data!.runtime}min  |  ${snapshot.data!.genres}",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                );
                              }
                              return Text("please...");
                            },
                          ),

                        ),
                      ),

                      ///Storyline
                      Flexible(
                        flex: 2,
                        child:Container(
                          alignment: Alignment.bottomLeft,
                          child:  Text("Storyline",style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),

                      ///Storyline API
                      Flexible(
                        flex: 6,
                        child:Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Container(
                              alignment: Alignment.topLeft,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: FutureBuilder(
                                  future: movie,
                                  builder: (context , snapshot){
                                    if(snapshot.hasData){
                                      return Text(snapshot.data!.overview,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      );
                                    }
                                    return Text("please...");
                                  },
                                ),
                              )


                          ),
                        ),
                      ),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        height: 60,
                        width: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.amber,
                            boxShadow:[
                              BoxShadow(
                                  blurRadius:5,
                                  offset: Offset(2,2),
                                  color: Colors.black.withOpacity(0.4)
                              )
                            ]
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: (){
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Center(
                                  child: Text(
                                    "ticket issued",style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),),
                                ),),
                              );
                            },
                            child: Text(
                              "Buy ticket",style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                            ),),
                          ),
                        ),
                      ),
                      SizedBox(height: 60,),
                    ],
                  ),
                ),
              ),

            );
          }
          return Container(
          );
        },
      ),
    );
  }
}
