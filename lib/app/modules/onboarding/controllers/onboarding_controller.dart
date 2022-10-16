import 'package:get/get.dart';
import 'package:sikat_emas/app/core/values/images.dart';
import 'package:sikat_emas/app/core/values/string.dart';
import 'package:sikat_emas/app/data/model/onboarding_model.dart';

export 'package:sikat_emas/app/core/values/string.dart';

class OnboardingController extends GetxController {
  List<Onboarding> model = [
    Onboarding(
        imageUrl: ImagePath.vector_onboarding1,
        background: ImagePath.pattern_onboarding1,
        description: StringApp.onboardingRoleText[0]),
    Onboarding(
        imageUrl: ImagePath.vector_onboarding2,
        background: ImagePath.pattern_onboarding2,
        description: StringApp.onboardingRoleText[1]),
    Onboarding(
        imageUrl: ImagePath.vector_onboarding3,
        background: ImagePath.pattern_onboarding3,
        description: StringApp.onboardingRoleText[2]),
    Onboarding(
        imageUrl: ImagePath.vector_onboarding4,
        background: ImagePath.pattern_onboarding4,
        description: StringApp.onboardingRoleText[3]),
    Onboarding(
        imageUrl: ImagePath.vector_onboarding5,
        background: ImagePath.pattern_onboarding5,
        description: StringApp.onboardingRoleText[4]),
  ];
}
