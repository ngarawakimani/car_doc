import 'package:flutter/material.dart';
import 'maps.dart';
import 'register.dart';

class Splash extends StatefulWidget{

  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<Splash>{

  @override
  void initState() {
    super.initState();
    new Future.delayed(
      const Duration(seconds: 5),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Register()
        ),
      )
    );
  }

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