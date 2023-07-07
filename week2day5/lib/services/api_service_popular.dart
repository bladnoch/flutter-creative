import 'package:http/http.dart' as http;

class ApiService{
  final String baseUrl ="https://movies-api.nomadcoders.workers.dev";

  final String popular="popular";
  final String onScreen="now-playing";
  final String coming="coming-soon";
  final String movieDetail="movie?=id=";

  void getPopularMovies() async{
    final url=Uri.parse('$baseUrl/$popular');
    final response = await http.get(url);
    if (response.statusCode==200){
      print(response.body);
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