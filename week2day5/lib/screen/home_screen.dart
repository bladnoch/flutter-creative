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
        foregroundColor: Colors.black,
        title: Text("",
        style: TextStyle(
          fontSize: 20,
        ),
        ),
      ),
      body:
      Column(
        children: [
          Flexible(
            flex: 3,
            child: Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Popular Movies",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),

          ///popular movies
          Flexible(
            flex: 14,
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

          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Text("Now in Cinemas",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),

          ///on screen movies
          Flexible(
            flex: 10,
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

          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Coming soon",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
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

  ///popular
  ListView buildPopList(AsyncSnapshot<List<PopularModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      itemBuilder: (context,index){
        var movie =snapshot.data![index];
        return Column(
          children: [
            Container(
              width: 370,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(
                        blurRadius:5,
                        offset: Offset(2,2),
                        color: Colors.black.withOpacity(0.8)
                    )
                  ]
              ),
              child: Image.network(movie.image),
            ),
          ],
        );
      },
      separatorBuilder: (context,index) =>const SizedBox(width: 20,),
    );
  }

  ///on screen
  ListView buildOnScreenList(AsyncSnapshot<List<OnScreenModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      itemBuilder: (context,index){
        var movie =snapshot.data![index];
        return Column(
          children: [
            Container(
              height: 100,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow:[
                  BoxShadow(
                    blurRadius:5,
                    offset: Offset(2,2),
                    color: Colors.black.withOpacity(0.8)
                  )
                ]
              ),
              child: Image.network(movie.image),
            ),
            SizedBox(
              height: 0,
            ),
            Container(
              width: 170,
                height: 40,
                child: Center(
                  child: Text(movie.title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                  ),),
                ),),
          ],
        );
      },
      separatorBuilder: (context,index) =>const SizedBox(width: 20,),
    );
  }
}

  /// coming
  ListView buildComingList(AsyncSnapshot<List<ComingModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      itemBuilder: (context,index){
        var movie =snapshot.data![index];
        return Column(
          children: [
            Container(
              height: 100,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:[
                    BoxShadow(
                        blurRadius:5,
                        offset: Offset(2,2),
                        color: Colors.black.withOpacity(0.8)
                    )
                  ]
              ),
              child: Image.network(movie.image),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 170,
              child: Center(
                child: Text(movie.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),),
              ),),
          ],
        );
      },
      separatorBuilder: (context,index) =>const SizedBox(width: 20,),
    );
  }


