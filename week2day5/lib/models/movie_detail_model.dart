// class MovieDetailModel {
//   final String poster_path, title, vote_average, overview, runtime, genres;
//
//   static String takeThat(Map<String, dynamic> json) {
//     //   String temp = "";
//     // for (int i = 0; i < json['genres'].length; i++) {
//     //   temp = temp + json['genres'][i]["name"]+" ";
//     //   print(temp);
//     // }
//     return "from method";
//   }
//
//   MovieDetailModel.fromJson(Map<String, dynamic>json) :
//         poster_path="https://image.tmdb.org/t/p/w500${json["poster_path"]}",
//         title= "${json['title']}",
//         vote_average="${json['vote_average']}",
//         overview="${json['overview']}",
//         runtime="${json['runtime']}",
//         genres=takeThat(json['genres']);
//
//
// }

class MovieDetailModel {
  final String poster_path, title, vote_average, overview, runtime, genres;

  static String takeThat(Map<String, dynamic> json) {
    var temp = "";
    if (json.containsKey('genres')) {
      List<dynamic> genresList = json["genres"];
      for (var genre in genresList) {
        temp = temp + genre["name"] + ", ";
      }
    }
    return temp.isNotEmpty ? temp.substring(0, temp.length - 2) : temp;
  }

  MovieDetailModel.fromJson(Map<String, dynamic> json)
      : poster_path = "https://image.tmdb.org/t/p/w500${json["poster_path"]}",
        title = "${json['title']}",
        vote_average = "${json['vote_average']}",
        overview = "${json['overview']}",
        runtime = "${json['runtime']}",
        genres = takeThat(json);
}

