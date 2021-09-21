import 'package:flutter/material.dart';
import 'package:glitesearch/models/moviemodels.dart';
import 'package:glitesearch/services/movieprovider.dart';
import 'package:provider/provider.dart';

class MoviesWidget extends StatefulWidget {
  final List<MovieDataModel> movies;

  MoviesWidget({required this.movies});

  @override
  _MoviesWidgetState createState() => _MoviesWidgetState();
}

class _MoviesWidgetState extends State<MoviesWidget> {
  MovieProvider movieProvider = MovieProvider();
  @override
  Widget build(BuildContext context) {
    movieProvider = Provider.of<MovieProvider>(context);

    return Container(
      height: 150,
      width: double.infinity,
      color: Colors.red,
      child: Provider(
          create: (context) => MovieProvider(),
          child: Consumer(
              builder: (context, movies, child) => (ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.movies.length,
                  itemBuilder: (context, index) {
                    final movie = widget.movies[index];
                    return ListTile(
                        title: Row(
                      children: [
                        SizedBox(
                            width: 100,
                            child: ClipRRect(
                              child: Image.network(widget.movies[index].poster),
                              borderRadius: BorderRadius.circular(10),
                            )),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widget.movies[index].title),
                                Text(widget.movies[index].year)
                              ],
                            ),
                          ),
                        )
                      ],
                    ));
                  })))),
    );
  }
}
