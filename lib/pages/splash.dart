import 'package:flutter/material.dart';

class Splash extends StatelessWidget{

  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.hourglass_empty,
              color: Colors.white,
              size: 150.0,
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                'Welcome To',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 10.0,
                  color: Colors.white,
                  ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                'CAR DOC',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.white,
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}