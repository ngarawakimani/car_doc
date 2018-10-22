import 'package:flutter/material.dart';

class Login extends StatefulWidget{
   
  @override
  LoginState createState() => new LoginState();
}

class LoginState extends State<Login>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("login page"),
          ],
        ),
      ),
    );
  }
}