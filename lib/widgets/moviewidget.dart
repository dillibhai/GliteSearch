import 'package:flutter/material.dart';
import 'package:glitesearch/models/moviemodels.dart';
import 'package:glitesearch/services/movieprovider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MoviesWidget extends StatelessWidget {
  // List<MovieDataModel> srch = [];
  // MoviesWidget({required this.movies});

  @override
  Widget build(BuildContext context) {
    return Consumer<MovieProvider>(
        builder: (context, movie, child) => (movie.search.length != 0 ||
                movie.searchController.text.isNotEmpty
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: movie.search.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 100,
                              child: ClipRRect(
                                child:
                                    Image.network(movie.search[index].poster),
                                borderRadius: BorderRadius.circular(10),
                              )),
                          Container(
                            width: 182,
                            height: 130,
                            child: Container(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(movie.search[index].title),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text('Tv Shows'),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(movie.search[index].year),
                                  SizedBox(
                                    height: 7,
                                  ),
                                ],
                              ),
                            )),
                          ),
                        ],
                      )),
                    ),
                  );
                })
            : ListView.builder(
                shrinkWrap: true,
                itemCount: movie.allmovies.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 100,
                              child: ClipRRect(
                                child: Image.network(
                                    movie.allmovies[index].poster),
                                borderRadius: BorderRadius.circular(10),
                              )),
                          Container(
                            width: 182,
                            height: 130,
                            child: Container(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(movie.allmovies[index].title),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text('Tv Shows'),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(movie.allmovies[index].year),
                                  SizedBox(
                                    height: 7,
                                  ),
                                ],
                              ),
                            )),
                          ),
                        ],
                      )),
                    ),
                  );
                })));
  }
}
