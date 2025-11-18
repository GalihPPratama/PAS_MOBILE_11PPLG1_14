import 'package:get/route_manager.dart';
import 'package:pas_mobile_11pplg1_14/Bindings/dashboard_binding.dart';
import 'package:pas_mobile_11pplg1_14/Bindings/login_binding.dart';
import 'package:pas_mobile_11pplg1_14/Bindings/register_binding.dart';
import 'package:pas_mobile_11pplg1_14/Pages/Logger/login_page.dart';
import 'package:pas_mobile_11pplg1_14/Pages/Logger/register_page.dart';
import 'package:pas_mobile_11pplg1_14/Pages/dashboard_page.dart';
import 'package:pas_mobile_11pplg1_14/Pages/start_page.dart';
import 'package:pas_mobile_11pplg1_14/Routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.start, page: () => StartPage()),
    GetPage(
      name: AppRoutes.dash,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.regist,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
  ];
}
