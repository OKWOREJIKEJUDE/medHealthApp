// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medhealth/Screens/navnearby.dart';
import 'package:medhealth/Screens/home_UI.dart';
import 'package:medhealth/Screens/booking_UI.dart';
import 'package:medhealth/Screens/logging.dart';
import 'package:medhealth/Screens/message_UI.dart';
import 'package:medhealth/Screens/profile_UI.dart';
import 'package:medhealth/Screens/report_UI.dart';

// class BottomNav extends StatefulWidget {
//   const BottomNav({Key? key}) : super(key: key);

//   @override
//   State<BottomNav> createState() => _BottomNavState();
// }

// class _BottomNavState extends State<BottomNav> {
//   DateTime backPressedTime = DateTime.now();
//   int mycurrent_index = 0;

//   final tabs = [
//     Homee(),
//     Report(),
//     Booking(),
//     Message(),
//     Profile(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () => _onBackButtonDoubleClicked(context),
//       child: Scaffold(
//         extendBody: true,
//         body: tabs[mycurrent_index],
//         bottomNavigationBar: Container(
//           //color: Color(0xff0957DF),
//           height: 50,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(),
//             boxShadow: [
//               BoxShadow(
//                   color: Color(0xff000000).withOpacity(0.4),
//                   spreadRadius: 0,
//                   blurRadius: 10),
//             ],
//           ),
//           child: ClipRRect(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(5),
//               topRight: Radius.circular(5),
//             ),
//             child: BottomNavigationBar(
//                 backgroundColor: Color(
//                     0xff0957DF), //todo Navigation bar color here 0xff0957DF
//                 currentIndex: mycurrent_index,
//                 type: BottomNavigationBarType.fixed,
//                 selectedLabelStyle: TextStyle(
//                   fontSize: 12,
//                 ),
//                 //showSelectedLabels: true,
//                 //showUnselectedLabels: false,

//                 items: [
//                   BottomNavigationBarItem(
//                     icon: ImageIcon(
//                       AssetImage("assets/images/home_normal.png"),
//                       color: Color.fromARGB(255, 255, 255, 255),
//                     ),
//                     label: 'Home',
//                   ),
//                   BottomNavigationBarItem(
//                     icon: ImageIcon(
//                       AssetImage("assets/images/report.png"),
//                       color: Color.fromARGB(255, 255, 255, 255),
//                     ),
//                     label: 'Report',
//                   ),
//                   BottomNavigationBarItem(
//                     icon: ImageIcon(
//                       AssetImage("assets/images/booking.png"),
//                       color: Color.fromARGB(255, 255, 255, 255),
//                     ),
//                     label: 'Booking',
//                   ),
//                   BottomNavigationBarItem(
//                     icon: ImageIcon(
//                       AssetImage("assets/images/message.png"),
//                       color: Color.fromARGB(255, 255, 255, 255),
//                     ),
//                     label: 'Message',
//                   ),
//                   BottomNavigationBarItem(
//                     icon: ImageIcon(
//                       AssetImage("assets/images/profile.png"),
//                       color: Color.fromARGB(255, 255, 255, 255),
//                     ),
//                     label: 'Profile',
//                   ),
//                 ],
//                 onTap: (index) {
//                   setState(() {
//                     mycurrent_index = index;
//                   });
//                 }),
//           ),
//         ),
//       ),
//     );
//   }

//   Future<bool> _onBackButtonDoubleClicked(BuildContext context) async {
//     final difference = DateTime.now().difference(backPressedTime);
//     backPressedTime = DateTime.now();
//     if (difference >= const Duration(seconds: 2)) {
//       //toast(context, "Click again to close the app");
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text("Click again to close the app"),
//       ));
//       return false;
//     } else {
//       SystemNavigator.pop(animated: true);
//       return true;
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../screen/anomaly_notification.dart';
import 'notification_UI.dart';

class BottomNav extends StatefulWidget {
  final String initialText;

