// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Notificationn extends StatefulWidget {
  const Notificationn({super.key});

  @override
  State<Notificationn> createState() => _NotificationnState();
}

class _NotificationnState extends State<Notificationn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.white,
          )
        ],
        backgroundColor: Color(0xff0957DF),
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 40),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Notifications",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
