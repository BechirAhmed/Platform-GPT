import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/presentation/creation_d_une_demande_three_dialog/models/creation_d_une_demande_three_model.dart';

/// A controller class for the CreationDUneDemandeThreeDialog.
///
/// This class manages the state of the CreationDUneDemandeThreeDialog, including the
/// current creationDUneDemandeThreeModelObj
class CreationDUneDemandeThreeController extends GetxController {
  Rx<CreationDUneDemandeThreeModel> creationDUneDemandeThreeModelObj =
      CreationDUneDemandeThreeModel().obs;
}
