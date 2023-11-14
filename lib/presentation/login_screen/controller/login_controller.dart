import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
  TextEditingController icbaselinephoneController = TextEditingController();

  TextEditingController vectorController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    icbaselinephoneController.dispose();
    vectorController.dispose();
  }
}