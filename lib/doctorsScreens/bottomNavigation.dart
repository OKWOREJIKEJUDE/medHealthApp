// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medhealth/Screens/logging.dart';
import 'package:medhealth/Screens/navnearby.dart';
import 'package:medhealth/doctorsScreens/doctorshome_UI.dart';
import 'package:medhealth/doctorsScreens/doctorsprofile_UI.dart';
// import 'package:medhealth/Screens/home_UI.dart';
// import 'package:medhealth/Screens/booking_UI.dart';
// import 'package:medhealth/Screens/logging.dart';
// import 'package:medhealth/Screens/message_UI.dart';
// import 'package:medhealth/Screens/notification_UI.dart';
// import 'package:medhealth/Screens/profile_UI.dart';
// import 'package:medhealth/Screens/report_UI.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:medhealth/doctorsScreens/home_UI.dart';
// import 'package:medhealth/doctorsScreens/profile_UI.dart';

// import '../screen/anomaly_notification.dart';

class BottomNavForDoctors extends StatefulWidget {
  final String initialText;

  const BottomNavForDoctors({Key? key, required this.initialText})
      : super(key: key);

  @override
  State<BottomNavForDoctors> createState() => _BottomNavForDoctorsState();
}

class _BottomNavForDoctorsState extends State<BottomNavForDoctors> {
  DateTime backPressedTime = DateTime.now();
  int mycurrent_index = 0;
  late List<Widget> tabs;

  @override
  void initState() {
    super.initState();
    tabs = [
      DoctorsHomee(initialText: widget.initialText),
      DoctorsProfile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackButtonDoubleClicked(context),
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Notificationn()));
              },
              icon: Icon(Icons.notifications),
              color: Colors.white,
            )
          ],
          backgroundColor: Color(0xff0957DF),
          // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 150,
                  padding: EdgeInsets.only(top: 60, left: 35),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            'assets/images/pix3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.initialText,
                          style: TextStyle(
                              color: Color(0xff0957DF),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ListTile(
                  //leading: Icon(Icons.home),
                  title: Text(
                    "Home",
                    style: TextStyle(
                        color: Color(0xff0957DF),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      mycurrent_index = 0;
                    });
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ListTile(
                  // leading: Icon(Icons.person),
                  title: Text(
                    "Profile",
                    style: TextStyle(
                        color: Color(0xff0957DF),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      mycurrent_index = 1;
                    });
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ListTile(
                  // leading: Icon(Icons.exit_to_app),
                  title: Text(
                    "Logging",
                    style: TextStyle(
                        color: Color(0xff0957DF),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Logging()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ListTile(
                  // leading: Icon(Icons.exit_to_app),
                  title: Text(
                    "Nearby",
                    style: TextStyle(
                        color: Color(0xff0957DF),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NavNearby()));
                  },
                ),
              ),
              // Spacer(),
              // Divider(),
            ],
          ),
        ),
        body: tabs[mycurrent_index],
        bottomNavigationBar: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(),
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000).withOpacity(0.4),
                spreadRadius: 0,
                blurRadius: 10,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
            child: BottomNavigationBar(
              backgroundColor: Color(0xff0957DF),
              currentIndex: mycurrent_index,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: TextStyle(
                fontSize: 12,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/home_normal.png"),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/profile.png"),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  label: 'Profile',
                ),
              ],
              onTap: (index) {
                setState(() {
                  mycurrent_index = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _onBackButtonDoubleClicked(BuildContext context) async {
    final difference = DateTime.now().difference(backPressedTime);
    backPressedTime = DateTime.now();
    if (difference >= const Duration(seconds: 2)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Click again to close the app"),
        ),
      );
      return false;
    } else {
      SystemNavigator.pop(animated: true);
      return true;
    }
  }
}
