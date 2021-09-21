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

// //     final movieDataModel = movieDataModelFromJson(jsonString);

// import 'dart:convert';

// import 'package:flutter/cupertino.dart';

// MovieDataModel movieDataModelFromJson(String str) =>
//     MovieDataModel.fromJson(json.decode(str));
// // list of search
// List<Search> SearchFromJson(String str) =>
//     List<Search>.from(json.decode(str).map((x) => Search.fromJson(x)));

// String movieDataModelToJson(MovieDataModel data) => json.encode(data.toJson());

// class MovieDataModel extends ChangeNotifier {
//   MovieDataModel({
//     required this.search,
//     required this.totalResults,
//     required this.response,
//   });

//   final List<Search> search;
//   final String totalResults;
//   final String response;

//   factory MovieDataModel.fromJson(Map<String, dynamic> json) => MovieDataModel(
//         search:
//             List<Search>.from(json["Search"].map((x) => Search.fromJson(x))),
//         totalResults: json["totalResults"],
//         response: json["Response"],
//       );

//   Map<String, dynamic> toJson() => {
//         "Search": List<dynamic>.from(search.map((x) => x.toJson())),
//         "totalResults": totalResults,
//         "Response": response,
//       };
//   @override
//   String toString() {
//     return "DataModel(search:$search,totalResults:$totalResults, Response:$response,)";
//   }
// }

// class Search {
//   Search({
//     required this.title,
//     required this.year,
//     required this.imdbId,
//     required this.type,
//     required this.poster,
//   });

//   final String title;
//   final String year;
//   final String imdbId;
//   final Type? type;
//   final String poster;

//   factory Search.fromJson(Map<String, dynamic> json) => Search(
//         title: json["Title"],
//         year: json["Year"],
//         imdbId: json["imdbID"],
//         type: typeValues.map[json["Type"]],
//         poster: json["Poster"],
//       );

//   Map<String, dynamic> toJson() => {
//         "Title": title,
//         "Year": year,
//         "imdbID": imdbId,
//         "Type": typeValues.reverse[type],
//         "Poster": poster,
//       };
//   @override
//   String toString() {
//     return "DataModel(Title:$title,year:$year, imdbId:$imdbId,type:$type, poster:$poster,)";
//   }
// }

// enum Type { MOVIE, GAME, SERIES }

// final typeValues =
//     EnumValues({"game": Type.GAME, "movie": Type.MOVIE, "series": Type.SERIES});

// class EnumValues<T> {
//   late Map<String, T> map;
//   late Map<T, String> reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     // ignore: unnecessary_null_comparison
//     if (reverseMap == null) {
//       reverseMap = map.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }

// // To parse this JSON data, do
// //
// //     final movieDataModel = movieDataModelFromJson(jsonString);

// import 'dart:convert';

// import 'package:flutter/cupertino.dart';

// MovieDataModel movieDataModelFromJson(String str) =>
//     MovieDataModel.fromJson(json.decode(str));

// String movieDataModelToJson(MovieDataModel data) => json.encode(data.toJson());

// class MovieDataModel extends ChangeNotifier {
//   MovieDataModel({
//     required this.search,
//     required this.totalResults,
//     required this.response,
//   });

//   final List<Search> search;
//   final String totalResults;
//   final String response;

//   factory MovieDataModel.fromJson(Map<String, dynamic> json) => MovieDataModel(
//         search:
//             List<Search>.from(json["Search"].map((x) => Search.fromJson(x))),
//         totalResults: json["totalResults"],
//         response: json["Response"],
//       );

//   Map<String, dynamic> toJson() => {
//         "Search": List<dynamic>.from(search.map((x) => x.toJson())),
//         "totalResults": totalResults,
//         "Response": response,
//       };
//   @override
//   String toString() {
//     return "DataModel(search:$search,totalResults:$totalResults, Response:$response,)";
//   }
// }

// class Search {
//   Search({
//     required this.title,
//     required this.year,
//     required this.imdbId,
//     required this.type,
//     required this.poster,
//   });

//   final String title;
//   final String year;
//   final String imdbId;
//   final Type? type;
//   final String poster;

//   factory Search.fromJson(Map<String, dynamic> json) => Search(
//         title: json["Title"],
//         year: json["Year"],
//         imdbId: json["imdbID"],
//         type: typeValues.map[json["Type"]],
//         poster: json["Poster"],
//       );

//   Map<String, dynamic> toJson() => {
//         "Title": title,
//         "Year": year,
//         "imdbID": imdbId,
//         "Type": typeValues.reverse[type],
//         "Poster": poster,
//       };
//   @override
//   String toString() {
//     return "DataModel(Title:$title,year:$year, imdbId:$imdbId,type:$type, poster:$poster,)";
//   }
// }

// enum Type { MOVIE, GAME, SERIES }

// final typeValues =
//     EnumValues({"game": Type.GAME, "movie": Type.MOVIE, "series": Type.SERIES});

// class EnumValues<T> {
//   late Map<String, T> map;
//   late Map<T, String> reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     // ignore: unnecessary_null_comparison
//     if (reverseMap == null) {
//       reverseMap = map.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }

// // To parse this JSON data, do
// //
// //     final movieDataModel = movieDataModelFromJson(jsonString);

// import 'dart:convert';

// import 'package:flutter/cupertino.dart';

// MovieDataModel movieDataModelFromJson(String str) =>
//     MovieDataModel.fromJson(json.decode(str));

// String movieDataModelToJson(MovieDataModel data) => json.encode(data.toJson());

// class MovieDataModel extends ChangeNotifier {
//   MovieDataModel({
//     required this.search,
//     required this.totalResults,
//     required this.response,
//   });

//   final List<Search> search;
//   final String totalResults;
//   final String response;

//   factory MovieDataModel.fromJson(Map<String, dynamic> json) => MovieDataModel(
//         search:
//             List<Search>.from(json["Search"].map((x) => Search.fromJson(x))),
//         totalResults: json["totalResults"],
//         response: json["Response"],
//       );

//   Map<String, dynamic> toJson() => {
//         "Search": List<dynamic>.from(search.map((x) => x.toJson())),
//         "totalResults": totalResults,
//         "Response": response,
//       };
//   @override
//   String toString() {
//     return "DataModel(search:$search,totalResults:$totalResults, Response:$response,)";
//   }
// }

// class Search {
//   Search({
//     required this.title,
//     required this.year,
//     required this.imdbId,
//     required this.type,
//     required this.poster,
//   });

//   final String title;
//   final String year;
//   final String imdbId;
//   final Type? type;
//   final String poster;

//   factory Search.fromJson(Map<String, dynamic> json) => Search(
//         title: json["Title"],
//         year: json["Year"],
//         imdbId: json["imdbID"],
//         type: typeValues.map[json["Type"]],
//         poster: json["Poster"],
//       );

//   Map<String, dynamic> toJson() => {
//         "Title": title,
//         "Year": year,
//         "imdbID": imdbId,
//         "Type": typeValues.reverse[type],
//         "Poster": poster,
//       };
//   @override
//   String toString() {
//     return "DataModel(Title:$title,year:$year, imdbId:$imdbId,type:$type, poster:$poster,)";
//   }
// }

// enum Type { MOVIE, GAME, SERIES }

// final typeValues =
//     EnumValues({"game": Type.GAME, "movie": Type.MOVIE, "series": Type.SERIES});

// class EnumValues<T> {
//   late Map<String, T> map;
//   late Map<T, String> reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     // ignore: unnecessary_null_comparison
//     if (reverseMap == null) {
//       reverseMap = map.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }
