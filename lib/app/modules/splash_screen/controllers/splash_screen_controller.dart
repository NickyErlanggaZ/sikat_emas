import 'package:get/get.dart';
import 'package:sikat_emas/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {

  void navigateToLogin() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.toNamed(Routes.HOME);
    });
  }

  @override
  void onInit() {
    navigateToLogin();
    super.onInit();
  }
}
