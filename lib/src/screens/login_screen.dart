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
  //Make variables to hold and save both email and password
  String email = '';
  String password = '';

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
      validator: (String value){
        // Return null if valid
        // Return String with error message if invalid
        // The Error Case
        if (!value.contains('@')){
          return 'Please Enter Valid Email';
        }
        // If there is no error it will automatically return null
        //return null;
      },
      //Save the value came from the Input
      onSaved: (String value){
        email = value;
      },
    );
  }

  Widget passwordField() {
    return new TextFormField(
      obscureText: true,
      decoration: new InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Password',
      ),
      validator: (String value){
        if (value.length < 4 ){
          return 'Password Should be at least 4 characters';
        }
      },
      onSaved: (String value){
        password = value;
      },
    );
  }

  Widget submitButton() {
    return new RaisedButton(
      color: Colors.greenAccent,
      onPressed: () {
//        formKey.currentState.reset();
//      print(formKey.currentState.validate());
      if(formKey.currentState.validate()){
        formKey.currentState.save();
        print('Here WE Have $email and $password');
      }
      },
      child: new Text('Submit!'),
    );
  }
}
