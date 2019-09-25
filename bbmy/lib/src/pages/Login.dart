import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Flex(
              direction: Axis.vertical,
              children: <Widget>[
                Text("Login"),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(),
                      TextFormField(),
                      Text("Button")
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
