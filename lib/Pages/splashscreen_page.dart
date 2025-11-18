import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_14/Controller/splashscreen_controller.dart';

class SplashscreenPage extends StatelessWidget {
  SplashscreenPage({super.key});

  final editController = Get.find<SplashscreenContoller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Image.asset('assets/oguwi.gif', width: 200)),
            SizedBox(height: 100),
            SizedBox(
              // width: 250,
              child: DefaultTextStyle(
                style: const TextStyle(fontSize: 30.0, color: Colors.black),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Loading...',
                      speed: const Duration(milliseconds: 300),
                    ),
                    ScrambleAnimatedText('DONE!'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
