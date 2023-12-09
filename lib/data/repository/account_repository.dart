import '../../res/app_url/urls.dart';
import '../network/network_api_services.dart';

class AccountRepository {
  final _apiService = NetworkApiServices();
  Future<dynamic> accountM(var data) async {
    dynamic response = await _apiService.postApi(data, Urls.accountA);

    return response;
  }

  Future<dynamic> accountLogin(var data) async {
    dynamic response = await _apiService.postApi(data, Urls.verifyNo);
    return response;
  }

  Future<dynamic> advRegistations(var data) async {
    dynamic response = await _apiService.postApi(data, Urls.advRegisterd);
    return response;
  }
}
