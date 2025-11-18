import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_14/Components/MyButton_components.dart';
import 'package:pas_mobile_11pplg1_14/Controller/login_controller.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // Center horizontally

          children: [
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/propic.png"),
              ),
            ),

            const SizedBox(height: 10),

            Text("Galih Priadiwangsa Pratama"),
            Text(
              "11 PPLG 1",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            Text(controller.googleEmail.value),
            MybuttonComponents(
              text: 'logot',
              textColor: Colors.teal,
              onPressed: () {
                controller.logout();
              },
            ),
          ],
        ),
      ),
    );
  }
}
