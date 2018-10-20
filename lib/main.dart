import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/splash.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Doc',
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new Splash(),
    );
  }
}
