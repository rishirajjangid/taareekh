import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:get/get.dart';
import 'package:tr/view/client_info_screen.dart';
import 'package:tr/view/client_registration_screen.dart';
import '../controllers/client_regis_controller.dart';

class ClientsScreen extends StatefulWidget {
  const ClientsScreen({super.key});

  @override
  State<ClientsScreen> createState() => _ClientsScreenState();
}

class _ClientsScreenState extends State<ClientsScreen> {
  final clientListCont = Get.put(ClientRegisController());

  @override
  void initState() {
    super.initState();
    clientListCont.clientList();
  }

  @override
  Widget build(BuildContext context) {
    final heigh = MediaQuery.of(context).size.height * 1;
    final widt = MediaQuery.of(context).size.width * 1;
    return Scaffold(
        backgroundColor: const Color(0xFFEBEDF8),
        appBar: AppBar(
          elevation: 0,
          //automaticallyImplyLeading: false,
          actions: [
            // Widget for the search
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  // onPressed: () {},
                  onPressed: () =>
                      Get.to(() => const ClientRegistrationScreen()),
                  icon: const Icon(
                    Icons.add,
                    size: 35,
                    color: Colors.white,
                  )),
            ),
          ],
          //backgroundColor: const Color(0xFF1E336A),
          title: const Text(
            'Clients',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(children: [
            Container(child: _searchBar()),
            Obx(
              () => ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: clientListCont.varClientList.value.data?.length ?? 0,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      // onTap: () {},
                      onTap: () => Get.to(() => const ClientInfoScreen()),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 8, left: 10, right: 10),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                              const SizedBox(width: 15),
                              SizedBox(
                                width: widt * 0.42,
                                //color: Colors.amber,
                                child: Column(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${clientListCont.varClientList.value.data?[index].clientName}",

                                      style: const TextStyle(
                                        color: Color(0xFF1E1E1E),
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                      // textAlign: TextAlign.left,
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        const Text(
                                          "Contact:",
                                          style: TextStyle(
                                            color: Color(0xFF807979),
                                            fontSize: 13,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          "+91 ${clientListCont.varClientList.value.data?[index].mobileNo.toString()}",
                                          style: const TextStyle(
                                            color: Color(0xFF1E1E1E),
                                            fontSize: 13,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        const Text(
                                          "Court:",
                                          style: TextStyle(
                                            color: Color(0xFF807979),
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          //'gg',
                                          "${clientListCont.varClientList.value.data?[index].courtName}",

                                          style: const TextStyle(
                                            color: Color(0xFF1BB42A),
                                            fontSize: 13,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: widt * 0.03),
                              Container(
                                width: widt * 0.25,
                                // color: Colors.green,
                                // margin: EdgeInsets.only(top: 50),
                                child: const Column(
                                  children: [
                                    Text(
                                      "Case Date",
                                      style: TextStyle(
                                        //color: Color(0xFF1BB42A),
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w800,
                                        height: 0,
                                      ),
                                    ),
                                    Text(
                                      "12/10/2023",
                                      style: TextStyle(
                                        color: Color(0xFF1E336A),
                                        fontSize: 15,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ],
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
          ]),
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
