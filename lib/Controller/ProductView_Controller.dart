import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_14/Controller/product_controller.dart';

class ProductviewController extends GetxController {
  late int index;
  late int indexes = index + 1;

  final controller = Get.find<ProductController>();

  @override
  void onInit() {
    super.onInit();

    final args = Get.arguments;
    if (args is Map<String, dynamic> && args['index'] is int) {
      index = args['index'] as int;
    }
  }
}
