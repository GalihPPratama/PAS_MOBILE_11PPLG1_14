import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_14/Controller/dashboard_controller.dart';
import 'package:pas_mobile_11pplg1_14/Controller/product_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<ProductController>(() => ProductController());
  }
}
