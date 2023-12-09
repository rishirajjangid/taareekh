import 'package:shared_preferences/shared_preferences.dart';
import 'package:tr/models/user_model.dart';

class UserPreference {
  Future<bool> saveUser(UserModel responseModel) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('apktoken', responseModel.apktoken.toString());
    sp.setInt('userid', responseModel.userid!.toInt());

    sp.setString('fullName', responseModel.fullName.toString());
    sp.setString('mobileNo', responseModel.mobileNo.toString());
    sp.setString('userType', responseModel.userType.toString());
    sp.setInt('advocateid', responseModel.advocateid!.toInt());
    sp.setString('expiredate', responseModel.expiredate.toString());
    sp.setInt('expireday', responseModel.expireday!.toInt());

    sp.setBool('isLogin', responseModel.isLogin!);
    return true;
  }

  Future<UserModel> getUser(userModel) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? apktoken = sp.getString('apktoken');
    int? userid = sp.getInt('userid');

    String? fullName = sp.getString('fullName');
    String? mobileNo = sp.getString('mobileNo');
    String? userType = sp.getString('userType');
    int? advocateid = sp.getInt('advocateid');
    String? expiredate = sp.getString('expiredate');
    int? expireday = sp.getInt('expireday');

    bool? isLogin = sp.getBool('isLogin');
    return UserModel(
        apktoken: apktoken,
        userid: userid,
        fullName: fullName,
        mobileNo: mobileNo,
        userType: userType,
        advocateid: advocateid,
        expiredate: expiredate,
        expireday: expireday,
        isLogin: isLogin);
  }

  Future<bool> removeUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    return true;
  }
}
