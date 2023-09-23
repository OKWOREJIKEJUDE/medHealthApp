// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:medhealth/Screens/confirmAppointmentPage.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Model/datas.dart';

class DoctorsDetailsPage extends StatelessWidget {
  final MyDatas myDatas;
  const DoctorsDetailsPage({Key? key, required this.myDatas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   actions: [],
      //   title: Center(
      //     child: Text(
      //       myDatas.name,
      //       style: TextStyle(
      //           fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
      //       textAlign: TextAlign.center,
      //     ),
      //   ),
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back_sharp),
      //     color: Color(0xff0957DF),
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     },
      //   ),
      // ),
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
          //           myDatas.name,
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
                    myDatas.imageURL,
                    fit: BoxFit.cover,
                  ),
                  height: 300.0,
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
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 4, left: 4),
                    //   child: Container(
                    //     height: 30,
                    //     width: 90,
                    //     child: MaterialButton(
                    //       child: Text(
                    //         "Video Call",
                    //         style: TextStyle(fontSize: 10),
                    //       ),
                    //       //todo... This is where the gitsi meet Webview started....
                    //       onPressed: _launchURL,
                    //       color: Color(0xff5E3CE4),
                    //       textColor: Color.fromARGB(255, 255, 255, 255),
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(5),
                    //       ),
                    //     ),
                    //   ),
                    // ),

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
                Text('Medicine & Heart Specialist',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                SizedBox(
                  height: 3,
                ),
                Text('UNN Medical Center, MBBS, FCPS',
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
                SizedBox(height: 20),
                Row(
                  children: [
                    Column(
                      children: [
                        Text('Patients',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                                color: Colors.black)),
                        Text('1.08k',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0957DF))),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        Text('Experience',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                                color: Colors.black)),
                        Text('8 Years',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0957DF))),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        Text('Reviews',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                                color: Colors.black)),
                        Text('5.18k',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0957DF))),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text('About Doctor',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000))),
                SizedBox(height: 15),
                Text(
                  myDatas.description,
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
                      child: Text("Book an Appointment"),
                      onPressed: () {
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ConfirmAppointmentPage()));
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

  _launchURL() async {
    //final Uri url = Uri.parse('https://flutter.dev');
    final Uri url = Uri.parse('https://meet.jit.si');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
