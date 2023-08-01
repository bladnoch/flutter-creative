/// coming_movie_model.dart
/// @author doungukkim
/// @since 7/7/2023
/// @version v0.0.1

class ComingModel{
  final String image;
  final String id;
  final String title;

  ComingModel.fromJson(Map<String, dynamic> json)
      : image = "https://image.tmdb.org/t/p/w500${json['backdrop_path']}",
        title="${json["title"]}",
        id="${json['id']}";
}