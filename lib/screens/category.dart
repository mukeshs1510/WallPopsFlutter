import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rest_api_build/databases/data.dart';
import 'package:rest_api_build/models/wallpaper_model.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api_build/styles/stylesheet.dart';

class Categories extends StatefulWidget {
  final String categoryName;
  Categories({this.categoryName});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<WallpaperModel> wallpapers = new List();

  getSearchedWallpapers(String query) async {
    var url = Uri.parse(
        "https://api.pexels.com/v1/search?query=$query&per_page=40&page=1");
    var response = await http.get(url, headers: {"Authorization": api});

    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData["photos"].forEach((element) {
      // print(element);
      WallpaperModel wallpaperModel = new WallpaperModel();
      wallpaperModel = WallpaperModel.fromMap(element);
      wallpapers.add(wallpaperModel);
    });
    setState(() {});
  }

  @override
  void initState() {
    getSearchedWallpapers(widget.categoryName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: appIcon(),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              WallpaperList(wallpapers: wallpapers, context: context),
            ],
          ),
        ),
      ),
    );
  }
}
