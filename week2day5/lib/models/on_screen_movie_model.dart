class OnScreenModel{
  final String image;

  OnScreenModel.fromJson(Map<String, dynamic> json)
      : image = "https://image.tmdb.org/t/p/w500${json['backdrop_path']}";
}