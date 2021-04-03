import 'package:flutter/material.dart';
import 'package:rest_api_build/styles/stylesheet.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appIcon(),
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}
