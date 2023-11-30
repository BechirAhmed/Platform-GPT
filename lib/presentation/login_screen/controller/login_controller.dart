import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/core/database.dart';
import 'package:bgpt/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  Rx<bool> isShowPassword = true.obs;

  final database = AppDatabase();

  final box = GetStorage();

  @override
  void onClose() {
    super.onClose();
    phoneController.dispose();
    passwordController.dispose();
  }

  Future<int> login() async {
    User? user = await database.getUserByPhone(int.parse(phoneController.text));
    if(user == null) {
      return 0;
    }

    phoneController.clear();
    passwordController.clear();

    box.write("auth_user", user.id);
    return user.id;
  }
}
