import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:pas_mobile_11pplg1_14/Components/CustomTexfield1_components.dart';
import 'package:pas_mobile_11pplg1_14/Components/MyButton_components.dart';
import 'package:pas_mobile_11pplg1_14/Controller/Register_controller.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final controller = Get.put(RegisterController());

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
              controller1: controller.fullNameController,
              label: "Full name",
              hint: "Full Name",
              isPassword: false,
            ),

            SizedBox(height: 15),

            Customtexfield1Components(
              controller1: controller.emailController,
              label: "Email",
              hint: "Email",
              isPassword: false,
            ),

            SizedBox(height: 25),

            Customtexfield1Components(
              controller1: controller.passwordController,
              label: "Password",
              hint: "Password",
              isPassword: false,
            ),

            SizedBox(height: 15),

            MybuttonComponents(
              text: "Confirm",
              textColor: Colors.green,
              onPressed: controller.register,
            ),
          ],
        ),
      ),
    );
  }
}
