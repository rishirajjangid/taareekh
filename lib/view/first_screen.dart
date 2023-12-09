import 'package:flutter/material.dart';
import '../res/assets/image_assets.dart';
import '../res/services/first_services.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  FirstServices firstServices = FirstServices();
  @override
  void initState() {
    super.initState();
    firstServices.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    final heigh = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 200),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: heigh * 0.2,
                  child: Image.asset(
                    ImageAssets.logo,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Welcome Back",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 50),
              const CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
}
