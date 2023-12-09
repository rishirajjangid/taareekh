// import 'dart:convert';

// import 'package:get/get.dart';
// import 'package:tr/data/repository/app_repository.dart';

// import '../models/ClientListModel.dart';

// class ClientListController extends GetxController {
//   final _api = AppRepository();

//   final clientListS =
//       ClientListModel(data: [], responsemsg: '', statuscode: 200).obs;

//   void clientList() {
    
//     Map data = {
//       'advocateid': advocateid,
//       'clientid': '',
//       'fromdate': '',
//       'toDate': '',
//       'status': '',
//     };
//     var body = json.encode(data);
//     _api.clientListA(body).then((value) {
//       print(value);
//     });
//   }
// }
