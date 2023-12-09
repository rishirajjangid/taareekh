import 'dart:convert';
import 'package:get/get.dart';
import 'package:tr/res/utils/utils.dart';
import '../data/repository/account_repository.dart';
import '../models/user_model.dart';
import '../models/user_preference_model.dart';
import '../res/screen_routes/route_name.dart';

class OtpController extends GetxController {
  final _api = AccountRepository();

  UserPreference userPreference = UserPreference();

  RxBool loading = false.obs;
  void accountLoginFunction(mobileno, String otp) {
    loading.value = true;
    Map data = {
      'otp': otp,
      'mobileno': mobileno,
    };
    var body = json.encode(data);
    _api.accountLogin(body).then((value) {
      loading.value = false;

      if (value['statuscode'] == 200) {
        if (value['data'] == null) {
          Get.delete<OtpController>();
          Get.offNamed(RouteName.registrationscreen)!.then((value) {});
        } else {
          print("mahi resr");
          UserModel userList = UserModel(
            apktoken: value['apktoken'],
            userid: value['data']['userid'],
            mobileNo: value['data']['loginMobile'],
            fullName: value['data']['fullName'],
            userType: value['data']['userType'],
            advocateid: value['data']['advocateid'],
            expiredate: value['data']['expiredate'],
            expireday: value['data']['expireday'],
            isLogin: true,
          );

          userPreference.saveUser(userList).then((value) {
            // userPreference.getUser(UserModel).then((value) {
            //   var advocateid = value.advocateid;
            //   print("advit : " + advocateid.toString());
            // });

            Get.delete<OtpController>();
            Get.offNamed(RouteName.landingpage)!.then((value) {});
            Utils.snackbar('OTP', 'OTP successfully');
          }).onError((error, stackTrace) {
            // ignore: avoid_print
            print(error);
          });
        }
      } else {
        Utils.snackbar('Invaild OTP', 'Please fill the correct OTP.');
      }
    });
  }
}
