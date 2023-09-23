// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
//import 'package:webview_flutter/webview_flutter.dart';

class VideoCallStarted extends StatefulWidget {
  const VideoCallStarted({super.key});

  @override
  State<VideoCallStarted> createState() => _VideoCallStartedState();
}

class _VideoCallStartedState extends State<VideoCallStarted> {
  //var url = Uri.https("https://meet.jit.si/");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 100),
          child: Column(
            children: [
              MaterialButton(
                child: Text(
                  "Video Call",
                  style: TextStyle(fontSize: 10),
                ),
                onPressed: () async {
                  {
                    //todo
                  }
                },
                color: Color(0xff5E3CE4),
                textColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                // child: WebView(
                //   initialUrl: "https://meet.jit.si/",
                //   javascriptMode: JavascriptMode.unrestricted,
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
