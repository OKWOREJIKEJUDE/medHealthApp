// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Temperature extends StatelessWidget {
  const Temperature({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
            color: Colors.white,
          )
        ],
        backgroundColor: const Color(0xff0957DF),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 40),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Temperature",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image(
                image: AssetImage('assets/images/temp1.png'),
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 0),
                child: Text(
                  "HPI",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 2, top: 12),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Running Nose",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0957DF)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 2, top: 12),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Congestion",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0957DF)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 0),
                child: Text(
                  "Assesment Plan",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 2, top: 12),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Cold",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0957DF)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 2, top: 12),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Tylenol",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0957DF)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 0),
                child: Text(
                  "Current Disposition",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 2, top: 12),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Discharged",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0957DF)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
