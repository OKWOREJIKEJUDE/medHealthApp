// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BloodSugar extends StatelessWidget {
  const BloodSugar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Sugar'),
      ),
      body: Container(
        height: double.infinity,
        child: WebView(
          initialUrl:
              'https://www.webmd.com/diabetes/how-sugar-affects-diabetes',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
