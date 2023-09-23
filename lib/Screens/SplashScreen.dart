// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medhealth/onBoarding/onboarding_screen.dart';
import 'package:medhealth/Screens/login_UI.dart';
import 'package:medhealth/Screens/signup_UI.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  //todo....This is where the image disappearing on splash screen started..
  late final AnimationController _controllerrr = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animationnnn = CurvedAnimation(
    parent: _controllerrr,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    super.dispose();
    // _controllerrr.forward();
    _controllerrr.dispose();
  }

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 5000), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => OnboardingScreenHospital()));
    });

    super.initState();
//todo this is where i used to make the splash full screen. just copy this and paste in chrome and see other options
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(systemNavigationBarColor: Color(0xff0957DF)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xff0957DF),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80),
            child: Center(
              child: Image.asset(
                'assets/images/pix1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Center(
          //     child: Container(
          //   height: 200,
          //   width: 180,
          //   child: Column(
          //     children: [
          //       Center(
          //         child: FadeTransition(
          //           opacity: _animationnnn,
          //           child: Image.asset(
          //             'assets/images/splashitem1.png',
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         height: 10,
          //       ),
          //       Center(
          //         child: Image.asset(
          //           'assets/images/MedHealth1.png',
          //           fit: BoxFit.cover,
          //         ),
          //       ),
             
          //       Center(
          //         child: Image.asset(
          //           'assets/images/reinventyourworld.png',
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     ],
          //   ),
          // )),

          // Center(
          //   child: ScaleTransition(
          //     scale: _animationnnn,
          //     child: Padding(
          //       padding: EdgeInsets.only(left: 80, right: 80),
          //       child: Image.asset(
          //         'assets/images/pix1.png',
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.all(100),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       FadeTransition(
          //         opacity: _animationnnn,
          //         child: SizedBox(
          //           height: 80,
          //           width: 80,
          //           child: Image.asset(
          //             'assets/images/splashitem1.png',
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         height: 30,
          //       ),
          //       Text(
          //         "MedHealth",
          //         textAlign: TextAlign.start,
          //         style: TextStyle(
          //             fontSize: 25,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.white),
          //       ),
          //       Text(
          //         "REINVENT YOUR WORLD",
          //         textAlign: TextAlign.left,
          //         style: TextStyle(
          //             fontSize: 15,
          //             fontWeight: FontWeight.normal,
          //             color: Colors.white),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
