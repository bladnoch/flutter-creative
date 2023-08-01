class OnScreenModel{
  final String image;
  final String id;
  final String title;

  /// on_screen_movie_model.dart
  /// @author doungukkim
  /// @since 7/7/2023
  /// @version v0.0.1

  OnScreenModel.fromJson(Map<String, dynamic> json)
      : image = "https://image.tmdb.org/t/p/w500${json['backdrop_path']}",
        id="${json['id']}",
        title="${json["title"]}";
}