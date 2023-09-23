// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medhealth/doctorsScreens/login_for_doctors_UI.dart';
import 'package:medhealth/Screens/signup_UI.dart';

import 'bottomNavigation.dart';

class Login extends StatefulWidget {
  const Login({
    Key? key,
    required this.callback,
  }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
  final Function(bool) callback;
}

class _LoginState extends State<Login> {
  final bool _isLogin = true;
  bool _loading = false;
  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _checkbox = true;

  @override
  Widget build(BuildContext context) {
    //todo this WillPopScope that i used before scaffold will prevent the previous page from showing when back button is clicked
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          backgroundColor: Color(0xff0957DF),
          body: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 5),
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    "Login to the #1 Virtual Medical Assistant platform in Africa",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Container(
                  //color: Colors.white,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.only(bottom: 3),
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
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
                          hintText: "Email",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15)),
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
                    borderRadius: BorderRadius.circular(10),
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
                          hintText: "Password",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15)),
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

                // Container(
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       GestureDetector(
                //         onTap: () {},
                //         child: Padding(
                //           padding: const EdgeInsets.only(right: 15),
                //           child: Text(
                //             "Forgot Password ?",
                //             style: TextStyle(
                //                 fontSize: 14,
                //                 fontWeight: FontWeight.normal,
                //                 color: Colors.white),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
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
                              () => BottomNav(
                                    initialText: '',
                                  ),
                              transition: Transition.fade,
                              duration: Duration(seconds: 3));
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => BottomNav()));
                          //loginFunction();
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
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            Text(
                              'By Signing Up, you accept the ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Terms of Services ',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 135, 191, 255)),
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'and',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                          ],
                        ))),
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 135, 191, 255),
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(
                  height: 30,
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
                            Get.to(
                                () => SignUp(
                                      mycallback: (bool) {},
                                    ),
                                transition: Transition.fade,
                                duration: Duration(seconds: 2));
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => SignUp(
                            //               mycallback: (bool) {},
                            //             )));
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

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 25, left: 25),
                    child: Row(
                      children: [
                        Text(
                          'Click',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(
                                () => LoginForDoctors(
                                      callback: (bool) {},
                                    ),
                                transition: Transition.fade,
                                duration: Duration(seconds: 2));
                          },
                          child: Text(
                            ' Here ',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                        Text(
                          'to Login as a doctor',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
          )),
    );
  }
}
