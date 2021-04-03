import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rest_api_build/databases/data.dart';
import 'package:rest_api_build/styles/stylesheet.dart';
import 'package:rest_api_build/models/category_model.dart';
import 'package:rest_api_build/models/wallpaper_model.dart';
import 'package:http/http.dart' as http;

class SearchPage extends StatefulWidget {
  final String searchQuery;
  SearchPage({this.searchQuery});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = new TextEditingController();
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
    getSearchedWallpapers(widget.searchQuery);
    super.initState();
    searchController.text = widget.searchQuery;
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
              Container(
                decoration: BoxDecoration(
                    color: Color(0xfff5f8fd),
                    borderRadius: BorderRadius.circular(16)),
                margin: EdgeInsets.symmetric(horizontal: 26),
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                            hintText: "Find Wallpaper",
                            border: InputBorder.none),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          getSearchedWallpapers(searchController.text);
                        },
                        child: Icon(Icons.search)),
                  ],
                ),
              ),
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
