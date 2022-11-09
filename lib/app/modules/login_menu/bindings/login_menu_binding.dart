import 'package:get/get.dart';

import '../controllers/login_menu_controller.dart';

class LoginMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginMenuController>(
      () => LoginMenuController(),
    );
  }
}
