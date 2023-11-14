import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/presentation/creation_d_une_demande_one_screen/models/creation_d_une_demande_one_model.dart';

/// A controller class for the CreationDUneDemandeOneScreen.
///
/// This class manages the state of the CreationDUneDemandeOneScreen, including the
/// current creationDUneDemandeOneModelObj
class CreationDUneDemandeOneController extends GetxController {
  Rx<CreationDUneDemandeOneModel> creationDUneDemandeOneModelObj =
      CreationDUneDemandeOneModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  onSelected(dynamic value) {
    for (var element
        in creationDUneDemandeOneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    creationDUneDemandeOneModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element
        in creationDUneDemandeOneModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    creationDUneDemandeOneModelObj.value.dropdownItemList1.refresh();
  }
}
