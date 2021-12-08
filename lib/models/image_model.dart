// To parse this JSON data, do
import 'dart:convert';

List<ImageModel> imageModelFromJson(String str) =>
    List<ImageModel>.from(json.decode(str).map((x) => ImageModel.fromJson(x)));

String imageModelToJson(List<ImageModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ImageModel {
  ImageModel({
    required this.id,
    required this.urls,
  });

  String id;
  Urls urls;

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        id: json["id"],
        urls: Urls.fromJson(json["urls"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "urls": urls.toJson(),
      };
}

class Urls {
  Urls({
    required this.regular,
  });
  String regular;

  factory Urls.fromJson(Map<String, dynamic> json) => Urls(
        regular: json["regular"],
      );

  Map<String, dynamic> toJson() => {
        "regular": regular,
      };
}
