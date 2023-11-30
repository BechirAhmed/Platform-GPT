import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/presentation/splash_screen/models/splash_model.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A controller class for the SplashScreen.
///
/// This class manages the state of the SplashScreen, including the
/// current splashModelObj
class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  late SharedPreferences _prefs;

  @override
  void onReady() async {
    final box = GetStorage();
    if(box.hasData("auth_user")){
      Get.offNamed(
        AppRoutes.mainClassScreen
      );
    } else {
      Future.delayed(const Duration(milliseconds: 2000), () {
        Get.offNamed(
          AppRoutes.onboardingScreen,
        );
      });
    }
  }
}
