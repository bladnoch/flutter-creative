import 'package:flutter/material.dart';
import 'package:week2day5/services/api_service.dart';

import '../models/coming_movie.dart';
import '../models/on_screen_movie_model.dart';
import '../models/popular_movie_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<PopularModel>> popMovies = ApiService.getPopularMovies();
  Future<List<OnScreenModel>> onScreenMovies = ApiService.getOnScreenMovies();
  Future<List<ComingModel>> comingMovies = ApiService.getComingMovies();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.redAccent,
        title: Text("asdf ",
        style: TextStyle(
          fontSize: 20,
        ),
        ),
      ),
      body: FutureBuilder(
        future: popMovies,
        builder: (context,snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (context,index){
                var movie =snapshot.data![index];
                return Text(movie.title);
              },
            );
          }
          else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
