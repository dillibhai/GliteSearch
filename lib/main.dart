import 'package:flutter/material.dart';
import 'package:glitesearch/services/movieprovider.dart';
import 'package:glitesearch/utils/routes.dart';
import 'package:glitesearch/views/demo.dart';
import 'package:glitesearch/views/homepage.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  Provider.debugCheckInvalidValueType = null;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MovieProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        // home: Demo(),
        initialRoute: MyRoutes.homeRoute,
        routes: {
          MyRoutes.homeRoute: (context) => HomePage(),
        },
      ),
    );
  }
}
