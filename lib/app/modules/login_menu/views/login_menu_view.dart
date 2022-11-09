import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_menu_controller.dart';

class LoginMenuView extends GetView<LoginMenuController> {
  const LoginMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagePath.pattern_login_menu),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagePath.app_icon,
              width: 167,
            ),
            const SizedBox(
              height: 34,
            ),
            const Text(
              "Sistem Informasi dan Komunikasi Akademik\nTerpadu E-Manajement Sekolah",
              style: TextStyle(
                color: ColorApp.primary,
                fontSize: 7,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            Image.asset(
              ImagePath.vector_login,
              height: 348,
            ),
            const SizedBox(
              height: 59,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: ColorApp.primary,
              ),
              child: Text(
                "masuk sebagai pengunjung".toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 10,
                ),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: ColorApp.secondary,
              ),
              child: Text(
                "masuk dengan akun sman 2 pare".toUpperCase(),
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
