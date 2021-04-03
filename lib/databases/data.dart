import 'package:flutter/cupertino.dart';
import 'package:rest_api_build/models/category_model.dart';

String api = "563492ad6f9170000100000104be724792fc40abb7bc22a166091577";

List<CategoriesModel> getCategories() {
  List<CategoriesModel> categories = new List();
  CategoriesModel categoriesModel = new CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/2832382/pexels-photo-2832382.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  categoriesModel.categoriesName = "Abstract";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/1040499/pexels-photo-1040499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  categoriesModel.categoriesName = "Amoled";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/325812/pexels-photo-325812.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  categoriesModel.categoriesName = "Minimal";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/1144687/pexels-photo-1144687.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  categoriesModel.categoriesName = "Nature";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/1615766/pexels-photo-1615766.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  categoriesModel.categoriesName = "Wild Life";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  return categories;
}
