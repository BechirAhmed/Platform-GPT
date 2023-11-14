import '../controller/creation_d_une_demande_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreationDUneDemandeFourScreen.
///
/// This class ensures that the CreationDUneDemandeFourController is created when the
/// CreationDUneDemandeFourScreen is first loaded.
class CreationDUneDemandeFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreationDUneDemandeFourController());
  }
}
