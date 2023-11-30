import 'package:bgpt/presentation/creation_d_une_demande_four_screen/controller/creation_d_une_demande_four_controller.dart';
import 'package:bgpt/presentation/demand_details/controller/demande_details_controller.dart';
import 'package:bgpt/presentation/demandes_screen/controller/demandes_controller.dart';
import 'package:bgpt/presentation/profile_screen/controller/profile_controller.dart';
import 'package:bgpt/presentation/settigns_screen/controller/settigns_controller.dart';
import 'package:bgpt/presentation/splash_screen/controller/splash_controller.dart';

import '../controller/main_class_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreationDUneDemandeOneScreen.
///
/// This class ensures that the CreationDUneDemandeOneController is created when the
/// CreationDUneDemandeOneScreen is first loaded.
class MainClassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainClassController());
    Get.lazyPut<CreationDUneDemandeFourController>(() => CreationDUneDemandeFourController());
    Get.lazyPut<SettignsController>(() => SettignsController());
    Get.lazyPut<DemandDetailsController>(() => DemandDetailsController());
    Get.lazyPut<DemandesController>(() => DemandesController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
