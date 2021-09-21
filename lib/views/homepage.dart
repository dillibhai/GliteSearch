import 'package:flutter/material.dart';
import 'package:glitesearch/models/moviemodels.dart';
import 'package:glitesearch/services/movieprovider.dart';
import 'package:glitesearch/widgets/customtextfield.dart';
import 'package:glitesearch/widgets/moviewidget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MovieProvider movieProvider = MovieProvider();
  List<MovieDataModel> movies = [];
  @override
  void initState() {
    super.initState();
    movieProvider.populateAllMovies();
  }

  // void populateAllMovies() {
  //   var movies = movieProvider.getmovie();
  //   // var allmovies = movies;
  //   movies = movies;
  //   movieProvider.notifyListeners();
  // }

  @override
  Widget build(BuildContext context) {
    movieProvider = Provider.of<MovieProvider>(context);
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        // backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back),
      ),
      body: Provider(
        create: (context) => MovieProvider(),
        child: Consumer(
            builder: (context, movie, child) => (Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Search',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                              hinttext: 'Search',
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Top Searches',
                              style: TextStyle(fontSize: 20),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  movieProvider.populateAllMovies();
                                },
                                child: Text('data')),
                            // MoviesWidget(movies: movies),
                            MoviesWidget(movies: movies),
                            Container(
                                child: Column(
                                    // children: [Text(movieProvider.poster)],
                                    ))
                          ],
                        )
                      ],
                    ),
                  ),
                ))),
      ),
    );
  }
}
