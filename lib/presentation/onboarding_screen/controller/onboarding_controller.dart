import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/presentation/onboarding_screen/models/onboarding_model.dart';

/// A controller class for the OnboardingScreen.
///
/// This class manages the state of the OnboardingScreen, including the
/// current onboardingModelObj
class OnboardingController extends GetxController {
  Rx<OnboardingModel> onboardingModelObj = OnboardingModel().obs;

  int index = 0;

  void onScreenChanged(int pageIndex) {
    index = pageIndex;
    update();
  }
}
