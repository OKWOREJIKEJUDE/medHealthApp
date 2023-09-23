//ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_interpolation_to_compose_strings
//ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medhealth/Screens/confirmAppointmentPage2.dart';

import 'package:medhealth/Screens/doctorsDetailsPage_UI.dart';
import 'package:medhealth/Screens/navnearby.dart';
import 'package:medhealth/Screens/webviewPageForJitsi.dart';
import 'package:medhealth/screen/colesterol.dart';
import 'package:medhealth/screen/prostrates.dart';
import 'package:medhealth/webViewForDoctorsAndPatients/webview_firstdoctor.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Model/datas.dart';
import '../screen/bloodsugar.dart';

class Homee extends StatefulWidget {
  const Homee({
    Key? key,
    required this.initialText,
  }) : super(key: key);

  @override
  State<Homee> createState() => _HomeeState();
  final String initialText;
}

class _HomeeState extends State<Homee> {
  int _currentIndex = 0;

  late String pasteSendFirstName;
  //todo Used this for our dropdown menu
  List<dynamic> selectArea = [];
  String? selectAreaId;

  //todo from database
  final dbHelper = DatabaseHelper();

  @override
  void initState() {
    super.initState();
    dbHelper.initDatabase();
  }

  @override
  void myInitStateForDropDownMenu() {
    super.initState();
    this.selectArea.add({"val": 1, "label": "UNN Medical Center"});
    this.selectArea.add({"val": 2, "label": "Obukpa Medical Center"});
  }

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

  final String url = "https://meet.jit.si/meetDrJoyAnozie";

