//ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_interpolation_to_compose_strings
//ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medhealth/Screens/navnearby.dart';
import 'package:medhealth/doctorsScreens/patientDetailPageforFirstPatient.dart';
import 'package:medhealth/doctorsScreens/patientDetailPageforSecondPatient.dart';
import 'package:medhealth/screen/colesterol.dart';
import 'package:medhealth/screen/prostrates.dart';
import 'package:medhealth/screen/temperature.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../screen/bloodsugar.dart';

class DoctorsHomee extends StatefulWidget {
  const DoctorsHomee({
    Key? key,
    required this.initialText,
  }) : super(key: key);

  @override
  State<DoctorsHomee> createState() => _DoctorsHomeeState();
  final String initialText;
}

class _DoctorsHomeeState extends State<DoctorsHomee> {
  //todo This is carousel properties
  List carouselImages = [
    'assets/images/pix3.png',
    'assets/images/carousel1.png',
    'assets/images/pix4.png',
    'assets/images/carousel1.png',
  ];
  int mycurrentCarouselIndex = 0;

  final CarouselController carouselController = CarouselController();
  String selectedItemInBottomsheet = "Item 1";
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 205,
              width: double.infinity,
              color: Color(0xff0957DF),
              child: Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.initialText,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 0, right: 0),
                          padding: EdgeInsets.only(bottom: 3),
                          height: 40,
                          //width: double.infinity,
                          width: 260,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.05),
                                spreadRadius: .5,
                                blurRadius: .5,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search by Name",
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 15)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            //todo This is where bottomSheet is//

                            showTheSecondBottomSheetHere(context);
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.search,
                              size: 45,
                              color: Color(0xffc4c4c4),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Category",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 10,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Column(
                            //todo the first box
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Image.asset(
                                  'assets/images/Vector3.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text("InfoZone",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NavNearby()));
                          },
                          child: Column(
                            //todo the third box
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Image.asset(
                                  'assets/images/pix2.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text("NearBy",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Prostrates()));
                          },
                          child: Column(
                            //todo the second box
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Image.asset(
                                  'assets/images/prostrates.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text("Prostrates",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BloodSugar()));
                          },
                          child: Column(
                            //todo the forth box
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Image.asset(
                                  'assets/images/bloodsugar.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text("Blood Sugar",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Colesterol()));
                          },
                          child: Column(
                            //todo the fifty box
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Image.asset(
                                  'assets/images/colesterol.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text("Colesterol",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Featured News",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 73, 73, 73))),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            //todo Here is Carousel Slider/////////////////////////////////////////////////////////////
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: CarouselSlider(
                      items: carouselImages.map((imagePath) {
                        return Container(
                          alignment: Alignment.center,
                          margin:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(imagePath),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        );
                      }).toList(),
                      options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          setState(() {
                            print(reason.toString());
                            mycurrentCarouselIndex = index;
                          });
                        },
                        autoPlay: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < carouselImages.length; i++)
                        Container(
                          height: 8,
                          width: 8,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: mycurrentCarouselIndex == i
                                ? Colors.blue
                                : Colors.grey.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),

            //todo....This is for the api call...............//////////////////..
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Others",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 500,
              //height: MediaQuery.of(context).size.height,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 17,
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Temperature()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage('assets/images/temp2.png'),
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Temperature",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff0957DF)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BloodSugar()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage('assets/images/bloodsugar.png'),
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Blood Sugar",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff0957DF)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Prostrates()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage('assets/images/prostrates.png'),
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Prostrates",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff0957DF)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Colesterol()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage('assets/images/colesterol.png'),
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Colesterol",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff0957DF)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

// //todo First BottomSheet is here//////////

  //todo Second BottomSheet is here//////////
  void showTheSecondBottomSheetHere(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.85,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 10, left: 10, bottom: 10, top: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_sharp),
                        color: Color(0xff0957DF),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Results",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //todo This is where list of doctors is.....
                  // SizedBox(
                  //   height: 1000,
                  //   width: double.infinity,
                  //   child: ListView.builder(
                  //       shrinkWrap: true,
                  //       itemCount: doctorslistData.length,
                  //       itemBuilder: (context, index) {
                  //         MyDoctorsDatas doctorsData = doctorslistData[index];
                  //         return SizedBox(
                  //           height: 80,
                  //           child: Card(
                  //             elevation: 0.5,
                  //             child: Center(
                  //               child: ListTile(
                  //                   //dense: false,
                  //                   leading: AspectRatio(
                  //                     aspectRatio: 1,
                  //                     child: ClipRRect(
                  //                       borderRadius: const BorderRadius.all(
                  //                           Radius.circular(4.0)),
                  //                       child: Image.asset(
                  //                         doctorsData.imageURL,
                  //                         fit: BoxFit.cover,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   title: SizedBox(
                  //                     height: 50,
                  //                     child: Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: [
                  //                         Text(
                  //                           doctorsData.name,
                  //                           style: TextStyle(fontSize: 15),
                  //                         ),
                  //                         Padding(
                  //                           padding: const EdgeInsets.only(
                  //                               bottom: 10),
                  //                           child: Text(
                  //                             "UNN Medical Center, MBBS",
                  //                             style: TextStyle(fontSize: 10),
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ),
                  //                   subtitle: Row(
                  //                     children: [
                  //                       Text(
                  //                         "08:00AM-05:00PM",
                  //                         style: TextStyle(fontSize: 10),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                   trailing: SizedBox(
                  //                     height: 80,
                  //                     child: Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: [
                  //                         SizedBox(
                  //                           height: 5,
                  //                           width: 50,
                  //                           child: Row(
                  //                             children: <Widget>[
                  //                               Icon(Icons.star,
                  //                                   color: Colors.orange,
                  //                                   size: 10.0),
                  //                               Icon(Icons.star,
                  //                                   color: Colors.orange,
                  //                                   size: 10.0),
                  //                               Icon(Icons.star,
                  //                                   color: Colors.orange,
                  //                                   size: 10.0),
                  //                               Icon(Icons.star,
                  //                                   color: Colors.orange,
                  //                                   size: 10.0),
                  //                               Icon(Icons.star,
                  //                                   color: Colors.orange,
                  //                                   size: 10.0),
                  //                             ],
                  //                           ),
                  //                         ),
                  //                         SizedBox(
                  //                           height: 35,
                  //                         ),
                  //                         Text(
                  //                           "Medicals",
                  //                           style: TextStyle(fontSize: 10),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ),
                  //                   onTap: () {
                  //                     Navigator.push(
                  //                         context,
                  //                         MaterialPageRoute(
                  //                             builder: (context) =>
                  //                                 PatientDetailPage(
                  //                                   doctorslistData:
                  //                                       doctorsData,
                  //                                 )));
                  //                   }),
                  //             ),
                  //           ),
                  //         );
                  //       }),
                  // ),

                  Card(
                    elevation: 0.5,
                    child: Center(
                      child: ListTile(
                          //dense: false,
                          leading: AspectRatio(
                            aspectRatio: 1,
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4.0)),
                              child: Image.asset(
                                'assets/images/patient2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          title: SizedBox(
                            height: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Johnson Winston',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    "UNN Medical Center",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                "08:00AM-05:00PM",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          trailing: SizedBox(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 5,
                                  width: 50,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.star,
                                          color: Colors.orange, size: 10.0),
                                      Icon(Icons.star,
                                          color: Colors.orange, size: 10.0),
                                      Icon(Icons.star,
                                          color: Colors.orange, size: 10.0),
                                      Icon(Icons.star,
                                          color: Colors.orange, size: 10.0),
                                      Icon(Icons.star,
                                          color: Colors.orange, size: 10.0),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Text(
                                  "Medicals",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PatientDetailPageForFirstPatient()));
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Card(
                    elevation: 0.5,
                    child: Center(
                      child: ListTile(
                          //dense: false,
                          leading: AspectRatio(
                            aspectRatio: 1,
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4.0)),
                              child: Image.asset(
                                'assets/images/patient1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          title: SizedBox(
                            height: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Suleiman Usman',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    "UNN Medical Center",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                "08:00AM-05:00PM",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          trailing: SizedBox(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 5,
                                  width: 50,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.star,
                                          color: Colors.orange, size: 10.0),
                                      Icon(Icons.star,
                                          color: Colors.orange, size: 10.0),
                                      Icon(Icons.star,
                                          color: Colors.orange, size: 10.0),
                                      Icon(Icons.star,
                                          color: Colors.orange, size: 10.0),
                                      Icon(Icons.star,
                                          color: Colors.orange, size: 10.0),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Text(
                                  "Medicals",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PatientDetailPageForSecondPatient()));
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class DatabaseHelper {
  late Database _database;

  Future<void> initDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'word_database.db');

    _database = await openDatabase(
      path,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE words(id INTEGER PRIMARY KEY, word TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<void> insertWord(String word) async {
    await initDatabase();
    await _database.insert(
      'words',
      {'word': word},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<String>> getWords() async {
    await initDatabase();
    final List<Map<String, dynamic>> maps = await _database.query('words');
    return List.generate(maps.length, (i) {
      return maps[i]['word'] as String;
    });
  }

  Future<void> deleteWord(String word) async {
    await initDatabase();
    await _database.delete(
      'words',
      where: 'word = ?',
      whereArgs: [word],
    );
  }
}
