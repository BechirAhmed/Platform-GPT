import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController nNIController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
    nNIController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }
}
