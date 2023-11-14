import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/presentation/profile_one_screen/models/profile_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileOneScreen.
///
/// This class manages the state of the ProfileOneScreen, including the
/// current profileOneModelObj
class ProfileOneController extends GetxController {
  TextEditingController vectorEditTextController = TextEditingController();

  TextEditingController mobileNoEditTextController = TextEditingController();

  TextEditingController vectorEditTextController1 = TextEditingController();

  TextEditingController weburlEditTextController = TextEditingController();

  TextEditingController weburlEditTextController1 = TextEditingController();

  TextEditingController weburlEditTextController2 = TextEditingController();

  TextEditingController weburlEditTextController3 = TextEditingController();

  Rx<ProfileOneModel> profileOneModelObj = ProfileOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    vectorEditTextController.dispose();
    mobileNoEditTextController.dispose();
    vectorEditTextController1.dispose();
    weburlEditTextController.dispose();
    weburlEditTextController1.dispose();
    weburlEditTextController2.dispose();
    weburlEditTextController3.dispose();
  }
}
