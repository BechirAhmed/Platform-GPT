import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/core/database.dart';
import 'package:bgpt/presentation/creation_d_une_demande_four_screen/models/creation_d_une_demande_four_model.dart';
import 'package:bgpt/presentation/demandes_screen/controller/demandes_controller.dart';
import 'package:bgpt/presentation/main_class/controller/main_class_controller.dart';
import 'package:drift/drift.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:uuid/uuid.dart';

/// A controller class for the CreationDUneDemandeFourScreen.
///
/// This class manages the state of the CreationDUneDemandeFourScreen, including the
/// current creationDUneDemandeFourModelObj
class CreationDUneDemandeFourController extends GetxController {
  static CreationDUneDemandeFourController get to => Get.find();

  TextEditingController editTextController = TextEditingController();

  Rx<CreationDUneDemandeFourModel> creationDUneDemandeFourModelObj =
      CreationDUneDemandeFourModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  PersistentTabController tabController = Get.find<MainClassController>().navController;

  DemandesController demandesController = Get.find<DemandesController>();

  final database = AppDatabase();

  bool isSubmitting = false;

  var uuid = Uuid();

  final box = GetStorage();

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

  onSelected4(dynamic value) {
    for (var element
        in creationDUneDemandeFourModelObj.value.dropdownItemList4.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    creationDUneDemandeFourModelObj.value.dropdownItemList4.refresh();
  }

  storeDemande() async {
    isSubmitting = true;
    update();
    dynamic data = {
      "user_id": box.read("auth_user"),
      "nom_affaire": creationDUneDemandeFourModelObj.value.dropdownItemList1.value.firstWhere((element) => element.isSelected).title,
      "type_affaire": creationDUneDemandeFourModelObj.value.dropdownItemList2.value.firstWhere((element) => element.isSelected).title,
      "wilaya": creationDUneDemandeFourModelObj.value.dropdownItemList3.value.firstWhere((element) => element.isSelected).title,
      "moughataa": creationDUneDemandeFourModelObj.value.dropdownItemList4.value.firstWhere((element) => element.isSelected).title,
      "compte_banc": editTextController.text
    };
    int demandeId = 0;
    await Future.delayed(Duration(seconds: 3), () async {
      demandeId = await database.storeDemande(data);
    });

    isSubmitting = false;
    update();
    return demandeId;
  }

  clearFields() {

  }

}
