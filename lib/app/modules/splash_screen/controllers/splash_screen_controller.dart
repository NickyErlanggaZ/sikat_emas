import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sikat_emas/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  void navigateToLogin() {
    debugPrint("Navigasi ke onboarding");
    Future.delayed(const Duration(seconds: 5), () {
      Get.toNamed(Routes.ONBOARDING);
    });
  }
}
