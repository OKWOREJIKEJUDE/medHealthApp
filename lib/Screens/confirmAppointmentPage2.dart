// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import 'package:webview_flutter/webview_flutter.dart';

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
// //todo

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
//           initialUrl:
//               'https://www.google.com/maps/search/hospitals+%26+clinics/@6.8499239,7.3564396,13z/data=!3m1!4b1?entry=ttu',
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

// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:webview/secondFile.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Text Sharing App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: PageOne(),
//     );
//   }
// }

// class PageOne extends StatelessWidget {
//   final TextEditingController _textEditingController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Page One'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _textEditingController,
//               decoration: InputDecoration(labelText: 'Enter text'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 String inputData = _textEditingController.text;
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => PageTwo(inputData: inputData),
//                   ),
//                 );
//               },
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:medhealth/Screens/bottomNavigation.dart';
import 'package:medhealth/Screens/home_UI.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:webview_flutter/webview_flutter.dart';

//todo this is the first class
class ConfirmAppointmentPage2 extends StatefulWidget {
  @override
  State<ConfirmAppointmentPage2> createState() =>
      _ConfirmAppointmentPage2State();
}

class _ConfirmAppointmentPage2State extends State<ConfirmAppointmentPage2> {
  final dbHelper = DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    String newWord = '                     ';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Appointments'),
        backgroundColor: const Color(0xff0957DF),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            padding: EdgeInsets.only(bottom: 3),
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.05),
                  spreadRadius: .5,
                  blurRadius: .5,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: TextField(
                onChanged: (value) {
                  newWord = value;
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Appointment description",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
              ),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Container(
              height: 45,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () async {
                  if (newWord.isNotEmpty) {
                    await dbHelper.insertWord(newWord);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNav(
                                initialText: '               ',
                              )),
                    );
                  }
                },
                color: Color(0xff0957DF),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("Confirm Appointment"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ... Other methods remain unchanged
}

// Rest of your classes remain unchanged

class DisplayPage extends StatefulWidget {
  @override
  _DisplayPageState createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  final dbHelper = DatabaseHelper();

  @override
  void initState() {
    super.initState();
    dbHelper.initDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Scheduled Appointments'),
        backgroundColor: const Color(0xff0957DF),
      ),
      body: FutureBuilder<List<String>>(
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
                    Navigator.pushNamed(context, '/empty');
                  },
                  child: Card(
                    elevation: 1,
                    child: ListTile(
                      title: Text(word),
                      trailing: GestureDetector(
                        onTap: () async {
                          await dbHelper.deleteWord(word);
                          setState(() {
                            // Refresh the list
                          });
                        },
                        child: Icon(Icons.delete),
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

class EmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Video/Audio call'),
        backgroundColor: const Color(0xff0957DF),
      ),
      body: Container(
        height: double.infinity,
        child: WebView(
          initialUrl:
              'https://www.google.com/maps/search/hospitals+%26+clinics/@6.8499239,7.3564396,13z/data=!3m1!4b1?entry=ttu',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
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
