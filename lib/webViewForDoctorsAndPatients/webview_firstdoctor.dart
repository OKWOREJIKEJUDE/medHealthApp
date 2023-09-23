// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewForFirstDoctor extends StatelessWidget {
  const WebviewForFirstDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff0957DF),
        title: Text('Video/Audio Call'),
      ),
      body: Container(
        height: double.infinity,
        child: WebView(
          initialUrl: 'https://meet.jit.si/meetDrJoyAnozie',
          //initialUrl: 'https://meet.jit.si/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
