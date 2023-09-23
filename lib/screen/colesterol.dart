// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Colesterol extends StatelessWidget {
  const Colesterol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colesterol'),
      ),
      body: Container(
        height: double.infinity,
        child: WebView(
          initialUrl:
              'https://www.healthline.com/nutrition/how-to-lower-cholesterol',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
