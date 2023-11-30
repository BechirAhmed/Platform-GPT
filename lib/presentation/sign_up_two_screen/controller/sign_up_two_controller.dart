import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/core/database.dart';
import 'package:bgpt/presentation/sign_up_two_screen/models/sign_up_two_model.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sms_autofill/sms_autofill.dart';

/// A controller class for the SignUpTwoScreen.
///
/// This class manages the state of the SignUpTwoScreen, including the
/// current signUpTwoModelObj
class SignUpTwoController extends GetxController with CodeAutoFill {
  final dynamic data = Get.arguments;

  TextEditingController profileController = TextEditingController();

  Rx<SignUpTwoModel> signUpTwoModelObj = SignUpTwoModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  Rx<TextEditingController> otpController = TextEditingController().obs;

  late int userId;

  final database = AppDatabase();

  final box = GetStorage();

  @override
  void onInit() async {
    super.onInit();
    userId = data['userId'];
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    profileController.dispose();
  }

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

   updateUser() async {
    User? user = await database.getUserById(userId);
    if(user != null) {
      var data = {};
      data['entry_date'] = signUpTwoModelObj.value.selectedDateDEntrE.toString();
      data['entry_lieu'] = signUpTwoModelObj.value.dropdownItemList.value.firstWhere((element) => element.isSelected).id;
      data['passage_point'] = signUpTwoModelObj.value.dropdownItemList1.value.firstWhere((element) => element.isSelected).id;
      data['nationality'] = signUpTwoModelObj.value.dropdownItemList2.value.firstWhere((element) => element.isSelected).id;
      box.remove("auth_user");
      box.write("auth_user", user.id);
      return await database.updateUserData(user, data);
    }
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

  onSelected2(dynamic value) {
    for (var element in signUpTwoModelObj.value.dropdownItemList2.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    signUpTwoModelObj.value.dropdownItemList2.refresh();
  }
}
