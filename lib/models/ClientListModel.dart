class ClientListModel {
  int? statuscode;
  String? responsemsg;
  List<Data>? data;

  ClientListModel({this.statuscode, this.responsemsg, this.data});

  ClientListModel.fromJson(Map<String, dynamic> json) {
    statuscode = json['statuscode'];
    responsemsg = json['responsemsg'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statuscode'] = this.statuscode;
    data['responsemsg'] = this.responsemsg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? courtName;
  String? caseNo;
  String? firno;
  String? policeStationName;
  int? ps;
  int? vs;
  String? matterInvolved;
  String? adddate;
  String? clientName;
  String? mobileNo;
  String? emailid;
  String? address;
  String? city;
  int? stateid;
  int? districtid;
  String? state;
  String? district;
  bool? isActive;
  int? courtid;
  int? policestationid;
  String? casedate;
  int? nextdate;
  int? advocateid;
  int? councelForid;
  String? councelFor;
  String? caseTitle;
  int? caseCategoryid;
  String? caseCategory;
  int? natureofCaseid;
  String? natureofCase;
  String? year;

  Data(
      {this.id,
      this.courtName,
      this.caseNo,
      this.firno,
      this.policeStationName,
      this.ps,
      this.vs,
      this.matterInvolved,
      this.adddate,
      this.clientName,
      this.mobileNo,
      this.emailid,
      this.address,
      this.city,
      this.stateid,
      this.districtid,
      this.state,
      this.district,
      this.isActive,
      this.courtid,
      this.policestationid,
      this.casedate,
      this.nextdate,
      this.advocateid,
      this.councelForid,
      this.councelFor,
      this.caseTitle,
      this.caseCategoryid,
      this.caseCategory,
      this.natureofCaseid,
      this.natureofCase,
      this.year});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    courtName = json['courtName'];
    caseNo = json['caseNo'];
    firno = json['firno'];
    policeStationName = json['policeStationName'];
    ps = json['ps'];
    vs = json['vs'];
    matterInvolved = json['matterInvolved'];
    adddate = json['adddate'];
    clientName = json['clientName'];
    mobileNo = json['mobileNo'];
    emailid = json['emailid'];
    address = json['address'];
    city = json['city'];
    stateid = json['stateid'];
    districtid = json['districtid'];
    state = json['state'];
    district = json['district'];
    isActive = json['isActive'];
    courtid = json['courtid'];
    policestationid = json['policestationid'];
    casedate = json['casedate'];
    nextdate = json['nextdate'];
    advocateid = json['advocateid'];
    councelForid = json['councel_forid'];
    councelFor = json['councel_for'];
    caseTitle = json['caseTitle'];
    caseCategoryid = json['case_Categoryid'];
    caseCategory = json['case_Category'];
    natureofCaseid = json['natureofCaseid'];
    natureofCase = json['natureofCase'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['courtName'] = this.courtName;
    data['caseNo'] = this.caseNo;
    data['firno'] = this.firno;
    data['policeStationName'] = this.policeStationName;
    data['ps'] = this.ps;
    data['vs'] = this.vs;
    data['matterInvolved'] = this.matterInvolved;
    data['adddate'] = this.adddate;
    data['clientName'] = this.clientName;
    data['mobileNo'] = this.mobileNo;
    data['emailid'] = this.emailid;
    data['address'] = this.address;
    data['city'] = this.city;
    data['stateid'] = this.stateid;
    data['districtid'] = this.districtid;
    data['state'] = this.state;
    data['district'] = this.district;
    data['isActive'] = this.isActive;
    data['courtid'] = this.courtid;
    data['policestationid'] = this.policestationid;
    data['casedate'] = this.casedate;
    data['nextdate'] = this.nextdate;
    data['advocateid'] = this.advocateid;
    data['councel_forid'] = this.councelForid;
    data['councel_for'] = this.councelFor;
    data['caseTitle'] = this.caseTitle;
    data['case_Categoryid'] = this.caseCategoryid;
    data['case_Category'] = this.caseCategory;
    data['natureofCaseid'] = this.natureofCaseid;
    data['natureofCase'] = this.natureofCase;
    data['year'] = this.year;
    return data;
  }
}
