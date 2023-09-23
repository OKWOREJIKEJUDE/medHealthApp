// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medhealth/Screens/login_UI.dart';
import 'package:get/get.dart';

class OnboardingScreenHospital extends StatefulWidget {
  const OnboardingScreenHospital({Key? key}) : super(key: key);

  @override
  State<OnboardingScreenHospital> createState() =>
      _OnboardingScreenHospitalState();
}

class _OnboardingScreenHospitalState extends State<OnboardingScreenHospital> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "title": "Your Health, Your Wealth",
      "image": "assets/images/doc3.png",
      "subtitle":
          "Your health is your greatest wealth and asset. That is why we are here to assist you in achieving your goals",
    },
    {
      "title": "Your Health, Your Wealth",
      "image": "assets/images/doc5.png",
      "subtitle":
          "Your health is your greatest wealth and asset. That is why we are here to assist you in achieving your goals",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0957DF),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) {
                  return SplashContent(
                      title: splashData[index]["title"] as String,
                      image: splashData[index]["image"] as String,
                      subtitle: splashData[index]["subtitle"] as String);
                }),
          ),

          GestureDetector(
            // onTap: () {
            //   Get.to(
            //       () => Login(
            //             callback: (bool) {},
            //           ),
            //       transition: Transition.zoom);
            // },
            child: Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Container(
                height: 45,
                width: double.infinity,
                child: MaterialButton(
                  child: Text("Get Started"),
                  onPressed: () {
                    {
                      Get.to(
                          () => Login(
                                callback: (bool) {},
                              ),
                          transition: Transition.zoom,
                          duration: Duration(seconds: 3));

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => Login(
                      //               callback: (bool) {},
                      //             )));
                    }
                  },
                  color: Colors.white,
                  textColor: Color(0xff0957DF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          // Expanded(
          //   flex: 1,
          //   child: Column(
          //     children: [
          //Spacer(),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: List.generate(
          //       splashData.length, (index) => buildDot(index: index)),
          // ),
          // Spacer(
          //   flex: 2,
          // ),
          //       SizedBox(
          //         height: 5,
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(right: 10, left: 10),
          //         child: Container(
          //           height: 45,
          //           width: double.infinity,
          //           child: MaterialButton(
          //             child: Text("Get Started"),
          //             onPressed: () {
          //               {
          //                 Navigator.push(
          //                     context,
          //                     MaterialPageRoute(
          //                         builder: (context) => Login(
          //                               callback: (bool) {},
          //                             )));
          //                 //loginFunction();
          //               }
          //             },
          //             color: Colors.white,
          //             textColor: Color(0xff0957DF),
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(10),
          //             ),
          //           ),
          //         ),
          //       ),
          //       Spacer(),
          //     ],
          //   ),
          // )
        ],
      )),
    );
  }

  Container buildDot({required int index}) {
    return Container(
      margin: EdgeInsets.all(3),
      width: currentPage == index ? 20 : 10,
      height: 10,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.white : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.title,
    required this.image,
    required this.subtitle,
  }) : super(key: key);
  final String title, image, subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 500.0,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0))),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Text(subtitle,
              style: TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
