import 'package:animate_do/animate_do.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './splash_screen_controller.dart';

class SplashScreenPage extends GetWidget<SplashScreenController> {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: ZoomIn(
              child: const FlutterLogo(),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                bottom: Get.height / 3.1,
              ),
              child: ZoomIn(
                child: ZoomOut(
                  duration: const Duration(seconds: 3),
                  delay: const Duration(seconds: 3),
                  child: ZoomOut(
                    delay: const Duration(seconds: 3),
                    child: const Text(
                      'Flutter App',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     margin: EdgeInsets.only(
          //       bottom: Get.context!.mediaQueryPadding.bottom + 25,
          //     ),
          //     child: FadeIn(
          //         child: const Text(
          //       'Version 1.0.0',
          //       style: TextStyle(fontSize: 17),
          //     )),
          //   ),
          // )
        ],
      ),
    );
  }
}
