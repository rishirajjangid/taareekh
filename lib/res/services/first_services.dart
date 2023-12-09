import 'dart:async';
import 'package:get/get.dart';
import '../../models/user_model.dart';
import '../../models/user_preference_model.dart';
import '../screen_routes/route_name.dart';

class FirstServices {
  UserPreference userPreference = UserPreference();

  void isLogin() {
    userPreference.getUser(UserModel).then((value) {
      // print(value.token);
      // print(value.isLogin);
      // Timer(
      //   const Duration(seconds: 1),
      //   () => Get.offAllNamed(RouteName.loginscreen),
      // );
      if (value.isLogin == false || value.isLogin.toString() == 'null') {
        Timer(
          const Duration(seconds: 1),
          () => Get.offAllNamed(RouteName.loginscreen),
        );
      } else {
        Timer(
          const Duration(seconds: 3),
          () => Get.offAllNamed(RouteName.landingpage),
        );
      }
    });
  }
}
