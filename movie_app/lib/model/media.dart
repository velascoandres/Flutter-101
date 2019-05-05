import 'package:movie_app/common/util.dart';

class Media{
  int id;
  double vote_average;
  String title;
  String posterPath;
  String backdropPath;
  String overview;
  String releaseDate;
  List<dynamic> genreIds;

  String getPosterUrl() => getMediumPictureUrl(posterPath);
  String getbackdropPath() => getMediumPictureUrl(backdropPath);

  factory Media(Map jsonMap){
    try{
          return new Media.deserialize(jsonMap);
    }catch(ex){
      throw ex;
    }
  }

  Media.deserialize(Map json):
    id = json["id"].toInt(),
    vote_average = json["vote_average"].toDouble(),
    posterPath = json["poster_path"]?? "",
    backdropPath = json["backdrop_path"]?? "",
    title = json["title"],
    overview = json["overview"],
    releaseDate = json["release_date"],
    genreIds = json["genre_ids"].toList();

}