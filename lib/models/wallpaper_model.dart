class WallpaperModel {
  String photographer;
  String photographer_url;
  int photographer_id;
  SrcModel srcModel;

  WallpaperModel(
      {this.photographer,
      this.photographer_url,
      this.photographer_id,
      this.srcModel});

  factory WallpaperModel.fromMap(Map<String, dynamic> jsnData) {
    return WallpaperModel(
      srcModel: SrcModel.fromMap(jsnData["src"]),
      photographer_url: jsnData["photographer_url"],
      photographer_id: jsnData["photographer_id"],
      photographer: jsnData["photographer"],
    );
  }
}

class SrcModel {
  String original;
  String small;
  String portrait;

  SrcModel({this.original, this.small, this.portrait});

  factory SrcModel.fromMap(Map<String, dynamic> jsnData) {
    return SrcModel(
      original: jsnData["original"],
      small: jsnData["small"],
      portrait: jsnData["portrait"],
    );
  }
}
