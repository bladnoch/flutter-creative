import 'package:flutter/material.dart';
import 'package:week2day5/services/api_service.dart';
import 'package:week2day5/widgets/coming_movie_widget.dart';
import 'package:week2day5/widgets/onscreen_movie_widget.dart';
import 'package:week2day5/widgets/popular_movie_widget.dart';

import '../models/coming_movie_model.dart';
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
      body:
      Column(
        children: [

          Flexible(
            flex: 5,
            child: Container(),),

          ///Text: popular movie
          Flexible(
            flex: 3,
            child: Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Popular Movies",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),

          ///popular movies
          Flexible(
            flex: 16,
            child: FutureBuilder(
              future: popMovies,
              builder: (context,snapshot){
                if(snapshot.hasData){
                  return Column(
                    children: [
                      SizedBox(height: 0,),
                      Expanded(child: buildPopList(snapshot)),
                    ],
                  );
                }
                else{
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),

          ///Text : Now in Cinemas
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Text("Now in Cinemas",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                ),
              ),
            ),
          ),

          ///on screen movies
          Flexible(
            flex: 13,
            child: FutureBuilder(
              future: onScreenMovies,
              builder: (context,snapshot){
                if(snapshot.hasData){
                  return Column(
                    children: [
                      SizedBox(height: 0,),
                      Expanded(child: buildOnScreenList(snapshot)),
                    ],
                  );
                }
                else{
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),

          ///text : Coming soon
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Coming soon",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                ),
              ),
            ),
          ),

          ///coming movies
          Flexible(
            flex: 15,
            child: FutureBuilder(
              future: comingMovies,
              builder: (context,snapshot){
                if(snapshot.hasData){
                  return Column(
                    children: [
                      SizedBox(height: 0,),
                      Expanded(child: buildComingList(snapshot)),
                    ],
                  );
                }
                else{
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  ///popular method
  ListView buildPopList(AsyncSnapshot<List<PopularModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      itemBuilder: (context,index){
        var movie =snapshot.data![index];
        return PopularMovie(image: movie.image, title: movie.title, id: movie.id,);
      },
      separatorBuilder: (context,index) =>const SizedBox(width: 20,),
    );
  }

  ///on screen method
  ListView buildOnScreenList(AsyncSnapshot<List<OnScreenModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      itemBuilder: (context,index){
        var movie =snapshot.data![index];
        return OnScreenMovie(image: movie.image, title: movie.title, id: movie.id,);
      },
      separatorBuilder: (context,index) =>const SizedBox(width: 20,),
    );
  }
}
  /// coming method
  ListView buildComingList(AsyncSnapshot<List<ComingModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      itemBuilder: (context,index){
        var movie =snapshot.data![index];
        return ComingMovie(image: movie.image, title: movie.title, id: movie.id,);
      },
      separatorBuilder: (context,index) =>const SizedBox(width: 20,),
    );
  }


