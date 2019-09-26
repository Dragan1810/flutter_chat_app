import 'package:bbmy/src/services/auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final BaseAuth auth = Auth();
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  String _email;
  String _password;
  String _errorMessage;

  bool _validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void _validateAndSubmit() async {
    setState(() {
      _errorMessage = "";
    });
    if (_validateAndSave()) {
      String userId = "";
      try {
        userId = await widget.auth.signIn(_email, _password);
        print('SignEEEED INNNN: $userId');
      } catch (e) {
        print('Error: $e');
        // _errorMessage = e.message;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 100, 30, 100),
          child: Column(
            children: <Widget>[
              Text("Login"),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onSaved: (value) => _email = value.trim(),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text2';
                        }
                        return null;
                      },
                      onSaved: (value) => _password = value.trim(),
                    ),
                    RaisedButton(
                      onPressed: _validateAndSubmit,
                      child:
                          const Text('Submit', style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
