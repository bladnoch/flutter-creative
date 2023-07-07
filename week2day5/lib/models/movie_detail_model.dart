class MovieDetailModel{
  final String poster_path, title, vote_average, overview, runtime;
  // final List<Map<String, dynamic>> genres;

  MovieDetailModel.fromJson(Map<String,dynamic>json):
        poster_path="https://image.tmdb.org/t/p/w500${json["poster_path"]}",
        title=json['title'],
        vote_average=json['vote_average'],
        overview=json['overview'],
        runtime=json['runtime'];
        // genres=json['genres'];
}