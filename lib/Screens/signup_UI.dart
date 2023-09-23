// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bottomNavigation.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key, required this.mycallback}) : super(key: key);
  final Function(bool) mycallback;

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController sendfirstName = TextEditingController();
  bool _mycheckbox = false;
  String enteredText = '';
  void _updateText(String newText) {
    setState(() {
      enteredText = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0957DF),
        body: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 5),
            child: SingleChildScrollView(
                child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Start your",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
              Text(
                "Journey Here",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  "Join the #1 Virtual Medical Assistant platform in Africa",
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
                    controller: sendfirstName, //todo...................
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "First Name",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
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
                        hintText: "Last Name",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
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
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
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
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text(
                  'I agree to the platforms terms of services',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                value: _mycheckbox,
                onChanged: (value) {
                  widget.mycallback(value!);
                  setState(() => _mycheckbox = !_mycheckbox);
                },
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      final enteredText = sendfirstName.text;
                      if (enteredText.isNotEmpty) {
                        Get.to(() => BottomNav(initialText: enteredText),
                            transition: Transition.fade,
                            duration: Duration(seconds: 5));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Text("First name cannot be empty"),
                          ),
                        );
                      }
                    },
                    // onPressed: () {
                    // {
                    // Get.to(() => BottomNav(),
                    //   transition: Transition.fade,
                    //  duration: Duration(seconds: 5));
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => BottomNav()));
                    //loginFunction();
                    //  }
                    //},
                    color: Colors.white,
                    textColor: Color(0xff0957DF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Sign Up"),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
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
                height: 40,
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
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Privacy Policy",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 135, 191, 255)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  child: Row(
                    children: [
                      Text(
                        'Already have an Account ?',
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
                          //todo Login should be here
                        },
                        child: Text(
                          'Log In',
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
              )
            ]))));
  }
}
