import 'package:get/get.dart';
import 'package:wallpaper/models/image_model.dart';
import 'package:wallpaper/services/api_service.dart';

class ImageController extends GetxController {
  var isLoading = true.obs;
  final List<ImageModel> productList = <ImageModel>[].obs;
  var isDrawerOpen = false.obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService.fetchProducts();
      productList.assignAll(products);
      // print(productList[0].urls!.raw.toString());
    } finally {
      isLoading(false);
    }
  }

  void drawerChanged() {
    isDrawerOpen.value = !isDrawerOpen.value;
  }
}
