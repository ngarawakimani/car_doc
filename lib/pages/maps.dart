import 'package:flutter/material.dart';
import '../utils/Drawer.dart';

class CarMap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Car Doc")),
      body: Center(child: Text('My Page!')),
      drawer: carDrawer(context),
    );
  }
}