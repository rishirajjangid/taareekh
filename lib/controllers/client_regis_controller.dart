import 'dart:convert';
import 'package:get/get.dart';
import 'package:tr/models/user_preference_model.dart';
import '../data/repository/app_repository.dart';
import '../models/ClientListModel.dart';
import '../models/user_model.dart';
import '../res/screen_routes/route_name.dart';
import '../res/utils/utils.dart';

class ClientRegisController extends GetxController {
  final _api = AppRepository();
  UserPreference userPreference = UserPreference();
  RxBool loading = false.obs;
  final varClientList = ClientListModel().obs;

  // RxList<Data>? VarClientList = [Data()].obs;
  void clientList() {
    userPreference.getUser(UserModel).then((value) {
      var advocateid = value.advocateid;
      Map data = {
        'advocateid': advocateid,
        'clientid': 0,
        'fromdate': '',
        'toDate': '',
        'status': '',
      };
      var body = json.encode(data);
      _api.clientListA(body).then((value) {
        varClientList.value.data = value.data;
        // VarClientList!.value = value.data ?? [];
      });
    });
  }

  void clientRegis(
    caseCategory,
    caseTitle,
    courtName,
    natureofCase,
    caseNo,
    firno,
    year,
    policeStationName,
    matterInvolved,
    councelfor,
    stateid,
    districtid,
    clientName,
    mobileNo,
    emailid,
    city,
    address,
  ) {
    loading.value = true;
    userPreference.getUser(UserModel).then((value) {
      var advocateid = value.advocateid;
      Map data = {
        'case_Category': caseCategory,
        'caseTitle': caseTitle,
        'courtName': courtName,
        'natureofCase': natureofCase,
        'caseNo': caseNo,
        'firno': firno,
        'year': year,
        'policeStationName': policeStationName,
        'matterInvolved': matterInvolved,
        'councel_for': councelfor,
        'stateid': stateid,
        'districtid': districtid,
        'clientName': clientName,
        'mobileNo': mobileNo,
        'emailid': emailid,
        'city': city,
        'address': address,
        'advocateid': advocateid,
      };
      var body = json.encode(data);

      var token = value.apktoken!;
      _api.clientRegistations(body, token).then((value) {
        loading.value = false;
        if (value['statuscode'] == 200) {
          Get.delete<ClientRegisController>();
          Get.offNamed(RouteName.clientScreen)!.then((value) => {});
          Utils.snackbar('Client', 'Client detelis Successful');
        } else {
          Utils.snackbar('Client', 'please fill the correct ');
        }
      });
    });
  }
}
