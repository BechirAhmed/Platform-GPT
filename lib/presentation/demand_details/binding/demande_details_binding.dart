import '../controller/demande_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileOneScreen.
///
/// This class ensures that the ProfileOneController is created when the
/// ProfileOneScreen is first loaded.
class DemandDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DemandDetailsController());
  }
}
