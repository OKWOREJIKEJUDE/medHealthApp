// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_function_declarations_over_variables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medhealth/Model/appointment.dart';
import 'package:medhealth/Screens/confirmAppointmentPage2.dart';

class ConfirmAppointmentPage extends StatefulWidget {
  const ConfirmAppointmentPage({Key? key}) : super(key: key);

  @override
  State<ConfirmAppointmentPage> createState() => _ConfirmAppointmentPageState();
}

class _ConfirmAppointmentPageState extends State<ConfirmAppointmentPage> {
  int selectedIndex = -1;
  int selectedIndexx = -2;
  int selectedIndexxx = -3;
  // Color changeColor = Colors.white;
  TextEditingController _selectdate = TextEditingController();
  TextEditingController appointmentDate = TextEditingController();
  TextEditingController appointmentDescription = TextEditingController();
  TextEditingController appointmentTime = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 100),
          child: Column(
            children: [
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.withOpacity(0.1),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.5),
                  //     spreadRadius: 1,
                  //     blurRadius: 3,
                  //     offset: Offset(0, 2),
                  //   ),
                  // ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 8),
                  child: TextField(
                    controller: _selectdate,
                    decoration: InputDecoration.collapsed(
                      hintText: "Click here to Select date",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    onTap: () async {
                      //This is used to remove focus from textField
                      FocusScope.of(context).requestFocus(FocusNode());
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101));

                      if (pickedDate != null) {
                        setState(() {
                          _selectdate.text =
                              DateFormat('dd-MM-yyyy').format(pickedDate);
                        });
                      }
                    },
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              //todo morning session begins here
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Morning Slots",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              //todo This is where the row button is
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildButton("07:00AM", 0),
                  _buildButton("08:00AM", 1),
                  _buildButton("09:00AM", 2),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  _buildButton("10:00AM", 3),
                  SizedBox(width: 10),
                  _buildButton("11:00AM", 4),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              //todo Afternoon session begins here
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Afternoon Slots",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              //todo This si where the row button is
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildButton1("12:00PM", 0),
                  _buildButton1("01:00PM", 1),
                  _buildButton1("02:00PM", 2),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  _buildButton1("03:00PM", 3),
                  SizedBox(width: 10),
                  _buildButton1("04:00PM", 4),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              //todo Night session begins here
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Evening Slots",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              //todo This is where the row button is
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildButton2("08:00PM", 0),
                  _buildButton2("09:00PM", 1),
                  _buildButton2("10:00PM", 2),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  _buildButton2("11:00PM", 3),
                  SizedBox(width: 10),
                  _buildButton2("11:45PM", 4),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ConfirmAppointmentPage2()));
                      }
                    },
                    color: Color(0xff0957DF),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Next"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String text, int index) {
    return MaterialButton(
      textColor: Colors.black,
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      color: selectedIndex == index ? Color(0xff0957DF) : Colors.white,
      minWidth: 100,
      height: 40,
      child: Text(text),
    );
  }

  Widget _buildButton1(String text, int index) {
    return MaterialButton(
      textColor: Colors.black,
      onPressed: () {
        setState(() {
          selectedIndexx = index;
        });
      },
      color: selectedIndexx == index ? Color(0xff0957DF) : Colors.white,
      minWidth: 100,
      height: 40,
      child: Text(text),
    );
  }

  Widget _buildButton2(String text, int index) {
    return MaterialButton(
      textColor: Colors.black,
      onPressed: () {
        setState(() {
          selectedIndexxx = index;
        });
      },
      color: selectedIndexxx == index ? Color(0xff0957DF) : Colors.white,
      minWidth: 100,
      height: 40,
      child: Text(text),
    );
  }
}
