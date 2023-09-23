// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FirstButtomSheet extends StatelessWidget {
  const FirstButtomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Icon(
              Icons.search,
              size: 45,
              color: Color(0xffc4c4c4),
            ),
          ),
        ],
      ),
    );
  }
}
