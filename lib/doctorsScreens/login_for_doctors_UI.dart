// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:medhealth/Screens/signUp_for_doctors_UI.dart';
import 'package:medhealth/doctorsScreens/bottomNavigation.dart';

class LoginForDoctors extends StatefulWidget {
  const LoginForDoctors({
    Key? key,
    required this.callback,
  }) : super(key: key);

  @override
  State<LoginForDoctors> createState() => _LoginForDoctorsState();
  final Function(bool) callback;
}

class _LoginForDoctorsState extends State<LoginForDoctors> {
  bool _checkbox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0957DF),
        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 5),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Login",
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "(For Doctors only)",
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                //color: Colors.white,
                margin: EdgeInsets.only(left: 10, right: 10),
                padding: EdgeInsets.only(bottom: 3),
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: .5,
                      blurRadius: .5,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    // readOnly: readOnly,
                    //controller: searchhere,
                    decoration: InputDecoration(
                        //prefixIcon: Icon(Icons.search),
                        //suffixIcon: suffix,
                        border: InputBorder.none,
                        hintText: "Doctor's Email",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                padding: EdgeInsets.only(bottom: 3),
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: .5,
                      blurRadius: .5,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    //controller: searchhere,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Doctor's Password",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ),
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text(
                  'I agree to the platforms terms of services',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                value: _checkbox,
                onChanged: (value) {
                  widget.callback(value!);
                  setState(() => _checkbox = !_checkbox);
                },
              ),
              SizedBox(height: 0),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  child: MaterialButton(
                    child: Text("Login"),
                    onPressed: () {
                      {
                        Get.to(
                            () => BottomNavForDoctors(
                                  initialText: '',
                                ),
                            transition: Transition.fade,
                            duration: Duration(seconds: 3));
                      }
                    },
                    color: Colors.white,
                    textColor: Color(0xff0957DF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 0.5,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Or",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 120,
                    height: 0.5,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: MaterialButton(
                    child: Text("Sign in with Email"),
                    onPressed: () {
                      {
                        //loginFunction();
                      }
                    },
                    color: Colors.white,
                    textColor: Color(0xff0957DF),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  child: Row(
                    children: [
                      Text(
                        'Dont have an Account ?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          // Get.to(
                          //     () => SignUpForDoctors(
                          //           mycallback: (bool) {},
                          //         ),
                          //     transition: Transition.fade,
                          //     duration: Duration(seconds: 2));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
