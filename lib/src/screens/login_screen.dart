import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }

}

class LoginScreenState extends State<LoginScreen>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(20.0),
      child: new Form(
          child: new Column(
            children: <Widget>[
              emailField(),
              passwordField(),
//              submitButton(),
            ],
          ),
      ),
    );
  }

  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration:  new InputDecoration(
        labelText: 'Email Address',
        hintText: 'You@example.com',
      ),
    );
  }
  Widget passwordField(){
    return TextFormField(
      obscureText: true,
      decoration:  new InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Password',
      ),
    );
  }
//  Widget submitButton(){
//
//  }
}