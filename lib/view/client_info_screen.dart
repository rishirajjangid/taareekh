import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:get/get.dart';

import '../controllers/client_regis_controller.dart';

class ClientInfoScreen extends StatefulWidget {
  const ClientInfoScreen({super.key});

  @override
  State<ClientInfoScreen> createState() => _ClientInfoScreenState();
}

class _ClientInfoScreenState extends State<ClientInfoScreen> {
  // final clientListCont = Get.put(ClientRegisController());

  // @override
  // void initState() {
  //   super.initState();
  //   clientListCont.clientList();
  // }

  @override
  Widget build(BuildContext context) {
    final heigh = MediaQuery.of(context).size.height * 1;
    final widt = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        // actions: [
        //   // Widget for the search
        //   IconButton(
        //       onPressed: () {},
        //       // onPressed: () => Get.to(() => const ClientRegistrationScreen()),
        //       icon: const Icon(
        //         Icons.add,
        //         color: Colors.white,
        //       )),
        //   //IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        //   InkWell(
        //       onTap: () {},
        //       child: const Icon(
        //         Icons.search,
        //         color: Colors.white,
        //       )),

        //   // Widget for implementing the three-dot menu
        //   PopupMenuButton(
        //     color: Colors.white,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(20),
        //     ),
        //     itemBuilder: (context) {
        //       return [
        //         PopupMenuItem(
        //           child: InkWell(
        //             onTap: () {},
        //             child: const Row(
        //               children: [
        //                 Icon(Icons.logout),
        //                 SizedBox(width: 10),
        //                 Text('Log Out')
        //               ],
        //             ),
        //           ),
        //         ),
        //         PopupMenuItem(
        //           child: InkWell(
        //             onTap: () {},
        //             child: const Row(
        //               children: [
        //                 Icon(Icons.settings),
        //                 SizedBox(width: 10),
        //                 Text('Settings')
        //               ],
        //             ),
        //           ),
        //         ),
        //       ];
        //     },
        //   ),
        // ],
        //backgroundColor: const Color(0xFF1E336A),
        title: const Text(
          'Clients',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: heigh * 0.01,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: heigh * 0.09,
                      child: const ProfilePicture(
                        name: 'Rahul',
                        radius: 30,
                        fontsize: 25,
                        count: 1,
                        random: false,
                      ),
                      // const CircleAvatar(
                      //   radius: 50,
                      //   backgroundImage: NetworkImage(
                      //       'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'),
                      // ),
                    ),
                    SizedBox(width: 15),
                    const Column(
                      children: [
                        Text(
                          "Rahul jaipur",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto'),
                        ),
                        // SizedBox(height: heigh * 0.05),
                        Text(
                          "+91 9878000010",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(),
                SizedBox(height: heigh * 0.01),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                                // left: 10,
                                // right: 10
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Rahul jaipur",
                                        style: TextStyle(
                                          color: Color(0xFF1E1E1E),
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(height: heigh * 0.01),
                                      const Text(
                                        "+91 9799762200",
                                        style: TextStyle(
                                          color: Color(0xFF1E1E1E),
                                          fontSize: 12,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Row(
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
                                      SizedBox(height: heigh * 0.01),
                                      Row(
                                        children: [
                                          const Text(
                                            "Case Date:",
                                            style: TextStyle(
                                              color: Color(0xFF807979),
                                              fontSize: 12,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                          SizedBox(width: widt * 0.02),
                                          const Text(
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
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Divider(),
                          ]),
                    ),
                    // ListView.builder(
                    //   shrinkWrap: true,
                    //   scrollDirection: Axis.vertical,
                    //   itemCount:
                    //       clientListCont.varClientList.value.data?.length ?? 0,
                    //   itemBuilder: (context, index) => Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       InkWell(
                    //         // onTap: () {},
                    //         onTap: () => Get.to(() => const ClientInfoScreen()),
                    //         child: Card(
                    //           shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(10.0),
                    //           ),
                    //           elevation: 5,
                    //           child: Padding(
                    //             padding: const EdgeInsets.only(
                    //                 top: 8, bottom: 8, left: 10, right: 10),
                    //             child: Row(
                    //               // mainAxisAlignment: MainAxisAlignment.start,
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 ProfilePicture(
                    //                   name: 'Rahul',
                    //                   radius: 30,
                    //                   fontsize: 25,
                    //                   count: 1,
                    //                   random: false,
                    //                 ),
                    //                 // CircleAvatar(
                    //                 //   radius: 30,
                    //                 //   backgroundImage: NetworkImage(
                    //                 //       'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'),
                    //                 // ),
                    //                 const SizedBox(width: 15),
                    //                 SizedBox(
                    //                   width: widt * 0.42,
                    //                   //color: Colors.amber,
                    //                   child: Column(
                    //                     // mainAxisAlignment:
                    //                     //     MainAxisAlignment.spaceBetween,
                    //                     crossAxisAlignment:
                    //                         CrossAxisAlignment.start,
                    //                     children: [
                    //                       Text(
                    //                         "${clientListCont.varClientList.value.data?[index].clientName}",

                    //                         style: const TextStyle(
                    //                           color: Color(0xFF1E1E1E),
                    //                           fontSize: 16,
                    //                           fontFamily: 'Roboto',
                    //                           fontWeight: FontWeight.w600,
                    //                           height: 0,
                    //                         ),
                    //                         // textAlign: TextAlign.left,
                    //                       ),
                    //                       const SizedBox(height: 5),
                    //                       Row(
                    //                         children: [
                    //                           const Text(
                    //                             "Contact:",
                    //                             style: TextStyle(
                    //                               color: Color(0xFF807979),
                    //                               fontSize: 13,
                    //                               fontFamily: 'Roboto',
                    //                               fontWeight: FontWeight.w500,
                    //                               height: 0,
                    //                             ),
                    //                           ),
                    //                           const SizedBox(width: 5),
                    //                           Text(
                    //                             "+91 ${clientListCont.varClientList.value.data?[index].mobileNo.toString()}",
                    //                             style: const TextStyle(
                    //                               color: Color(0xFF1E1E1E),
                    //                               fontSize: 13,
                    //                               fontFamily: 'Roboto',
                    //                               fontWeight: FontWeight.w700,
                    //                               height: 0,
                    //                             ),
                    //                           ),
                    //                         ],
                    //                       ),
                    //                       const SizedBox(height: 5),
                    //                       Row(
                    //                         children: [
                    //                           const Text(
                    //                             "Court:",
                    //                             style: TextStyle(
                    //                               color: Color(0xFF807979),
                    //                               fontSize: 12,
                    //                               fontFamily: 'Roboto',
                    //                               fontWeight: FontWeight.w600,
                    //                               height: 0,
                    //                             ),
                    //                           ),
                    //                           const SizedBox(width: 5),
                    //                           Text(
                    //                             //'gg',
                    //                             "${clientListCont.varClientList.value.data?[index].courtName}",

                    //                             style: const TextStyle(
                    //                               color: Color(0xFF1BB42A),
                    //                               fontSize: 13,
                    //                               fontFamily: 'Roboto',
                    //                               fontWeight: FontWeight.w600,
                    //                               height: 0,
                    //                             ),
                    //                           ),
                    //                         ],
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ),
                    //                 SizedBox(width: widt * 0.03),
                    //                 Container(
                    //                   width: widt * 0.25,
                    //                   // color: Colors.green,
                    //                   // margin: EdgeInsets.only(top: 50),
                    //                   child: const Column(
                    //                     children: [
                    //                       Text(
                    //                         "Case Date",
                    //                         style: TextStyle(
                    //                           //color: Color(0xFF1BB42A),
                    //                           fontSize: 16,
                    //                           fontFamily: 'Roboto',
                    //                           fontWeight: FontWeight.w800,
                    //                           height: 0,
                    //                         ),
                    //                       ),
                    //                       Text(
                    //                         "12/10/2023",
                    //                         style: TextStyle(
                    //                           color: Color(0xFF1E336A),
                    //                           fontSize: 15,
                    //                           fontFamily: 'Roboto',
                    //                           fontWeight: FontWeight.w700,
                    //                           height: 0,
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 )
                    //               ],
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       // Divider()
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
