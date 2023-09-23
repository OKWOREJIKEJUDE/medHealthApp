// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medhealth/Screens/notification_UI.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

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
        body: Padding(
          padding: EdgeInsets.only(top: 20, bottom: 50, left: 20, right: 20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Messages",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 0, right: 0),
                padding: EdgeInsets.only(bottom: 3),
                height: 40,
                width: double.infinity,
                //width: 260,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  children: <Widget>[
                    Card(
                        child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Divine",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text("02:15pm",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal)),
                        ],
                      ),
                      subtitle: Text(
                          "Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.normal)),
                      leading: AspectRatio(
                        aspectRatio: 1,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4.0)),
                          child: Image.network(
                            "https://images.unsplash.com/photo-1547721064-da6cfb341d50",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  children: <Widget>[
                    Card(
                        child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ejyke",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text("10:04pm",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal)),
                        ],
                      ),
                      subtitle: Text(
                          "Internet tend to repeat predefined chunks as necessary Lorem Ipsum generators on the ",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.normal)),
                      leading: AspectRatio(
                        aspectRatio: 1,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4.0)),
                          child: Image.network(
                            "https://images.unsplash.com/photo-1547721064-da6cfb341d50",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
