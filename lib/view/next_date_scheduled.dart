import 'package:flutter/material.dart';
//import 'package:tr/view/scheduled_form.dart';

class NextDateScheduled extends StatefulWidget {
  const NextDateScheduled({super.key});

  @override
  State<NextDateScheduled> createState() => _NextDateScheduledState();
}

class _NextDateScheduledState extends State<NextDateScheduled> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          // Widget for the search
          IconButton(
              onPressed: () {},
              // onPressed: () => Get.to(() => const ScheduledForm()),
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              )),
          //IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          InkWell(
              onTap: () {},
              child: const Icon(
                Icons.search,
                color: Colors.white,
              )),

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
        backgroundColor: const Color(0xFF1E336A),
        title: const Text(
          'DateScheduled',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              //onTap: () => Get.to(() => const ClientInfoScreen()),
              child: const Card(
                // elevation: 1,
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rahul jaipur",
                            style: TextStyle(
                              color: Color(0xFF1E1E1E),
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
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
          ],
        ),
      ),
    );
  }
}
