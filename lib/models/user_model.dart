class UserModel {
  String? apktoken;
  int? userid;
  String? mobileNo;
  String? fullName;
  String? userType;
  int? advocateid;
  String? expiredate;
  int? expireday;
  bool? isLogin;

  UserModel({
    this.apktoken,
    this.isLogin,
    this.userid,
    this.fullName,
    this.mobileNo,
    this.userType,
    this.advocateid,
    this.expiredate,
    this.expireday,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    apktoken = json['apktoken'];
    isLogin = json['apktoken'];

    userid = json['userid'];
    mobileNo = json['mobileNo'];
    fullName = json['fullName'];
    userType = json['userType'];
    advocateid = json['advocateid'];
    expiredate = json['expiredate'];
    expireday = json['expireday'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['apktoken'] = this.apktoken;
    data['isLogin'] = this.apktoken;
    data['userid'] = this.userid;
    data['mobileNo'] = this.mobileNo;
    data['fullName'] = this.fullName;
    data['userType'] = this.userType;
    data['advocateid'] = this.advocateid;
    data['expiredate'] = this.expiredate;
    data['expireday'] = this.expireday;

    return data;
  }
}
