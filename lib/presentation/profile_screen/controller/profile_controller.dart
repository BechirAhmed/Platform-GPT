import 'dart:convert';

import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/core/database.dart';
import 'package:bgpt/presentation/profile_screen/models/profile_model.dart';
import 'package:bgpt/presentation/sign_up_two_screen/models/sign_up_two_model.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {
  static ProfileController get to => Get.find();
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  Rx<SignUpTwoModel> signUpTwoModelObj = SignUpTwoModel().obs;

  final database = AppDatabase();

  User? user;
  Map? userData;
  final box = GetStorage();

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    if(box.hasData("auth_user")) {
      await database.getUserById(box.read("auth_user")).then((value) => {
        user = value,
        update(),
        fetchUser()
      });
    }
  }

  fetchUser() async {
    final response = await http.get(Uri.parse("https://api.npoint.io/326dfd2a948413518499"));
    if(response.statusCode == 200){
      List jsonData = json.decode(response.body);
      for(Map u in jsonData){
        if(u['nni'] == user?.nni.toString()){
          userData = u;
          update();
        }
      }
      userData?['entry_lieu'] = signUpTwoModelObj.value.dropdownItemList.value.firstWhere((element) => element.isSelected == true).title;
      userData?['passage_point'] = signUpTwoModelObj.value.dropdownItemList1.value.firstWhere((element) => element.isSelected == true).title;
      userData?['nationality'] = signUpTwoModelObj.value.dropdownItemList2.value.firstWhere((element) => element.isSelected == true).title;
      update();
    }
  }
}
