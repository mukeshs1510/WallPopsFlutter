import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  final String imgUrl;
  ImageView({this.imgUrl});
  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgUrl,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                widget.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          color: Color(0xff1C1B1B).withOpacity(0.8),
                          gradient: LinearGradient(
                              colors: [Color(0x36FFFFFF), Color(0x0fFFFFFF)]),
                          border: Border.all(color: Colors.white60),
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 2,
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0x36FFFFFF), Color(0x0fFFFFFF)]),
                            border: Border.all(color: Colors.white60),
                            borderRadius: BorderRadius.circular(40)),
                        child: Column(
                          children: [
                            Text(
                              "Set Wallpaper",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Text(
                              "Image will be saved",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.white54),
                            )
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Cancel",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
