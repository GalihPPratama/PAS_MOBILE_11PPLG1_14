import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_14/Controller/bookmark_db_controller.dart';
import 'package:pas_mobile_11pplg1_14/Controller/dashboard_controller.dart';
import 'package:pas_mobile_11pplg1_14/Controller/product_controller.dart';
import 'package:pas_mobile_11pplg1_14/Controller/products_db_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<ProductController>(() => ProductController());
    Get.lazyPut<ProductsDbController>(() => ProductsDbController());
    Get.lazyPut<BookmarkDbController>(() => BookmarkDbController());
  }
}
