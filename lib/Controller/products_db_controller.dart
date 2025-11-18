import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_mobile_11pplg1_14/Models/Products.dart';

class ProductsDbController extends GetxController {
  var isLoading = true.obs;
  var productList = <Products>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  Future<void> fetchProducts() async {
    try {
      isLoading(true);
      const url = 'https://fakestoreapi.com/products';
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        productList.value = productsFromJson(response.body);
      } else {
        Get.snackbar('Error', 'Failed to fetch products');
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading(false);
    }
  }
}
