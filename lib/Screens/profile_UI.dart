// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medhealth/Screens/notification_UI.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "My Profile",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                leading: AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/pix3.png'),
                    ),
                  ),
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/images/pix3.png'),
                // ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "okworejikej@gmail.com",
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "It was successful",
                      style: TextStyle(fontSize: 8, color: Colors.blue),
                    ),
                  ],
                ),
                trailing: Image.asset(
                  'assets/images/profile_fill1.png',
                  fit: BoxFit.cover,
                ),
                //   trailing: IconButton(
                //     onPressed: () {},
                //     icon: Icon(Icons.add_a_photo),
                //     color: Colors.black,
                //   ),
              ),
              SizedBox(
                height: 40,
              ),
              Card(
                elevation: 0.5,
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.local_hospital),
                    color: Colors.black,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Prescription",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 0.5,
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.list_alt_outlined),
                    color: Colors.black,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Wishlist",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 0.5,
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person),
                    color: Colors.black,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Invite Friends",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 0.5,
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.addchart_outlined),
                    color: Colors.black,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Addresses",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 0.5,
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.reset_tv_outlined),
                    color: Colors.black,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Lab Rsults",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 0.5,
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.local_hospital),
                    color: Colors.black,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pill Reminder",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Card(
                  elevation: 0.5,
                  child: ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.local_hospital),
                      color: Colors.black,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Doctor Colsultation",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
