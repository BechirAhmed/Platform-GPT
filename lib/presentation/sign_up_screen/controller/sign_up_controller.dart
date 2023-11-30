import 'dart:convert';

import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/core/database.dart';
import 'package:bgpt/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController nNIController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  final database = AppDatabase();

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
    nNIController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  Future<int> storeStep1() async {
    //check if nni of phone already saved
    if(await fetchUser()){
      int? userId;
      User? user = await database.getUserByPhone(int.parse(phoneNumberController.text));
      if(user == null) {
        userId = await database.users.insertOne(UsersCompanion.insert(
            numero_phone: int.parse(phoneNumberController.text),
            nni: int.parse(nNIController.text),
            password: passwordController.text
        ));

        phoneNumberController.clear();
        nNIController.clear();
        passwordController.clear();
        confirmPasswordController.clear();

        return userId;
      }else{
        return 100;
      }
    }else{
      return 0;
    }
  }

  Future<bool> fetchUser() async {
    final response = await http.get(Uri.parse("https://api.npoint.io/326dfd2a948413518499"));
    if(response.statusCode == 200){
      List jsonData = json.decode(response.body);
      for(var u in jsonData){
        if(u['nni'] == nNIController.text){
          print(u);
          return true;
        }
      }
      return false;
    }

    return false;
  }
}
