import 'package:flutter/material.dart';

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
          body:Center(
          child: Text('Show Form Here!'),
          )    ,
      )
    );
  }

}