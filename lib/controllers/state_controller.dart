import 'package:get/get.dart';
import 'package:tr/data/repository/app_repository.dart';
import '../models/state_model.dart';

class StateController extends GetxController {
  final _api = AppRepository();

  final stateList = StateModel().obs;

  RxList<Dumo>? StateList = [Dumo()].obs;

  void stateData() {
    _api.state().then((values) {
      StateList!.value = values.data ?? [];
    });
  }
}
