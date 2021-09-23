import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:glitesearch/models/moviemodels.dart';
import 'package:http/http.dart' as http;

class MovieProvider with ChangeNotifier {
  TextEditingController searchController = TextEditingController();
  List<MovieDataModel> allmovies = <MovieDataModel>[];
  List movies = [];
  List<MovieDataModel> search = [];

  String url = 'http://www.omdbapi.com/?s=Batman&page=2&apikey=564727fa';

  Future<List<MovieDataModel>?> getmovie() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);

      Iterable list = result["Search"];
      return list.map((movie) => MovieDataModel.fromJson(movie)).toList();
    } else {
      throw Exception("Failed to load movies!");
    }
  }

  Future<MovieDataModel?> populateAllMovies() async {
    var movies = await getmovie();
    allmovies = movies as List<MovieDataModel>;
    CircularProgressIndicator();
    notifyListeners();
  }

  onSearch(String text) async {
    search.clear();
    if (text.isEmpty) {
      return;
    } else
      search.forEach((e) {
        if (e.title.contains(text) ||
            e.imdbId.contains(text) ||
            e.year.contains(text)) search.add(e);
      });
    notifyListeners();
    print(search.length);
  }
}
