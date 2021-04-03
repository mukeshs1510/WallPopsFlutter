import 'package:flutter/material.dart';
import 'package:rest_api_build/screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WallPopS',
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: HomePage());
  }
}
