import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {

  //Reference key help us to reference one specific widget
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(20.0),
      child: new Form(
      // apply the form key to the key here
        key: formKey,
        child: new Column(
          children: <Widget>[
            //Make widgets separately in the bottom and call them here
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(bottom: 25.0),),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: new InputDecoration(
        labelText: 'Email Address',
        hintText: 'You@example.com',
      ),
    );
  }

  Widget passwordField() {
    return new TextFormField(
      obscureText: true,
      decoration: new InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Password',
      ),
    );
  }

  Widget submitButton() {
    return new RaisedButton(
      color: Colors.greenAccent,
      onPressed: () {
        formKey.currentState.reset();
      },
      child: new Text('Submit!'),
    );
  }
}
