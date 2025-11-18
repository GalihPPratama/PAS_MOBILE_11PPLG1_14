import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_14/Controller/splashscreen_controller.dart';

class SplashscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashscreenContoller>(() => SplashscreenContoller());
  }
}
