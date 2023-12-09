import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../controllers/otp_controller.dart';
import '../res/components/round_button.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final pin = TextEditingController();
  String? otp;
  dynamic mobileno = Get.arguments;
  bool invalidOtp = false;

  final otpCr = Get.put(OtpController());

  @override
  Widget build(BuildContext context) {
    final heigh = MediaQuery.of(context).size.height * 1;
    final widt = MediaQuery.of(context).size.width * 1;
    final defaultPinTheme = PinTheme(
      height: heigh * 0.06,
      width: widt * 0.13,
      textStyle: const TextStyle(
          fontSize: 15, color: Colors.black, fontWeight: FontWeight.w400),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(5),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
        border: Border.all(color: const Color(0xFF00BBF2)),
        borderRadius: BorderRadius.circular(5));

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
        border: Border.all(color: const Color(0xFF00BBF2)),
      ),
    );
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: widt * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //const SizedBox(height: 55),
                  SizedBox(height: heigh * 0.10),
                  SizedBox(
                    // width: 300,
                    // height: 300,
                    height: heigh * 0.30,
                    child: const Image(
                      image: AssetImage("assets/images/3.png"),
                    ),
                  ),
                  SizedBox(height: heigh * 0.08),
                  const Text("Verificatio",
                      style: TextStyle(
                        // color: Colors.grey[400],
                        fontSize: 20,
                        fontFamily: 'Nexa Bold',
                        fontWeight: FontWeight.w700,
                      )),
                  const SizedBox(height: 5),
                  Text("Enter Your 6 Digit OTP",
                      style: TextStyle(
                        color: Colors.grey[00],
                        fontSize: 15,
                        fontFamily: 'Nexa Light',
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(height: 20),
                  Center(
                      child: Pinput(
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                    submittedPinTheme: submittedPinTheme,
                    length: 6,
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    controller: pin,
                    showCursor: true,
                    onCompleted: (pin) async {
                      otp = pin;
                    },
                  )),
                  // const SizedBox(height: 20),
                  SizedBox(height: heigh * 0.03),
                  RoundButton(
                    height: 40,
                    width: 120,
                    title: 'Verify'.tr,
                    loading: otpCr.loading.value,
                    onPress: () {
                      final otp = pin.text;

                      otpCr.accountLoginFunction(mobileno, otp);
                      //stopTimer();
                    },
                    child: const Text("data"),
                  ),

                  SizedBox(height: heigh * 0.044),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Didnt't Received Any code? \n ",
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontFamily: 'Nexa Light',
                        fontWeight: FontWeight.w700,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Resend New Code',
                          style: const TextStyle(
                            color: Color(0xFF00BBF2),
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
