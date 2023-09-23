// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'notification_UI.dart';

class NavNearby extends StatefulWidget {
  const NavNearby({super.key});

  @override
  State<NavNearby> createState() => _NavNearbyState();
}

class _NavNearbyState extends State<NavNearby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Nearby Hospitals/Clinics'),
        backgroundColor: const Color(0xff0957DF),
      ),
      body: Container(
        height: double.infinity,
        child: WebView(
          initialUrl:
              'https://www.google.com/maps/search/hospitals+%26+clinics/@6.8499239,7.3564396,13z/data=!3m1!4b1?entry=ttu',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
