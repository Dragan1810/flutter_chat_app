import 'package:flutter/material.dart';
import 'src/pages/Chat.dart';
import 'src/pages/Login.dart';
import 'src/pages/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secret',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => Login(),
        "/home": (context) => MyHomePage(),
        '/chat': (context) => Chat(),
      },
    );
  }
}

