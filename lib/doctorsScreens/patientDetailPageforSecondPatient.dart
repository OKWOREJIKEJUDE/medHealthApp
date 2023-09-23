// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:medhealth/webViewForDoctorsAndPatients/webview_seconddoctor.dart';

class PatientDetailPageForSecondPatient extends StatelessWidget {
  const PatientDetailPageForSecondPatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     Align(
          //       alignment: Alignment.topLeft,
          //       child: IconButton(
          //         icon: Icon(Icons.arrow_back_sharp),
          //         color: Color(0xff0957DF),
          //         onPressed: () {
          //           Navigator.of(context).pop();
          //         },
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(left: 70),
          //       child: Align(
          //         alignment: Alignment.topCenter,
          //         child: Text(
          //           'Suleiman Usman',
          //           style: TextStyle(
          //               fontSize: 30,
          //               fontWeight: FontWeight.normal,
          //               color: Colors.black),
          //           //textAlign: TextAlign.center,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 2, bottom: 20),
            child: Stack(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'assets/images/patient1.png',
                    fit: BoxFit.cover,
                  ),
                  height: 400.0,
                  width: double.infinity,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4, left: 4),
                      child: Container(
                        height: 30,
                        width: 90,
                        child: MaterialButton(
                          child: Text(
                            "Voice Call",
                            style: TextStyle(fontSize: 10),
                          ),
                          onPressed: () {
                            {
                              //todo
                            }
                          },
                          color: Color(0xff5188FD),
                          textColor: Color.fromARGB(255, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 4, left: 4),
                      child: Container(
                        height: 30,
                        width: 90,
                        child: MaterialButton(
                          child: Text(
                            "Video Call",
                            style: TextStyle(fontSize: 10),
                          ),
                          //todo... This is where the gitsi meet Webview started....
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => WebViewPage(),
                            //   ),
                            // );
                          },
                          color: Color(0xff5E3CE4),
                          textColor: Color.fromARGB(255, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 4, left: 4),
                      child: Container(
                        height: 30,
                        width: 90,
                        child: MaterialButton(
                          child: Container(
                            child: Text(
                              "Message",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          onPressed: () {
                            {
                              //todo
                            }
                          },
                          color: Color(0xffF0AA78),
                          textColor: Color.fromARGB(255, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Eurological Patient',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                SizedBox(
                  height: 3,
                ),
                Text('UNN Medical Center',
                    style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 8),
                    Icon(Icons.star, color: Color(0xffFFC107)),
                    Icon(Icons.star, color: Color(0xffFFC107)),
                    Icon(Icons.star, color: Color(0xffFFC107)),
                    Icon(Icons.star, color: Color(0xffFFC107)),
                    Icon(Icons.star, color: Color(0xffFFC107)),
                  ],
                ),
                SizedBox(height: 80),
                Text('About Patient',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000))),
                SizedBox(height: 15),
                Text(
                  """
Father of 4, 162lbs, 5’7, Married to Annie Winston
Address: Aguero kimbely streets, Lagos state, Nigeria.
Next of Kin: Asher Winston;

Contact Address: +23461-223-3398""",
                  //style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: MaterialButton(
                      child: Text("Join Call"),
                      onPressed: () {
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      WebviewForSecondDoctor()));
                        }
                      },
                      color: Color(0xff0957DF),
                      textColor: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
