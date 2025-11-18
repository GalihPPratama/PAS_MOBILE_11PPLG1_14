import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter/material.dart';
import 'package:pas_mobile_11pplg1_14/Routes/pages.dart';
import 'package:pas_mobile_11pplg1_14/Routes/routes.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Typeshi',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
    );
  }
}
