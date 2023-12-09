import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tr/view/case_screen.dart';
import 'package:tr/view/client_info_screen.dart';
import 'package:tr/view/clients_screen.dart';
import 'package:tr/view/dashboard_screen.dart';
import '../controllers/landing_page_controller.dart';

class LandingPage extends StatelessWidget {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: const Color(0xFF1E336A).withOpacity(0.5),
      fontWeight: FontWeight.w800,
      fontSize: 13);

  final TextStyle selectedLabelStyle = const TextStyle(
      color: Color(0xFF1E336A), fontWeight: FontWeight.w500, fontSize: 12);

  LandingPage({super.key});

  buildBottomNavigationBarExample(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 57,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            unselectedItemColor: Colors.grey,
            selectedItemColor: const Color(0xFF1E336A),
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: const Icon(
                      Icons.home,
                      size: 21.0,
                    ),
                  ),
                  label: 'DashBoard',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: const Icon(
                      Icons.cases_rounded,
                      size: 21.0,
                    ),
                  ),
                  label: 'Case',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: const Icon(
                      Icons.people_alt,
                      size: 21.0,
                    ),
                  ),
                  label: 'Clients',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: const Icon(
                      Icons.person,
                      size: 21.0,
                    ),
                  ),
                  label: 'Profile',
                  backgroundColor: Colors.white),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController =
        Get.put(LandingPageController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar:
          buildBottomNavigationBarExample(context, landingPageController),
      body: Obx(() => IndexedStack(
            index: landingPageController.tabIndex.value,
            children: const [
              DashBoardScreen(),
              CaseScreen(),
              ClientsScreen(),
              ClientInfoScreen(),
            ],
          )),
    ));
  }
}
