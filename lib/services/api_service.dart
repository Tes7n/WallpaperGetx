import 'package:http/http.dart' as http;
import 'package:wallpaper/models/image_model.dart';

class ApiService {
  static var client = http.Client();

  static Future<List<ImageModel>> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'https://api.unsplash.com/photos/?client_id=J43-rNR6QKy6GcFgYmbBnv-k02Oot7MfP6f0yHUdHoo'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      // print(jsonString);
      return imageModelFromJson(jsonString);
    }
    throw Error();
  }

  static void fetchImages() {}
}
