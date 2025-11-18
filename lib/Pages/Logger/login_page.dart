import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:pas_mobile_11pplg1_14/Components/CustomTexfield1_components.dart';
import 'package:pas_mobile_11pplg1_14/Components/MyButton_components.dart';
import 'package:pas_mobile_11pplg1_14/Controller/login_controller.dart';
import 'package:pas_mobile_11pplg1_14/Routes/routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Customtexfield1Components(
              controller1: controller.usernameController,
              label: "Username",
              hint: "Username",
              isPassword: false,
            ),

            SizedBox(height: 25),

            Customtexfield1Components(
              controller1: controller.passwordController,
              label: "Username",
              hint: "Username",
              isPassword: false,
            ),

            SizedBox(height: 15),

            MybuttonComponents(
              text: "Login",
              textColor: Colors.green,
              onPressed: controller.loginapi,
            ),

            MybuttonComponents(
              text: "Register",
              textColor: Colors.green,
              onPressed: () {
                Get.toNamed(AppRoutes.regist);
              },
            ),
          ],
        ),
      ),
    );
  }
}
