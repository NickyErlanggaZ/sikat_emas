import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikat_emas/app/core/values/colors.dart';
import 'package:sikat_emas/app/core/values/images.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.navigateToLogin();
    return Scaffold(
      backgroundColor: ColorApp.primary,
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagePath.logo,
              width: 55,
              height: 51,
            ),
            Text(
              "SMAN 2 PARE",
              style: GoogleFonts.robotoSlab(
                fontSize: 12,
                color: ColorApp.yellow,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
