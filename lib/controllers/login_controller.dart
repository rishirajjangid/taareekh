import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/repository/account_repository.dart';
import '../models/user_preference_model.dart';
import '../res/screen_routes/route_name.dart';
import '../res/utils/utils.dart';

class LoginController extends GetxController {
  final _api = AccountRepository();
  UserPreference userPreference = UserPreference();
  final mobileController = TextEditingController().obs;
  final mobileFocusNode = FocusNode().obs;
  RxBool loading = false.obs;
  void accountM() {
    var mobileno = mobileController.value.text;
    Map data = {
      'mobileno': mobileno,
      'apptype': '',
      'devicetype': '',
      'token': '',
    };

    var body = json.encode(data);

    _api.accountM(body).then((value) {
      Get.delete<LoginController>();
      Get.offNamed(RouteName.otpscreen, arguments: mobileno)!.then((value) {});
      Utils.snackbar('Otp Send', 'Otp send on your contact ');
    }).onError((error, stackTrace) {});
  }
}
