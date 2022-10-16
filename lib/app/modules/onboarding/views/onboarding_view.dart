import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:sikat_emas/app/core/values/colors.dart';
import 'package:sikat_emas/app/routes/app_pages.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: controller.model.length,
        itemBuilder: (context, index) {
          return Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                child: Image.asset(
                  controller.model[index].background,
                  width: Get.width,
                  fit: BoxFit.cover,
                  scale: 0.5,
                  height: Get.height,
                ),
              ),
              Positioned(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Image.asset(
                  controller.model[index].imageUrl,
                  scale: 0.25,
                ),
              )),
              Positioned(
                bottom: Get.height * 0.145,
                child: Column(
                  children: [
                    const Text(
                      StringApp.onboardingMainText,
                      style: TextStyle(
                        color: ColorApp.primary,
                      ),
                    ),
                    Text(
                      controller.model[index].description,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorApp.primary,
                      ),
                    )
                  ],
                ),
              ),
              index == controller.model.length - 1
                  ? Positioned(
                      right: 20,
                      bottom: 20,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.HOME);
                        },
                        child: const Text("Lewati"),
                      ))
                  : const SizedBox()
            ],
          );
        },
      ),
    );
  }
}