  void _launchURL() async {
    const url =
        'https://meet.jit.si/meetDrJoyAnozie'; // Replace with the URL you want to launch
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false, forceWebView: false);
    } else {
      throw 'Could not launch $url';
    }
  }

  // void _openJitsiMeetLink() async {
  //   launchUrl(url as Uri);
  //   // if (await canLaunch(jitsiMeetLink)) {
  //   //   await launch(jitsiMeetLink);
  //   // } else {
  //   //   throw 'Could not launch $jitsiMeetLink';
  //   // }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   actions: [
        //     IconButton(
        //       onPressed: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => NotificationIconn()));
        //       },
        //       icon: Icon(Icons.notifications),
        //       color: Colors.white,
        //     )
        //   ],
        //   backgroundColor: Color(0xff0957DF),
        //   leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        // ),

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
                                  hintText: "Search Doctors",
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
                            // Get.to(
                            //     () => myButtomSheetMethods()
                            //         .showTheFirstBottomSheetHere(context),
                            //     transition: Transition.downToUp,
                            //     duration: Duration(seconds: 15));

                            // myButtomSheetMethodss()
                            //     .showTheFirstBottomSheetHere(context);
                            showTheFirstBottomSheetHere(context);
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
                child: Text("Upcoming Appointments",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // ElevatedButton(
            //   onPressed: _launchURL, // Call the _launchURL function
            //   child: Text('Open URL in Chrome'),
            // ),

            Container(
              height: 300,
              color: Colors.white,
              child: FutureBuilder<List<String>>(
                future: dbHelper.getWords(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text('No words found.'));
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        final word = snapshot.data![index];
                        return GestureDetector(
                          onTap: () {
                            // Navigator.pushNamed(context, '/empty');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        //todo run this one, the change and run another one
                                        WebviewForFirstDoctor()));
                          },
                          child: Card(
                            elevation: 4,
                            child: Container(
                              height: 50,
                              child: ListTile(
                                title: Text(
                                  word,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                                trailing: GestureDetector(
                                  // onTap: _launchURL,
                                  onTap: () async {
                                    await dbHelper.deleteWord(word);
                                    setState(() {
                                      // Refresh the list
                                    });
                                  },

//todo ;;;;;;;;;;;;;;;;;............................//////shsjddsghhhhhhhhhhhhhhhhhhhhhhhhhh
                                  child: GestureDetector(
                                    onTap: _launchURL,
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      child: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    ));
  }

//todo First BottomSheet is here//////////
  void showTheFirstBottomSheetHere(BuildContext context) {
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
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  //todo Back Button in bottomSheet
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
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Search Your",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                        //textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Specialist",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 3),
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
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
                        // child: DropdownButton<String>(
                        //   value: selectedItemInBottomsheet,
                        //   onChanged: (String? newValue) {
                        //     setState(() {
                        //       selectedItemInBottomsheet = newValue!;
                        //     });
                        //   },
                        //   items: <String>[
                        //     'Item 1',
                        //     'Item 2',
                        //     'Item 3',
                        //     'Item 4'
                        //   ].map<DropdownMenuItem<String>>((String value) {
                        //     return DropdownMenuItem<String>(
                        //       value: value,
                        //       child: Text(value),
                        //     );
                        //   }).toList(),
                        // ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          // child: Align(
                          //   alignment: Alignment.centerLeft,
                          //   child: Text(
                          //     "Select Area",
                          //       style: TextStyle(
                          //           color: Colors.grey, fontSize: 15)
                          //           ),
                          // )
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Please enter Area",
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 15)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (() {}),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 3),
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
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
                          // child: Align(
                          //   alignment: Alignment.centerLeft,
                          //   child: Text("Doctors, Specialist",
                          //       style: TextStyle(
                          //           color: Colors.grey, fontSize: 15)),
                          // ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Specialist Or Doctors",
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 15)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30),
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      child: MaterialButton(
                        child: Text("Search"),
                        onPressed: () {
                          {
                            Navigator.pop(context);
                            showTheSecondBottomSheetHere(context);
                            // myButtomSheetMethodss()
                            //     .showTheSecondBottomSheetHere(context);
                          }
                        },
                        color: Color(0xff0957DF),
                        textColor: Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
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
                  SizedBox(
                    height: 1000,
                    width: double.infinity,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: listData.length,
                        itemBuilder: (context, index) {
                          MyDatas myDatas = listData[index];
                          return SizedBox(
                            height: 80,
                            child: Card(
                              elevation: 0.5,
                              child: Center(
                                child: ListTile(
                                    //dense: false,
                                    leading: AspectRatio(
                                      aspectRatio: 1,
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(4.0)),
                                        child: Image.asset(
                                          myDatas.imageURL,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    title: SizedBox(
                                      height: 50,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            myDatas.name,
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Text(
                                              "UNN Medical Center, MBBS",
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 5,
                                            width: 50,
                                            child: Row(
                                              children: <Widget>[
                                                Icon(Icons.star,
                                                    color: Colors.orange,
                                                    size: 10.0),
                                                Icon(Icons.star,
                                                    color: Colors.orange,
                                                    size: 10.0),
                                                Icon(Icons.star,
                                                    color: Colors.orange,
                                                    size: 10.0),
                                                Icon(Icons.star,
                                                    color: Colors.orange,
                                                    size: 10.0),
                                                Icon(Icons.star,
                                                    color: Colors.orange,
                                                    size: 10.0),
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
                                                  DoctorsDetailsPage(
                                                      myDatas: myDatas)));
                                    }),
                              ),
                            ),
                          );
                        }),
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
//
//todo
//todo
//todo
//todo
//todo
//todo
//todo
//todo

//todo we tried something here
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// void main() {
//   runApp(ConfirmAppointmentPage2());
// }

// class ConfirmAppointmentPage2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Word Storage App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => HomePage(),
//         '/display': (context) => DisplayPage(),
//         '/empty': (context) => EmptyPage(),
//       },
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final dbHelper = DatabaseHelper();
//   int selectedIndex = -1;
//   int selectedIndexx = -2;
//   int selectedIndexxx = -3;
//   // Color changeColor = Colors.white;
//   TextEditingController _selectdate = TextEditingController();
//   TextEditingController appointmentDate = TextEditingController();
//   TextEditingController appointmentDescription = TextEditingController();
//   TextEditingController appointmentTime = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     String newWord = '                     ';
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Appointments'),
//         backgroundColor: const Color(0xff0957DF),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             margin: EdgeInsets.only(left: 20, right: 20),
//             padding: EdgeInsets.only(bottom: 3),
//             height: 100,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey),
//               borderRadius: BorderRadius.circular(5),
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.05),
//                   spreadRadius: .5,
//                   blurRadius: .5,
//                   offset: Offset(0, 1), // changes position of shadow
//                 ),
//               ],
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(left: 15),
//               child: TextField(
//                 onChanged: (value) {
//                   // Your logic for handling new word input
//                   newWord = value;
//                 },
//                 decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: "Appointment description",
//                     hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
//               ),
//             ),
//           ),
//           // ElevatedButton(
//           //   onPressed: () async {
//           //     // Your logic for saving and navigating to '/display'
//           //     if (newWord.isNotEmpty) {
//           //       await dbHelper.insertWord(newWord);
//           //       Navigator.pushNamed(context, '/display');
//           //     }
//           //   },
//           //   child: Text('Save and Display'),
//           // ),
//           SizedBox(
//             height: 200,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 10, left: 10),
//             child: Container(
//               height: 45,
//               width: double.infinity,
//               child: MaterialButton(
//                 onPressed: () async {
//                   // Your logic for saving and navigating to '/display'
//                   if (newWord.isNotEmpty) {
//                     await dbHelper.insertWord(newWord);
//                     Navigator.pushNamed(context, '/display');
//                   }
//                 },
//                 color: Color(0xff0957DF),
//                 textColor: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Text("Confirm Appointment"),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildButton(String text, int index) {
//     return MaterialButton(
//       textColor: Colors.black,
//       onPressed: () {
//         setState(() {
//           selectedIndex = index;
//         });
//       },
//       color: selectedIndex == index ? Color(0xff0957DF) : Colors.white,
//       minWidth: 100,
//       height: 40,
//       child: Text(text),
//     );
//   }

//   Widget _buildButton1(String text, int index) {
//     return MaterialButton(
//       textColor: Colors.black,
//       onPressed: () {
//         setState(() {
//           selectedIndexx = index;
//         });
//       },
//       color: selectedIndexx == index ? Color(0xff0957DF) : Colors.white,
//       minWidth: 100,
//       height: 40,
//       child: Text(text),
//     );
//   }

//   Widget _buildButton2(String text, int index) {
//     return MaterialButton(
//       textColor: Colors.black,
//       onPressed: () {
//         setState(() {
//           selectedIndexxx = index;
//         });
//       },
//       color: selectedIndexxx == index ? Color(0xff0957DF) : Colors.white,
//       minWidth: 100,
//       height: 40,
//       child: Text(text),
//     );
//   }
// }

// class DisplayPage extends StatefulWidget {
//   @override
//   _DisplayPageState createState() => _DisplayPageState();
// }

// class _DisplayPageState extends State<DisplayPage> {
//   final dbHelper = DatabaseHelper();

//   @override
//   void initState() {
//     super.initState();
//     dbHelper.initDatabase();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Scheduled Appointments'),
//         backgroundColor: const Color(0xff0957DF),
//       ),
//       body: FutureBuilder<List<String>>(
//         future: dbHelper.getWords(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return Center(child: Text('No words found.'));
//           } else {
//             return ListView.builder(
//               itemCount: snapshot.data!.length,
//               itemBuilder: (context, index) {
//                 final word = snapshot.data![index];
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.pushNamed(context, '/empty');
//                   },
//                   child: Card(
//                     elevation: 1,
//                     child: ListTile(
//                       title: Text(word),
//                       trailing: GestureDetector(
//                         onTap: () async {
//                           await dbHelper.deleteWord(word);
//                           setState(() {
//                             // Refresh the list
//                           });
//                         },
//                         child: Icon(Icons.delete),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }

// class EmptyPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Video/Audio call'),
//         backgroundColor: const Color(0xff0957DF),
//       ),
//       body: Container(
//         height: double.infinity,
//         child: WebView(
//           initialUrl: 'https://meet.jit.si/',
//           javascriptMode: JavascriptMode.unrestricted,
//         ),
//       ),
//     );
//   }
// }

// class DatabaseHelper {
//   late Database _database;

//   Future<void> initDatabase() async {
//     final databasesPath = await getDatabasesPath();
//     final path = join(databasesPath, 'word_database.db');

//     _database = await openDatabase(
//       path,
//       onCreate: (db, version) {
//         return db.execute(
//           'CREATE TABLE words(id INTEGER PRIMARY KEY, word TEXT)',
//         );
//       },
//       version: 1,
//     );
//   }

//   Future<void> insertWord(String word) async {
//     await initDatabase();
//     await _database.insert(
//       'words',
//       {'word': word},
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }

//   Future<List<String>> getWords() async {
//     await initDatabase();
//     final List<Map<String, dynamic>> maps = await _database.query('words');
//     return List.generate(maps.length, (i) {
//       return maps[i]['word'] as String;
//     });
//   }

//   Future<void> deleteWord(String word) async {
//     await initDatabase();
//     await _database.delete(
//       'words',
//       where: 'word = ?',
//       whereArgs: [word],
//     );
//   }
// }

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
