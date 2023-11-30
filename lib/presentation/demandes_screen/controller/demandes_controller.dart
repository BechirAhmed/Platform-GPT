import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/core/database.dart';
import 'package:bgpt/presentation/demandes_screen/models/demandes_model.dart';
import 'package:get_storage/get_storage.dart';

/// A controller class for the DemandesScreen.
///
/// This class manages the state of the DemandesScreen, including the
/// current demandesModelObj
class DemandesController extends GetxController {
  static DemandesController get to => Get.find();
  Rx<DemandesModel> demandesModelObj = DemandesModel().obs;

  final database = AppDatabase();

  List<Order?> orders = [];

  final box = GetStorage();

  @override
  void onInit() {
    fetchOrders();
    super.onInit();
  }

  Future<List<Order?>> fetchOrders() async {
    int usedId = box.read("auth_user");
    orders = await database.getAllDemands(usedId);
    update();

    print("======= ${orders.length}");
    return orders;
  }
}
