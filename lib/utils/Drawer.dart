import 'package:flutter/material.dart';
import '../pages/history.dart';
import '../pages/profile.dart';
import '../pages/top_mechanics.dart';


Widget carDrawer (BuildContext context){

  var drawItems = {
    'profile': {
      'name': 'My Profile',
      'path': './profile'
    },
    'help': {
      'name': 'Help',
      'path': './help'
    },
    'history' : {
      'name' : 'History',
      'path' : '../pages/history.dart'
    }
  };

  return Drawer(

    child: Container(
      color: Colors.teal,
      child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
           
          ),
          margin: EdgeInsets.only(bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                child: Text('WK'),
                radius: 40.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0,top: 20.0),
                child: Text("Wakimani",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),),
              )
            ]
          ),
        ),
        ListTile(
          leading: Icon(Icons.person,color: Colors.white,size: 30.0,),
          title: Text('My Profile',style: TextStyle(fontSize: 15.0,color: Colors.white),),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
          },
        ),
        ListTile(
          leading: Icon(Icons.history,color: Colors.white,size: 30.0,),
          title: Text('History',style: TextStyle(fontSize: 15.0,color: Colors.white),),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.push(context, MaterialPageRoute(builder: (context) => History()));
          },
        ),
        ListTile(
          leading: Icon(Icons.account_balance_wallet,color: Colors.white,size: 30.0,),
          title: Text('Top Car Docs',style: TextStyle(fontSize: 15.0,color: Colors.white),),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.push(context, MaterialPageRoute(builder: (context) => TopMechanics()));
          },
        ),
        ListTile(
          leading: Icon(Icons.notifications,color: Colors.white,size: 30.0,),
          title: Text('Notifications',style: TextStyle(fontSize: 15.0,color: Colors.white),),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.help,color: Colors.white,size: 30.0,),
          title: Text('Help',style: TextStyle(fontSize: 15.0,color: Colors.white),),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ],
    ),

    )

  );
}