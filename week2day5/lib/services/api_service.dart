import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:week2day5/models/coming_movie.dart';
import 'package:week2day5/models/on_screen_movie_model.dart';
import 'package:week2day5/models/popular_movie_model.dart';

class ApiService{
  static const String baseUrl ="https://movies-api.nomadcoders.workers.dev";
  static const String popular="popular";
  static const String onScreen="now-playing";
  static const String coming="coming-soon";
  static const String movieDetail="movie?=id=";

  ///image, id
  static Future<List<PopularModel>> getPopularMovies() async{
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

  ///image, id, title
  static Future<List<OnScreenModel>> getOnScreenMovies() async{
    List<OnScreenModel> onScreenInstance=[];
    final url=Uri.parse('$baseUrl/$onScreen');
    final response = await http.get(url);
    if (response.statusCode==200){
      final Map<String,dynamic> mapOnScreenMovies= jsonDecode(response.body);
      final List<dynamic> onScreenMovies=mapOnScreenMovies["results"];

      for(var movies in onScreenMovies){
        onScreenInstance.add(OnScreenModel.fromJson(movies));
      }
      return onScreenInstance;
    }
    throw Error();
  }

  ///image, id, title
  static Future<List<ComingModel>> getComingMovies() async{
    List<ComingModel> comingInstance=[];
    final url=Uri.parse('$baseUrl/$coming');
    final response = await http.get(url);
    if (response.statusCode==200){
      final Map<String, dynamic> mapComingMovies=jsonDecode(response.body);
      final List<dynamic> comingMovies=mapComingMovies['results'];

      for(var movies in comingMovies){
        comingInstance.add(ComingModel.fromJson(movies));
      }
      return comingInstance;
    }
    throw Error();
  }


}