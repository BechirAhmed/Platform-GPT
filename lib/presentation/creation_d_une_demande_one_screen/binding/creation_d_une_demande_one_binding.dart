import '../controller/creation_d_une_demande_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreationDUneDemandeOneScreen.
///
/// This class ensures that the CreationDUneDemandeOneController is created when the
/// CreationDUneDemandeOneScreen is first loaded.
class CreationDUneDemandeOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreationDUneDemandeOneController());
  }
}
