class OnScreenModel{
  final String image;
  final String id;
  final String title;

  OnScreenModel.fromJson(Map<String, dynamic> json)
      : image = "https://image.tmdb.org/t/p/w500${json['backdrop_path']}",
        id="${json['id']}",
        title="${json["title"]}";
}