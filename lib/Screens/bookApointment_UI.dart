// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/material.dart';

class BookApointment extends StatefulWidget {
  const BookApointment({Key? key}) : super(key: key);

  @override
  State<BookApointment> createState() => _BookApointmentState();
}

class _BookApointmentState extends State<BookApointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_sharp),
                  iconSize: 25,
                  color: Color(0xff0957DF),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Text(
                  "Book Apointment",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  " ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),

            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.only(bottom: 3),
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.05),
                    spreadRadius: .5,
                    blurRadius: .5,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.only(right: 30, left: 30),
            //   child: InkWell(
            //     onTap: () {
            //       myDropDwonMethod();
            //     },
            //     child: Container(
            //       height: 45,
            //       width: double.infinity,
            //       //color: Color(0xffFAFAFA),
            //       decoration: BoxDecoration(
            //         border: Border.all(color: Colors.grey),
            //         borderRadius: BorderRadius.circular(10),
            //         color: Colors.white,
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.grey.withOpacity(0.05),
            //             spreadRadius: .5,
            //             blurRadius: .5,
            //             offset: Offset(0, 1), // changes position of shadow
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

//   void myDropDwonMethod() {
// // Step 1.
//     String dropdownValue = 'Dog';
// // Step 2.
//     DropdownButton<String>(
//       // Step 3.
//       value: dropdownValue,
//       // Step 4.
//       items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
//           .map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(
//             value,
//             style: TextStyle(fontSize: 30),
//           ),
//         );
//       }).toList(),
//       // Step 5.
//       onChanged: (String? newValue) {
//         setState(() {
//           dropdownValue = newValue!;
//         });
//       },
//     );
//   }
}
