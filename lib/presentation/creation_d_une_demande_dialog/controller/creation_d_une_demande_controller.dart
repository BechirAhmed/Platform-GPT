import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/presentation/creation_d_une_demande_dialog/models/creation_d_une_demande_model.dart';

/// A controller class for the CreationDUneDemandeDialog.
///
/// This class manages the state of the CreationDUneDemandeDialog, including the
/// current creationDUneDemandeModelObj
class CreationDUneDemandeController extends GetxController {
  Rx<CreationDUneDemandeModel> creationDUneDemandeModelObj =
      CreationDUneDemandeModel().obs;
}
