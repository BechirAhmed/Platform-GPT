import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/presentation/demand_details/models/demande_details_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileOneScreen.
///
/// This class manages the state of the ProfileOneScreen, including the
/// current profileOneModelObj
class DemandDetailsController extends GetxController {
  static DemandDetailsController get to => Get.find();

  TextEditingController vectorEditTextController = TextEditingController();

  TextEditingController mobileNoEditTextController = TextEditingController();

  TextEditingController vectorEditTextController1 = TextEditingController();

  TextEditingController weburlEditTextController = TextEditingController();

  TextEditingController weburlEditTextController1 = TextEditingController();

  TextEditingController weburlEditTextController2 = TextEditingController();

  TextEditingController weburlEditTextController3 = TextEditingController();

  Rx<DemandDetailsModel> profileOneModelObj = DemandDetailsModel().obs;

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
