import 'package:flutter/material.dart';
import 'src/pages/Login.dart';
import 'src/pages/Home.dart';
//import 'package:flutter_stetho/flutter_stetho.dart';

void main() {
  // Stetho.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secret',
      theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blueGrey,
          fontFamily: 'Montserrat',
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          )),
      initialRoute: '/',
      routes: {
        "/": (context) => Login(),
        "/home": (context) => MyHomePage(),
      },
    );
  }
}
