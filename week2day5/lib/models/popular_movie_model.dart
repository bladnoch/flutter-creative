class PopularModel{
  final String image;
  final String title;
  final String id;

  PopularModel.fromJson(Map<String, dynamic> json)
      : image = "https://image.tmdb.org/t/p/w500${json['backdrop_path']}",
        title="${json["original_title"]}",
        id="${json['id']}";
}