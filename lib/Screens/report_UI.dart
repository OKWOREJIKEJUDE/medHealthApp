// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:medhealth/Screens/notification_UI.dart';

// class Report extends StatefulWidget {
//   const Report({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<Report> createState() => _ReportState();
// }

// class _ReportState extends State<Report> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   centerTitle: true,
//       //   actions: [
//       //     IconButton(
//       //       onPressed: () {
//       //         Navigator.push(context,
//       //             MaterialPageRoute(builder: (context) => NotificationIconn()));
//       //       },
//       //       icon: Icon(Icons.notifications),
//       //       color: Colors.white,
//       //     )
//       //   ],
//       //   backgroundColor: Color(0xff0957DF),
//       //   leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
//       // ),
//       body: Scaffold(
//         body: Padding(
//           padding: EdgeInsets.only(top: 20, bottom: 40, right: 10, left: 10),
//           child: Column(
//             children: [
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 15),
//                   child: Text(
//                     "Diagnostics",
//                     style:
//                         TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   child: Text(
//                     "Start Call",
//                     style: TextStyle(
//                       fontSize: 17,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueAccent,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
