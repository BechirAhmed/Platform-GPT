import '../controller/demandes_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DemandesScreen.
///
/// This class ensures that the DemandesController is created when the
/// DemandesScreen is first loaded.
class DemandesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DemandesController());
  }
}
