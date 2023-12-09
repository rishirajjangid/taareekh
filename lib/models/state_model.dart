import 'package:flutter/src/material/dropdown.dart';

class StateModel {
  int? statuscode;
  String? responseMsg;
  List<Dumo>? data;

  StateModel({this.statuscode, this.responseMsg, this.data});

  StateModel.fromJson(Map<String, dynamic> json) {
    statuscode = json['statuscode'];
    responseMsg = json['responseMsg'];
    if (json['data'] != null) {
      data = <Dumo>[];
      json['data'].forEach((v) {
        data!.add(new Dumo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statuscode'] = this.statuscode;
    data['responseMsg'] = this.responseMsg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  map(DropdownMenuItem<Dumo> Function(Dumo selectedType) param0) {}
}

class Dumo {
  int? id;
  String? name;

  Dumo({this.id, this.name});

  Dumo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
