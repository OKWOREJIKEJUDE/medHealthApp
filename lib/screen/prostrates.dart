// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Prostrates extends StatelessWidget {
  const Prostrates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prostrates'),
      ),
      body: Container(
        height: double.infinity,
        child: WebView(
          initialUrl:
              'https://www.healthymale.org.au/news/how-you-can-improve-your-prostate-health',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
