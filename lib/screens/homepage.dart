import 'package:flutter/material.dart';
import 'package:rest_api_build/databases/data.dart';
import 'package:rest_api_build/models/category_model.dart';
import 'package:rest_api_build/styles/stylesheet.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoriesModel> categories = new List();

  @override
  void initState() {
    categories = getCategories();
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
      body: Container(
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
                      decoration: InputDecoration(
                          hintText: "Find Wallpaper", border: InputBorder.none),
                    ),
                  ),
                  Icon(Icons.search),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 80,
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemCount: categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoryList(
                      title: categories[index].categoriesName,
                      imgUrl: categories[index].imgUrl,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  String imgUrl;
  String title;

  CategoryList({@required this.imgUrl, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imgUrl,
                height: 60,
                width: 140,
                fit: BoxFit.cover,
              )),
          Container(
            color: Colors.black12,
            height: 60,
            width: 140,
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

// 563492ad6f9170000100000104be724792fc40abb7bc22a166091577
// https://api.pexels.com/v1/curated?per_page=1
// https://api.pexels.com/v1/search?query=nature&per_page=1
