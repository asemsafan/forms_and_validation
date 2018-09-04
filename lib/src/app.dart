import 'package:flutter/material.dart';
import 'screens/login_screen.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Login Form',
        home: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.green,
            title: new Text('Login Form'),
          ),
          body: LoginScreen(),
      )
    );
  }

}