import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_14/Controller/Register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}
