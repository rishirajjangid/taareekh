import 'package:get/get.dart';
import 'package:tr/data/repository/app_repository.dart';
import 'package:tr/models/client_reg_model.dart';
import '../models/user_model.dart';
import '../models/user_preference_model.dart';

class ClientRegGetController extends GetxController {
  final _api = AppRepository();
  UserPreference userPreference = UserPreference();

  final clientRegGet = ClientRegModel(
          caseCategory: [],
          councelFor: [],
          policestation: [],
          natureofCase: [],
          courtname: [],
          state: [],
          statuscode: 200,
          responseMsg: '')
      .obs;

  void clientRegGets() {
    userPreference.getUser(UserModel).then((value) {
      var advocateid = value.advocateid;

      _api.clientRegistationsGet(advocateid).then((value) {
        clientRegGet.value.caseCategory = value.caseCategory;
        clientRegGet.value.councelFor = value.councelFor;
        clientRegGet.value.policestation = value.policestation;
        clientRegGet.value.natureofCase = value.natureofCase;
        clientRegGet.value.courtname = value.courtname;
        clientRegGet.value.state = value.state;
      }).onError((error, stackTrace) {});
    });
  }
}
