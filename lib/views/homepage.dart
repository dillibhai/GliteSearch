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
  List<MovieDataModel> search = [];
  @override
  Widget build(BuildContext context) {
    Provider.of<MovieProvider>(context, listen: false).populateAllMovies();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.red,
          child: Consumer<MovieProvider>(builder: (context, movie, child) {
            return Container(
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
                        Container(
                          height: 40,
                          child: CustomTextField(
                              controller: movie.searchController,
                              hinttext: 'Search',
                              color: Colors.grey,
                              onchanged: () {
                                movie.searchController.clear();

                                movie.onSearch(movie.searchController.text);
                              }
                              // onchanged: () {
                              // movie.searchController.clear();
                              // movie.onSearch(movie.searchController.text);
                              // movie.notifyListeners();
                              // },
                              ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              movie.onSearch(movie.searchController.text);
                            },
                            child: Text('search'))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Top Searches',
                              style: TextStyle(fontSize: 20),
                            ),
                            MoviesWidget()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
