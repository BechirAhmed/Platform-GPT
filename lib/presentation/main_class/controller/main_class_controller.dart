import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/presentation/main_class/models/main_class_model.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

/// A controller class for the CreationDUneDemandeOneScreen.
///
/// This class manages the state of the CreationDUneDemandeOneScreen, including the
/// current creationDUneDemandeOneModelObj
class MainClassController extends GetxController {
  Rx<MainClassModel> mainClassModelObj =
      MainClassModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  late PersistentTabController navController;

  var currentIndex = 0.obs;

  @override
  onInit() {
    super.onInit();
    navController = PersistentTabController(initialIndex: 0);
  }

  void changePage(int index) {
    currentIndex.value = index;
    // Get.toNamed(AppRoutes[index], id: 1);
  }

  onSelected(dynamic value) {
    for (var element
        in mainClassModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    mainClassModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element
        in mainClassModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    mainClassModelObj.value.dropdownItemList1.refresh();
  }
}