  const BottomNav({Key? key, required this.initialText}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  DateTime backPressedTime = DateTime.now();
  int mycurrent_index = 0;
  late List<Widget> tabs;

  @override
  void initState() {
    super.initState();
    tabs = [
      Homee(initialText: widget.initialText),
      Booking(),
      Profile(),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notificationn()));
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
              // Padding(
              //   padding: const EdgeInsets.only(left: 25),
              //   child: ListTile(
              //     //leading: Icon(Icons.bar_chart),
              //     title: Text(
              //       "Report",
              //       style: TextStyle(
              //           color: Color(0xff0957DF),
              //           fontSize: 18,
              //           fontWeight: FontWeight.bold),
              //     ),
              //     onTap: () {
              //       Navigator.pop(context);
              //       setState(() {
              //         mycurrent_index = 1;
              //       });
              //     },
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ListTile(
                  //leading: Icon(Icons.calendar_today),
                  title: Text(
                    "Booking",
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
              // Padding(
              //   padding: const EdgeInsets.only(left: 25),
              //   child: ListTile(
              //     // leading: Icon(Icons.message),
              //     title: Text(
              //       "Message",
              //       style: TextStyle(
              //           color: Color(0xff0957DF),
              //           fontSize: 18,
              //           fontWeight: FontWeight.bold),
              //     ),
              //     onTap: () {
              //       Navigator.pop(context);
              //       setState(() {
              //         mycurrent_index = 3;
              //       });
              //     },
              //   ),
              // ),
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
                      mycurrent_index = 2;
                    });
                  },
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ListTile(
                  // leading: Icon(Icons.exit_to_app),
                  title: Text(
                  
                    "Message",
                    style: TextStyle(
                        color: Color(0xff0957DF),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    AndroidIntent intent = AndroidIntent(
                      action: 'android.intent.action.SENDTO',
                      data:
                          'sms:07067015404', // Replace with recipient's number
                      arguments: {'sms_body': '                           '},
                    );
                    intent.launch();
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
                // BottomNavigationBarItem(
                //   icon: ImageIcon(
                //     AssetImage("assets/images/report.png"),
                //     color: Color.fromARGB(255, 255, 255, 255),
                //   ),
                //   label: 'Report',
                // ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/booking.png"),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  label: 'Booking',
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

// class Homee extends StatefulWidget {
//   final String initialText;

//   const Homee({Key? key, required this.initialText}) : super(key: key);

//   @override
//   State<Homee> createState() => _HomeeState();
// }

// class _HomeeState extends State<Homee> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(widget.initialText),
//       ),
//     );
//   }
// }

// class Report extends StatefulWidget {
//   @override
//   State<Report> createState() => _ReportState();
// }

// class _ReportState extends State<Report> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Report"),
//       ),
//       body: Center(
//         child: Text("Report Page"),
//       ),
//     );
//   }
// }

// class Booking extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Booking"),
//       ),
//       body: Center(
//         child: Text("Booking Page"),
//       ),
//     );
//   }
// }

// class Message extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Message"),
//       ),
//       body: Center(
//         child: Text("Message Page"),
//       ),
//     );
//   }
// }

// class Profile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Profile"),
//       ),
//       body: Center(
//         child: Text("Profile Page"),
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class BottomNav extends StatefulWidget {
//   final String initialText;

//   const BottomNav({Key? key, required this.initialText}) : super(key: key);

//   @override
//   State<BottomNav> createState() => _BottomNavState();
// }

// class _BottomNavState extends State<BottomNav> {
//   DateTime backPressedTime = DateTime.now();
//   int mycurrent_index = 0;
//   late List<Widget> tabs;

//   @override
//   void initState() {
//     super.initState();
//     tabs = [
//       Homee(initialText: widget.initialText),
//       Report(),
//       Booking(),
//       Message(),
//       Profile(),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () => _onBackButtonDoubleClicked(context),
//       child: Scaffold(
//         extendBody: true,
//         body: tabs[mycurrent_index],
//         bottomNavigationBar: Container(
//             // ... Other properties ...
//             ),
//       ),
//     );
//   }

//   Future<bool> _onBackButtonDoubleClicked(BuildContext context) async {
//     final difference = DateTime.now().difference(backPressedTime);
//     backPressedTime = DateTime.now();
//     if (difference >= const Duration(seconds: 2)) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text("Click again to close the app"),
//         ),
//       );
//       return false;
//     } else {
//       SystemNavigator.pop(animated: true);
//       return true;
//     }
//   }
// }

// class Homee extends StatelessWidget {
//   final String initialText;

//   const Homee({Key? key, required this.initialText}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home"),
//       ),
//       body: Center(
//         child: Text(initialText),
//       ),
//     );
//   }
// }
