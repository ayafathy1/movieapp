// ignore_for_file: prefer_if_null_operators

import 'dart:convert';

MovieDataModel movieDataModelFromJson(String str) {
  final jsonData = json.decode(str);
  return MovieDataModel.fromJson(jsonData);
}

String movieDataModelToJson(MovieDataModel data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class MovieDataModel {
  int? page;
  List<Result>? results;
  int? totalPages;
  int? totalResults;

  MovieDataModel({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory MovieDataModel.fromJson(Map<String, dynamic> json) => MovieDataModel(

    page: json["page"] == null ? null : json["page"],
    // ignore: unnecessary_new
    results: json["results"] == null ? null : new List<Result>.from(json["results"].map((x) => Result.fromJson(x))),

    totalPages: json["total_pages"] == null ? null : json["total_pages"],

    totalResults: json["total_results"] == null ? null : json["total_results"],
  );

  Map<String, dynamic> toJson() => {
    "page": page == null ? null : page,
    "results": results ,
    "total_pages": totalPages == null ? null : totalPages,
    "total_results": totalResults == null ? null : totalResults,
  };
}

class Result {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  Result({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    adult: json["adult"] == null ? null : json["adult"],
    backdropPath: json["backdrop_path"] == null ? null : json["backdrop_path"],
    // ignore: unnecessary_new
    genreIds: json["genre_ids"] == null ? null : new List<int>.from(json["genre_ids"].map((x) => x)),
    id: json["id"] == null ? null : json["id"],
    originalLanguage: json["original_language"] == null ? null : json["original_language"],
    originalTitle: json["original_title"] == null ? null : json["original_title"],
    overview: json["overview"] == null ? null : json["overview"],
    // ignore: prefer_null_aware_operators
    popularity: json["popularity"] == null ? null : json["popularity"].toDouble(),
    posterPath: json["poster_path"] == null ? null : json["poster_path"],
    releaseDate: json["release_date"] == null ? null : json["release_date"],
    title: json["title"] == null ? null : json["title"],
    video: json["video"] == null ? null : json["video"],
    // ignore: prefer_null_aware_operators
    voteAverage: json["vote_average"] == null ? null : json["vote_average"].toDouble(),
    voteCount: json["vote_count"] == null ? null : json["vote_count"],
  );

  Map<String, dynamic> toJson() => {
    "adult": adult == null ? null : adult,
    "backdrop_path": backdropPath == null ? null : backdropPath,
    "genre_ids": genreIds ,
    "id": id == null ? null : id,
    "original_language": originalLanguage == null ? null : originalLanguage,
    "original_title": originalTitle == null ? null : originalTitle,
    "overview": overview == null ? null : overview,
    "popularity": popularity == null ? null : popularity,
    "poster_path": posterPath == null ? null : posterPath,
    "release_date": releaseDate == null ? null : releaseDate,
    "title": title == null ? null : title,
    "video": video == null ? null : video,
    "vote_average": voteAverage == null ? null : voteAverage,
    "vote_count": voteCount == null ? null : voteCount,
  };
}