// To parse this JSON data, do
//
//     final clientRegModel = clientRegModelFromJson(jsonString);

import 'dart:convert';

ClientRegModel clientRegModelFromJson(String str) =>
    ClientRegModel.fromJson(json.decode(str));

String clientRegModelToJson(ClientRegModel data) => json.encode(data.toJson());

class ClientRegModel {
  int statuscode;
  String responseMsg;
  List<CaseCategory> state;
  List<CaseCategory> courtname;
  List<CaseCategory> policestation;
  List<CaseCategory> caseCategory;
  List<CaseCategory> natureofCase;
  List<CaseCategory> councelFor;

  ClientRegModel({
    required this.statuscode,
    required this.responseMsg,
    required this.state,
    required this.courtname,
    required this.policestation,
    required this.caseCategory,
    required this.natureofCase,
    required this.councelFor,
  });

  factory ClientRegModel.fromJson(Map<String, dynamic> json) => ClientRegModel(
        statuscode: json["statuscode"],
        responseMsg: json["responseMsg"],
        state: List<CaseCategory>.from(
            json["state"].map((x) => CaseCategory.fromJson(x))),
        courtname: List<CaseCategory>.from(
            json["courtname"].map((x) => CaseCategory.fromJson(x))),
        policestation: List<CaseCategory>.from(
            json["policestation"].map((x) => CaseCategory.fromJson(x))),
        caseCategory: List<CaseCategory>.from(
            json["case_category"].map((x) => CaseCategory.fromJson(x))),
        natureofCase: List<CaseCategory>.from(
            json["natureof_Case"].map((x) => CaseCategory.fromJson(x))),
        councelFor: List<CaseCategory>.from(
            json["councel_for"].map((x) => CaseCategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "statuscode": statuscode,
        "responseMsg": responseMsg,
        "state": List<dynamic>.from(state.map((x) => x.toJson())),
        "courtname": List<dynamic>.from(courtname.map((x) => x.toJson())),
        "policestation":
            List<dynamic>.from(policestation.map((x) => x.toJson())),
        "case_category":
            List<dynamic>.from(caseCategory.map((x) => x.toJson())),
        "natureof_Case":
            List<dynamic>.from(natureofCase.map((x) => x.toJson())),
        "councel_for": List<dynamic>.from(councelFor.map((x) => x.toJson())),
      };
}

class CaseCategory {
  int id;
  String mastername;

  CaseCategory({
    required this.id,
    required this.mastername,
  });

  factory CaseCategory.fromJson(Map<String, dynamic> json) => CaseCategory(
        id: json["id"],
        mastername: json["mastername"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "mastername": mastername,
      };
}
