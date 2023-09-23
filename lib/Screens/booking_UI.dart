// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:medhealth/Model/datas.dart';
import 'package:medhealth/Screens/doctorsDetailsPage_UI.dart';
import 'package:medhealth/Screens/notification_UI.dart';

class Booking extends StatelessWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: (context) => NotificationIconn()));
      //       },
      //       icon: Icon(Icons.notifications),
      //       color: Colors.white,
      //     )
      //   ],
      //   backgroundColor: Color(0xff0957DF),
      //   leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      // ),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 10),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Booking",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: listData.length,
                    itemBuilder: (context, index) {
                      MyDatas myBookingDatas = listData[index];
                      return SizedBox(
                        height: 100,
                        child: Card(
                          elevation: 0.5,
                          child: Center(
                            child: ListTile(
                                //dense: false,
                                leading: AspectRatio(
                                  aspectRatio: 1,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(4.0)),
                                    child: Image.asset(
                                      myBookingDatas.imageURL,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                title: SizedBox(
                                  height: 40,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        myBookingDatas.name,
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "UNN Medical Center, MBBS",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                                subtitle: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    MaterialButton(
                                      child: Text(
                                        "Voice Call",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      onPressed: () {
                                        {
                                          //todo
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      DoctorsDetailsPage(
                                                          myDatas:
                                                              myBookingDatas)));
                                        }
                                      },
                                      color: Color(0xff5188FD),
                                      textColor:
                                          Color.fromARGB(255, 255, 255, 255),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    MaterialButton(
                                      child: Text(
                                        "Video Call",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      onPressed: () {
                                        {
                                          //todo
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      DoctorsDetailsPage(
                                                          myDatas:
                                                              myBookingDatas)));
                                        }
                                      },
                                      color: Color(0xff5E3CE4),
                                      textColor:
                                          Color.fromARGB(255, 255, 255, 255),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DoctorsDetailsPage(
                                                  myDatas: myBookingDatas)));
                                }),
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
