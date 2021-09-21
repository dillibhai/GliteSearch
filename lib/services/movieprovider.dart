import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:glitesearch/models/moviemodels.dart';
import 'package:http/http.dart' as http;

class MovieProvider with ChangeNotifier {
  List<MovieDataModel> allmovies = <MovieDataModel>[];
  List movies = [];
  // String imdbId = '';
  // String poster = '';
  // String title = '';
  // String year = '';
  String url = 'http://www.omdbapi.com/?s=Batman&page=2&apikey=564727fa';

  Future<List<MovieDataModel>?> getmovie() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      // var list = SearchFromJson(jsonEncode(result["Search"]));
      // return list;
      Iterable list = result["Search"];
      return list.map((movie) => MovieDataModel.fromJson(movie)).toList();
    } else {
      throw Exception("Failed to load movies!");
    }
  }

  Future<MovieDataModel?> populateAllMovies() async {
    var movies = await getmovie();
    allmovies = movies as List<MovieDataModel>;
    // print(allmovies);
    print(allmovies[0].poster);
    notifyListeners();
  }
}
