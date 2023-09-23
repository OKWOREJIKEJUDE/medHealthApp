// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewPageForJitsi extends StatelessWidget {
  const WebviewPageForJitsi({super.key});

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
          initialUrl: 'https://meet.jit.si/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
