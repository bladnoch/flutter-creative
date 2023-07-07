import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:week2day5/models/popular_movie_model.dart';

class ApiService{
  final String baseUrl ="https://movies-api.nomadcoders.workers.dev";

  final String popular="popular";
  final String onScreen="now-playing";
  final String coming="coming-soon";
  final String movieDetail="movie?=id=";

  Future<List<PopularModel>> getPopularMovies() async{
    List<PopularModel> popMoviesInstance=[];
    final url=Uri.parse('$baseUrl/$popular');
    final response = await http.get(url);
    if (response.statusCode==200){
      final Map<String,dynamic> mapPopularMovies= jsonDecode(response.body);
      final List<dynamic> popularMovies=mapPopularMovies["results"];

      for(var movies in popularMovies){
        popMoviesInstance.add(PopularModel.fromJson(movies));
      }
      return popMoviesInstance;
    }
    throw Error();
  }

  void getOnScreenMovies() async{
    final url=Uri.parse('$baseUrl/$onScreen');
    final response = await http.get(url);
    if (response.statusCode==200){
      print(response.body);
    }
    throw Error();
  }
  void getComingMovies() async{
    final url=Uri.parse('$baseUrl/$coming');
    final response = await http.get(url);
    if (response.statusCode==200){
      print(response.body);
    }
    throw Error();
  }


}