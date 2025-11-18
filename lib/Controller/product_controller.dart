import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_mobile_11pplg1_14/Models/Products.dart';
import 'package:pas_mobile_11pplg1_14/Routes/routes.dart';

class ProductController extends GetxController {
  var isLoading = false.obs;
  var Product = <Products>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProductTable();
  }



  Future<void> fetchProductTable() async {
    const url = "https://fakestoreapi.com/products";
    try {
      //shit that may crash
      isLoading.value = true;
      final response = await http.get(Uri.parse(url));
      print("status code" + response.statusCode.toString());
      print("json result" + response.body.toString());

      if (response.statusCode == 200) {
        final List data = jsonDecode(response.body);
        Product.assignAll(data.map((e) => Products.fromJson(e)).toList());
        //fill the variable named "standings" dari data model standingData(json)
      } else {
        Get.snackbar("failed", "failed loading data");
      }
    } catch (exception) {
      Get.snackbar("error", exception.toString());
      //backup plan. i.e., warning snackbar typeshit desuwa~
    }
    isLoading.value = false;
  }


  var bookmarks = <int>{}.obs;

  void toggleBookmark(int index) {
    if (bookmarks.contains(index)) {
      bookmarks.remove(index);
    } else {
      bookmarks.add(index);
    }
  }

  
  void gotodetails(int index) {
    Get.toNamed(AppRoutes.details, arguments: {'index': index});
  }
}
