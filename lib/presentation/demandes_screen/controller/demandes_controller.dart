import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/presentation/demandes_screen/models/demandes_model.dart';

/// A controller class for the DemandesScreen.
///
/// This class manages the state of the DemandesScreen, including the
/// current demandesModelObj
class DemandesController extends GetxController {
  Rx<DemandesModel> demandesModelObj = DemandesModel().obs;
}
