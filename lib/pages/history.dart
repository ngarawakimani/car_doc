import 'package:flutter/material.dart';

class History extends StatefulWidget{
   
  @override
  HistoryState createState() => new HistoryState();
}

class HistoryState extends State<History>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("History page"),
          ],
        ),
      ),
    );
  }
}