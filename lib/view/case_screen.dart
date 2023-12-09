import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:get/get.dart';
import 'package:tr/view/client_info_screen.dart';
import 'package:tr/view/scheduled_form.dart';
// import 'package:tr/view/client_info_screen.dart';
// import 'package:tr/view/client_registration_screen.dart';

class CaseScreen extends StatefulWidget {
  const CaseScreen({super.key});

  @override
  State<CaseScreen> createState() => _CaseScreenState();
}

class _CaseScreenState extends State<CaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFEBEDF0),
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            // Widget for the search
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  // onPressed: () {},
                  onPressed: () => Get.to(() => const ScheduledForm()),
                  icon: const Icon(
                    Icons.add,
                    size: 35,
                    color: Colors.white,
                  )),
            ),
          ],
          // backgroundColor: const Color(0xFF1E336A),
          title: const Text(
            'Case',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
          child: Column(
            children: [
              Container(child: _searchBar()),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 8,
                  itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        // onTap: () {},
                        // onTap: () => Get.to(() => const ClientInfoScreen()),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: const Padding(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ProfilePicture(
                                  name: 'Rahul',
                                  radius: 30,
                                  fontsize: 25,
                                  count: 1,
                                  random: false,
                                ),
                                // CircleAvatar(
                                //   radius: 30,
                                //   backgroundImage: NetworkImage(
                                //       'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'),
                                // ),
                                SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rahul jaipur",
                                        style: TextStyle(
                                          color: Color(0xFF1E1E1E),
                                          fontSize: 18,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                          // height: 0,
                                        )),
                                    SizedBox(height: 5),
                                    Text(
                                      "+91 9799762200",
                                      style: TextStyle(
                                        color: Color(0xFF1E1E1E),
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          "Court:",
                                          style: TextStyle(
                                            color: Color(0xFF807979),
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "High Court",
                                          style: TextStyle(
                                            color: Color(0xFF1BB42A),
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 40),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Case Date:",
                                          style: TextStyle(
                                            color: Color(0xFF807979),
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "12/10/2023",
                                          style: TextStyle(
                                            color: Color(0xFF1E336A),
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Divider()
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class _searchBar extends StatelessWidget {
  const _searchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          child: Row(
            children: [
              Flexible(
                //flex: 1,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: 'Search',
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 18),
                      prefixIcon: Container(
                        padding: const EdgeInsets.all(15),
                        child: const Icon(Icons.search),
                        width: 18,
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
