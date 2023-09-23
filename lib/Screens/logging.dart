// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medhealth/Screens/notification_UI.dart';
import 'package:medhealth/screen/bloodsugar.dart';
import 'package:medhealth/screen/colesterol.dart';
import 'package:medhealth/screen/prostrates.dart';
import 'package:medhealth/screen/temperature.dart';

class Logging extends StatefulWidget {
  const Logging({super.key});

  @override
  State<Logging> createState() => _LoggingState();
}

class _LoggingState extends State<Logging> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Notificationn()));
            },
            icon: const Icon(Icons.notifications),
            color: Colors.white,
          )
        ],
        backgroundColor: const Color(0xff0957DF),
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 40),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Logging",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                //height: MediaQuery.of(context).size.height,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 17,
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Temperature()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.3)),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image(
                                image: AssetImage('assets/images/temp2.png'),
                                height: 150,
                                width: double.infinity,
                                fit: BoxFit.cover),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "Temperature",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff0957DF)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BloodSugar()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.3)),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/images/bloodsugar.png'),
                                height: 150,
                                width: double.infinity,
                                fit: BoxFit.cover),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "Blood Sugar",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff0957DF)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Prostrates()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.3)),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/images/prostrates.png'),
                                height: 150,
                                width: double.infinity,
                                fit: BoxFit.cover),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "Prostrates",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff0957DF)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Colesterol()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.3)),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/images/colesterol.png'),
                                height: 150,
                                width: double.infinity,
                                fit: BoxFit.cover),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "Colesterol",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff0957DF)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage('assets/images/kidneytest.png'),
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Kidney Test",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff0957DF)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage(
                                  'assets/images/liverfunctiontest.png'),
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Liver Function Test",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff0957DF)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   padding: const EdgeInsets.all(8),
                    //   color: Colors.teal[600],
                    //   child: const Text('Revolution, they...'),
                    // ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
