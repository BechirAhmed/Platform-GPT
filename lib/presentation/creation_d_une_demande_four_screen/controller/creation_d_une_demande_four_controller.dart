import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/presentation/creation_d_une_demande_four_screen/models/creation_d_une_demande_four_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CreationDUneDemandeFourScreen.
///
/// This class manages the state of the CreationDUneDemandeFourScreen, including the
/// current creationDUneDemandeFourModelObj
class CreationDUneDemandeFourController extends GetxController {
  TextEditingController editTextController = TextEditingController();

  Rx<CreationDUneDemandeFourModel> creationDUneDemandeFourModelObj =
      CreationDUneDemandeFourModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in creationDUneDemandeFourModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    creationDUneDemandeFourModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element
        in creationDUneDemandeFourModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    creationDUneDemandeFourModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    for (var element
        in creationDUneDemandeFourModelObj.value.dropdownItemList2.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    creationDUneDemandeFourModelObj.value.dropdownItemList2.refresh();
  }

  onSelected3(dynamic value) {
    for (var element
        in creationDUneDemandeFourModelObj.value.dropdownItemList3.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    creationDUneDemandeFourModelObj.value.dropdownItemList3.refresh();
  }
}
