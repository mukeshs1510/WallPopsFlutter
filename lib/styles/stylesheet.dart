import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rest_api_build/models/wallpaper_model.dart';
import 'package:rest_api_build/screens/image_view.dart';

Widget appIcon() {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 20),
      children: <TextSpan>[
        TextSpan(
          text: 'Wall',
          style: GoogleFonts.nunito(
              fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 20),
        ),
        TextSpan(
          text: 'PopS',
          style: GoogleFonts.pacifico(
              fontWeight: FontWeight.w600,
              color: Colors.blueGrey,
              fontSize: 17),
        ),
      ],
    ),
  );
}
// style: GoogleFonts.nunito(
// fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 20),
// ),
// Text(
// "PopS",
// style: GoogleFonts.pacifico(
// fontWeight: FontWeight.w600, color: Colors.blueGrey, fontSize: 17),
// ),

Widget WallpaperList({List<WallpaperModel> wallpapers, context}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: wallpapers.map((e) {
        return GridTile(
            child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImageView(
                          imgUrl: e.srcModel.portrait,
                        )));
          },
          child: Hero(
            tag: e.srcModel.portrait,
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  e.srcModel.portrait,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ));
      }).toList(),
    ),
  );
}
