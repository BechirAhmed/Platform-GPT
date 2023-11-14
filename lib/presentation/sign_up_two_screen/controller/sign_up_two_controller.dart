import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/presentation/sign_up_two_screen/models/sign_up_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpTwoScreen.
///
/// This class manages the state of the SignUpTwoScreen, including the
/// current signUpTwoModelObj
class SignUpTwoController extends GetxController {
  TextEditingController profileController = TextEditingController();

  Rx<SignUpTwoModel> signUpTwoModelObj = SignUpTwoModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onClose() {
    super.onClose();
    profileController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in signUpTwoModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    signUpTwoModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in signUpTwoModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    signUpTwoModelObj.value.dropdownItemList1.refresh();
  }
}
