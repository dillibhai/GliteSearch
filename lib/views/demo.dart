// import 'package:flutter/material.dart';
// import 'package:glitesearch/models/moviemodels.dart';
// import 'package:glitesearch/services/movieprovider.dart';
// import 'package:provider/provider.dart';

// class Demo extends StatefulWidget {
//   const Demo({Key? key}) : super(key: key);

//   @override
//   _DemoState createState() => _DemoState();
// }

// class _DemoState extends State<Demo> {
//   TextEditingController controller = new TextEditingController();
//   List<MovieDataModel> _search = [];
//   List<MovieDataModel> _list = [];

//   var loading = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(),
//         body: Consumer<MovieProvider>(
//             builder: (context, movie, child) => (Container(
//                   child: Column(
//                     children: <Widget>[
//                       Container(
//                         padding: EdgeInsets.all(10.0),
//                         color: Colors.blue,
//                         child: Card(
//                           child: ListTile(
//                             leading: Icon(Icons.search),
//                             title: TextField(
//                               controller: controller,
//                               onChanged: movie.onSearch(),
//                               decoration: InputDecoration(
//                                   hintText: "Search", border: InputBorder.none),
//                             ),
//                             trailing: IconButton(
//                               onPressed: () {
//                                 controller.clear();
//                                 movie.onSearch();
//                               },
//                               icon: Icon(Icons.cancel),
//                             ),
//                           ),
//                         ),
//                       ),
//                       loading
//                           ? Center(
//                               child: CircularProgressIndicator(),
//                             )
//                           : Expanded(
//                               child: _search.length != 0 ||
//                                       controller.text.isNotEmpty
//                                   ? ListView.builder(
//                                       itemCount: _search.length,
//                                       itemBuilder: (context, i) {
//                                         final b = _search[i];
//                                         return Container(
//                                             padding: EdgeInsets.all(10.0),
//                                             child: Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: <Widget>[
//                                                 Text(
//                                                   b.title,
//                                                   style: TextStyle(
//                                                       fontWeight:
//                                                           FontWeight.bold,
//                                                       fontSize: 18.0),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 4.0,
//                                                 ),
//                                                 Text(b.poster),
//                                               ],
//                                             ));
//                                       },
//                                     )
//                                   : ListView.builder(
//                                       itemCount: _list.length,
//                                       itemBuilder: (context, i) {
//                                         final a = _list[i];
//                                         return Container(
//                                             padding: EdgeInsets.all(10.0),
//                                             child: Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: <Widget>[
//                                                 Text(
//                                                   a.title,
//                                                   style: TextStyle(
//                                                       fontWeight:
//                                                           FontWeight.bold,
//                                                       fontSize: 18.0),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 4.0,
//                                                 ),
//                                                 Text(a.poster),
//                                               ],
//                                             ));
//                                       },
//                                     ),
//                             ),
//                     ],
//                   ),
//                 ))));
//   }
// }
