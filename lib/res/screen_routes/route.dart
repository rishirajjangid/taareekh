import 'package:get/get.dart';
import 'package:tr/res/screen_routes/route_name.dart';
import 'package:tr/view/Landing_Page.dart';
import 'package:tr/view/clients_screen.dart';
import 'package:tr/view/dashboard_screen.dart';
import 'package:tr/view/first_screen.dart';
import 'package:tr/view/login_screen.dart';
import 'package:tr/view/otp_screen.dart';
import 'package:tr/view/registration_screen.dart';

class AppRoute {
  static approute() => [
        GetPage(
          name: RouteName.firstscreen,
          page: () => const FirstScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.loginscreen,
          page: () => const LoginScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.otpscreen,
          page: () => const OtpScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.registrationscreen,
          page: () => const RegistrationScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.dashboard,
          page: () => const DashBoardScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.landingpage,
          page: () => LandingPage(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.clientScreen,
          page: () => const ClientsScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
      ];
}
