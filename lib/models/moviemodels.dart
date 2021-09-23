// import 'dart:convert';

import 'package:flutter/material.dart';

class MovieDataModel extends ChangeNotifier {
  final String imdbId;
  final String poster;
  final String title;
  final String year;

  MovieDataModel(
      {required this.imdbId,
      required this.title,
      required this.poster,
      required this.year});

  factory MovieDataModel.fromJson(Map<String, dynamic> json) {
    return MovieDataModel(
        imdbId: json["imdbID"],
        poster: json["Poster"],
        title: json["Title"],
        year: json["Year"]);
  }
  @override
  String toString() {
    return "MovieDataModel(imdbId:$imdbId,title:$title,poster:$poster,year:$year,)";
  }
}
