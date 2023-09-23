// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  // final String websiteUrl = 'https://meet.jit.si/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff0957DF),
        title: Text('Nearby Hospital/Clinic'),
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
