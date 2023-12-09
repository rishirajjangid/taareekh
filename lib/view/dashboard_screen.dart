import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tr/res/colors/app_color.dart';
import 'package:tr/view/client_info_screen.dart';
import 'package:tr/view/client_registration_screen.dart';
import 'package:tr/view/drop_down/drop_down_api.dart';
import 'package:tr/view/registration_screen.dart';
import '../models/user_model.dart';
import '../models/user_preference_model.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  UserPreference userPreference = UserPreference();
  static String username1 = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    userPreference.getUser(UserModel).then((value) {
      setState(() {
        username1 = value.fullName.toString();
      });

      print(username1);
    });
  }

  @override
  Widget build(BuildContext context) {
    final heigh = MediaQuery.of(context).size.height * 1;
    final widt = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      backgroundColor: const Color(0xFFEBEDF0),
      //0xFF00BBF2
      appBar: appbar(),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 35, bottom: 35),
              child: Text(
                "Your Lo Service",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  //color: Color(0xFF37a497)
                ),
              ),
            ),
            // SizedBox(height: heigh * 0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => Get.to(() => const ClientRegistrationScreen()),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF00bbf2),
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        // color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      height: 185,
                      width: 185,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.add,
                            size: 50,
                            color: AppColor.appColor,
                          ),
                          Text(
                            "Client Registration",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                      //color: Colors.white,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Get.to(() => const ClientInfoScreen()),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF00bbf2),
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        //color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      // height: heigh * 0.25,
                      // width: widt * 0.45,
                      height: 185,
                      width: 185,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.date_range,
                            size: 50,
                            color: AppColor.appColor,
                          ),
                          Text(
                            "Next date scheduled",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                      //color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: heigh * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF00bbf2),
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      // color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    height: 185,
                    width: 185,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.scale,
                          size: 50,
                          color: AppColor.appColor,
                        ),
                        Text(
                          "View Case Date",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    //color: Colors.white,
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF00bbf2),
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      // color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    // height: heigh * 0.25,
                    // width: widt * 0.45,
                    height: 185,
                    width: 185,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.history,
                          size: 50,
                          color: AppColor.appColor,
                        ),
                        Text(
                          "Case history",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    //color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      //           ElevatedButton(
      //     onPressed: () => Get.to(() => const ClientsScreen()),
      //     child: Text("Clients")),
      // ElevatedButton(
      //     onPressed: () => Get.to(() => const NextDateScheduled()),
      //     child: Text("Scheduled")),
    );
  }

  AppBar appbar() {
    return AppBar(
      //backgroundColor: const Color(0xFF1E336A),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Hello,",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColor.appColor,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            username1,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 245, 228, 228)),
          ),
        ],
      ),
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 0),
        child: ProfilePicture(
          name: username1,
          radius: 35,
          fontsize: 18,
          count: 1,
          random: false,
        ),
      ),
      actions: [
        // Widget for implementing the three-dot menu
        PopupMenuButton(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: InkWell(
                  onTap: () {},
                  child: const Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(width: 10),
                      Text('Log Out')
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  onTap: () {},
                  child: const Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 10),
                      Text('Settings')
                    ],
                  ),
                ),
              ),
            ];
          },
        ),
      ],
    );
  }
}
