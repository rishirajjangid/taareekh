import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tr/controllers/login_controller.dart';
import 'package:tr/res/assets/image_assets.dart';

import '../res/components/round_button.dart';
import '../res/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginCr = Get.put(LoginController());
  final mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final heigh = MediaQuery.of(context).size.height * 1;
    // final widt = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: heigh * 0.10),
                SizedBox(
                  height: heigh * 0.30,
                  //width: 280,
                  child: Image.asset(
                    ImageAssets.logo,
                  ),
                ),

                SizedBox(
                  height: heigh * .05,
                ),
                // const Align(
                //   alignment: Alignment.centerLeft,
                //   child:
                const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                // ),
                SizedBox(height: heigh * .01),

                const Text(
                  "Enter Your Mobile Number",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal),
                ),

                SizedBox(height: heigh * .04),

                ////////////// Form//////
                Form(
                  autovalidateMode: AutovalidateMode.always,
                  child: TextFormField(
                    controller: loginCr.mobileController.value,
                    focusNode: loginCr.mobileFocusNode.value,
                    validator: (value) {
                      if (value!.isEmpty) {
                        // return "Please Enter a Phone Number";
                      } else if (!RegExp(
                              r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
                          .hasMatch(value)) {
                        return "Please Enter a Valid Phone Number";
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {
                      Utils.fieldFocusChange(
                          context,
                          loginCr.mobileFocusNode.value,
                          loginCr.mobileFocusNode.value);
                    },
                    decoration: InputDecoration(
                        label: Text(
                          'Mobile No'.tr,
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(15, 0, 5, 5),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        prefixText: '+91 ',
                        prefixStyle: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    keyboardType: TextInputType.phone,
                  ),
                ),

                SizedBox(height: heigh * .02),

                ////////////////////Button///////////
                RoundButton(
                  height: 45,
                  width: 300,
                  title: 'Send OTP'.tr,
                  loading: loginCr.loading.value,
                  onPress: () {
                    mobileController.clear();
                    loginCr.accountM();
                  },
                  child: const Text("data"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
