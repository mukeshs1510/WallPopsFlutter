import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appIcon() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Wall",
        style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 20),
      ),
      Text(
        "PopS",
        style: GoogleFonts.pacifico(
            fontWeight: FontWeight.w600, color: Colors.blueGrey, fontSize: 17),
      ),
    ],
  );
}
