import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/presentation/creation_d_une_demande_two_dialog/models/creation_d_une_demande_two_model.dart';

/// A controller class for the CreationDUneDemandeTwoDialog.
///
/// This class manages the state of the CreationDUneDemandeTwoDialog, including the
/// current creationDUneDemandeTwoModelObj
class CreationDUneDemandeTwoController extends GetxController {
  Rx<CreationDUneDemandeTwoModel> creationDUneDemandeTwoModelObj =
      CreationDUneDemandeTwoModel().obs;
}
