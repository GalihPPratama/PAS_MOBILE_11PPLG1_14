import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_14/Controller/ProductView_Controller.dart';
class ProductviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductviewController>(() => ProductviewController());
  }
}
