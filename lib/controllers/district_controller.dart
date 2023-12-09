import 'package:get/get.dart';
import 'package:tr/models/district_model.dart';
import '../data/repository/app_repository.dart';

class DistrictController extends GetxController {
  final _api = AppRepository();

  final districtL = DistrictModel().obs;

  RxList<Data>? districtList = [Data()].obs;

  void districtData(state) {
    districtList!.value = [];
    _api.districts(state).then((DistrictModel value) {
      districtList!.value = value.data ?? [];
    }).onError((error, stackTrace) {});
  }
}
