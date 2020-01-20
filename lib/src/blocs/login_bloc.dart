import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _username = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  Stream<String> get username => _username.stream;

  Stream<String> get password => _password.stream;

  Function(String) get changeUsername => _username.sink.add;

  Function(String) get changePassword => _password.sink.add;

  loginClicked(BuildContext context) {
    String username = _username.value ?? '';
    String password = _password.value ?? '';
    if (!username.contains('@')) {
      showSnackBar('Email Invalid');
    } else if (password.length < 6) {
      showSnackBar('Password Invalid');
    } else {
      Navigator.pushNamed(context, '/home');
    }
  }

  showSnackBar(String message) {
    SnackBar snackBar = SnackBar(
      backgroundColor: Colors.red,
      content: Text(message),
      duration: Duration(seconds: 2),
    );
    scaffoldKey.currentState.showSnackBar(snackBar);
  }

  dispose() {
    _username.close();
    _password.close();
  }
}
