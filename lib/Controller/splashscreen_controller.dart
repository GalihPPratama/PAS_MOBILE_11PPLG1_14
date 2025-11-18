import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_14/Routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashscreenContoller extends GetxController {
  @override
  void onInit() {
    super.onInit();
    checkLogin();
  }

  checkLogin() async {
    final prefs = await SharedPreferences.getInstance();
    final savedUsername = prefs.getString("username");
    await Future.delayed(Duration(seconds: 3));
    if (savedUsername != null) {
      Get.offAllNamed(AppRoutes.dash);
    } else {
      Get.offAllNamed(AppRoutes.login);
    }
  }
}
