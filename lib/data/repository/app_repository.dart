import 'package:tr/data/network/network_api_services.dart';
import 'package:tr/models/state_model.dart';
import 'package:tr/res/app_url/urls.dart';

import '../../models/ClientListModel.dart';
import '../../models/client_reg_model.dart';
import '../../models/district_model.dart';

class AppRepository {
  final _apiService = NetworkApiServices();
  Future<StateModel> state() async {
    dynamic response = await _apiService.getApi(Urls.advState);
    return StateModel.fromJson(response);
  }

  Future<DistrictModel> districts(var state) async {
    dynamic response =
        await _apiService.getApi(Urls.advDistrict + state.toString());
    return DistrictModel.fromJson(response);
  }

  Future<dynamic> clientRegistations(var data, var apktoken) async {
    dynamic response = await _apiService
        .postApi1(data, Urls.clientReg, {'Authorization': 'Bearer $apktoken'});
    return response;
  }

  Future<ClientRegModel> clientRegistationsGet(advocateid) async {
    dynamic response = await _apiService
        .getApi1("${Urls.clientRegGet}?Advocateid=$advocateid");

    return ClientRegModel.fromJson(response);
  }

  Future<ClientListModel> clientListA(var data) async {
    dynamic response = await _apiService.postApi(data, Urls.clientList);
    return ClientListModel.fromJson(response);
  }
}
