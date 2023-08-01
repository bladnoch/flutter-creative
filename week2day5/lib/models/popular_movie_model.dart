class PopularModel{
  final String image;
  final String title;
  final String id;

  /// popular_movie_model.dart
  /// @author doungukkim
  /// @since 7/7/2023
  /// @version v0.0.1

  PopularModel.fromJson(Map<String, dynamic> json)
      : image = "https://image.tmdb.org/t/p/w500${json['backdrop_path']}",
        title="${json["original_title"]}",
        id="${json['id']}";
}