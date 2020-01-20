import 'package:flutter/material.dart';
import 'package:flutter_sharing/src/blocs/login_bloc.dart';
import 'package:flutter_sharing/src/blocs/login_provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LoginBloc bloc = LoginProvider.of(context);
    return Scaffold(
      key: bloc.scaffoldKey,
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: bloc.changeUsername,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              onChanged: bloc.changePassword,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                padding: EdgeInsets.all(16),
                onPressed: () {
                  bloc.loginClicked(context);
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('LOGIN'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
