import 'dart:convert';

import 'package:get/get.dart';
import 'package:tr/data/repository/account_repository.dart';
import 'package:tr/models/user_model.dart';
import 'package:tr/models/user_preference_model.dart';
import 'package:tr/res/utils/utils.dart';
import '../res/screen_routes/route_name.dart';

class AdvRegisController extends GetxController {
  final _api = AccountRepository();
  UserPreference userPreference = UserPreference();

  RxBool loading = false.obs;
  void advRegigFunction(advocateName, mobileNo, emailid, licencesNo,
      practiceCourtName, address, city, stateid, districtid) {
    loading.value = true;

    Map data = {
      'advocate_Name': advocateName,
      'mobileNo': mobileNo,
      'emailid': emailid,
      'licences_No': licencesNo,
      'practice_Court_Name': practiceCourtName,
      'address': address,
      'city': city,
      'stateid': stateid,
      'districtid': districtid,
    };
    var body = json.encode(data);
    _api.advRegistations(body).then((value) {
      loading.value = false;
      if (value['statuscode'] == 200) {
        UserModel userList = UserModel(
          apktoken: value['apktoken'],
        );
        userPreference.saveUser(userList).then((value) {
          Get.delete<AdvRegisController>();
          Get.offNamed(RouteName.landingpage)!.then((value) => {});
          Utils.snackbar('Adv', 'Adv detelis Successful');
        }).onError((error, stackTrace) {
          print(error);
        });
      } else {
        Utils.snackbar('adv', 'please fill the correct ');
      }
    });
  }
}
