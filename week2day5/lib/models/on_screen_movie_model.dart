class OnScreenModel{
  final String image;
  final String id;

  OnScreenModel.fromJson(Map<String, dynamic> json)
      : image = "https://image.tmdb.org/t/p/w500${json['backdrop_path']}",
        id="${json['id']}";
}