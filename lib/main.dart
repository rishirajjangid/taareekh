import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'res/screen_routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        // title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF00bbf2),
            ),
            textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme)
            //useMaterial3: true,
            ),
        getPages: AppRoute.approute());
    //home: const LoginScreen());
  }
}
