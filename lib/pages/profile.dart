import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './maps.dart';

class Profile extends StatefulWidget{
   
  @override
  ProfileState createState() => new ProfileState();
}

class ProfileState extends State<Profile>{

  String _profileFullname;
  String _profileEmail;
  String _profilePhone;
  String _profileLocation;
  bool _profileConfirm = false;
  final _profileFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
        return Scaffold(
          appBar: AppBar(
            title: Text("My Profile"),
          ),
          body: Container(
            constraints: BoxConstraints.expand(),
            child: new SingleChildScrollView(
              child: new ConstrainedBox(
                constraints: new BoxConstraints(),
                  child:Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0,bottom: 30.0),
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              child: Text('WK'),
                              radius: 40.0,
                            ),
                            // Padding(
                            //   padding: EdgeInsets.only(left: 5.0,top: 20.0),
                            //   child: Text("Wakimani",style: TextStyle(
                            //     color: Colors.teal,
                            //     fontSize: 20.0
                            //   ),),
                            // )
                          ],
                        ),
                      ),
                      Form(
                        key: _profileFormKey,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0,bottom: 15.0,left: 50.0,right: 50.0),
                              child: Column(
                                children: <Widget>[
                                  new TextFormField(
                                    onSaved: (val) => _profileFullname = val,
                                    validator: (val) {

                                      if (val.isEmpty) {
                                        return "Please Enter your full name";
                                      }else if(val.length < 10){
                                        return "Full name must have atleast 20 chars";
                                      } else{
                                        return null;
                                      }
                                    },
                                    initialValue: "Dancan Kimani",
                                    decoration: new InputDecoration(
                                      contentPadding: EdgeInsets.all(15.0),
                                      hintText: "Full Name",
                                      labelText: "Full Name:",
                                      suffixIcon: Icon(IconData(57680, fontFamily: 'MaterialIcons'),color: Colors.teal),
                                      alignLabelWithHint: true,
                                      enabled: true,
                                      hasFloatingPlaceholder: true,
                                      border: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(30.0)),borderSide: BorderSide(color: Colors.white,width: 2.0)),
                                      enabledBorder: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(0.0)),borderSide: BorderSide(color: Colors.white,width: 0.0)),
                                      focusedBorder: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(25.0)),borderSide: BorderSide(color: Colors.teal,width: 2.0)),
                                      focusedErrorBorder: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(25.0)),borderSide: BorderSide(color: Colors.red,width: 2.0)),
                                      
                                    ),
                                  ),
                                ]
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0,bottom: 15.0,left: 50.0,right: 50.0),
                              child: new TextFormField(
                                onSaved: (val) => _profileEmail = val,
                                validator: (val) {

                                  if (val.isEmpty) {
                                    return "Please Enter your Email Address";
                                  }else if(val.length < 10){
                                    return "Email Address must have atleast 10 chars";
                                  } else{
                                    return null;
                                  }
                                },
                                initialValue: "dancankimani70@gmail.com",
                                decoration: new InputDecoration(
                                  contentPadding: EdgeInsets.all(15.0),
                                  hintText: "Email",
                                  labelText: "Email:",
                                  suffixIcon: Icon(IconData(57680, fontFamily: 'MaterialIcons'),color: Colors.teal),
                                  alignLabelWithHint: true,
                                  enabled: true,
                                  hasFloatingPlaceholder: true,
                                  border: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(30.0)),borderSide: BorderSide(color: Colors.white,width: 2.0)),
                                  enabledBorder: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(0.0)),borderSide: BorderSide(color: Colors.white,width: 0.0)),
                                  focusedBorder: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(25.0)),borderSide: BorderSide(color: Colors.teal,width: 2.0)),
                                  focusedErrorBorder: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(25.0)),borderSide: BorderSide(color: Colors.red,width: 2.0)),
                                      
                                  ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0,bottom: 15.0,left: 50.0,right: 50.0),
                              child: new TextFormField(
                                onSaved: (val) => _profilePhone = val,
                                validator: (val) {

                                  if (val.isEmpty) {
                                    return "Please Enter your Phone Number";
                                  }else if(val.length < 10){
                                    return "Phone Numbe must have atleast 10 chars";
                                  } else{
                                    return null;
                                  }
                                },
                                initialValue: "+254724088765",
                                decoration: new InputDecoration(
                                  contentPadding: EdgeInsets.all(15.0),
                                  hintText: "Phone Number",
                                  labelText: "Phone Number:",
                                  suffixIcon: Icon(IconData(57680, fontFamily: 'MaterialIcons'),color: Colors.teal),
                                  alignLabelWithHint: true,
                                  enabled: true,
                                  hasFloatingPlaceholder: true,
                                  border: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(30.0)),borderSide: BorderSide(color: Colors.white,width: 2.0)),
                                  enabledBorder: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(0.0)),borderSide: BorderSide(color: Colors.white,width: 0.0)),
                                  focusedBorder: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(25.0)),borderSide: BorderSide(color: Colors.teal,width: 2.0)),
                                  focusedErrorBorder: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(25.0)),borderSide: BorderSide(color: Colors.red,width: 2.0)),
                                      
                                  ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0,bottom: 15.0,left: 50.0,right: 50.0),
                              child: new TextFormField(
                                onSaved: (val) => _profileLocation = val,
                                validator: (val) {

                                  if (val.isEmpty) {
                                    return "Please Enter your County";
                                  }else if(val.length < 5){
                                    return "";
                                  } else{
                                    return null;
                                  }

                                },
                                initialValue: "Nakuru",
                                decoration: new InputDecoration(
                                  contentPadding: EdgeInsets.all(10.0),
                                  hintText: "County",
                                  labelText: "County",
                                  suffixIcon: Icon(IconData(57680, fontFamily: 'MaterialIcons'),color: Colors.teal),
                                  alignLabelWithHint: true,
                                  enabled: true,
                                  hasFloatingPlaceholder: true,
                                  border: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(25.0)),borderSide: BorderSide(color: Colors.white,width: 2.0)),
                                  enabledBorder: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(0.0)),borderSide: BorderSide(color: Colors.white,width: 0.0)),
                                  focusedBorder: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(25.0)),borderSide: BorderSide(color: Colors.teal,width: 2.0)),
                                  focusedErrorBorder: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(25.0)),borderSide: BorderSide(color: Colors.red,width: 2.0)),
                                ),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: RaisedButton(
                              color: Colors.teal,
                              textColor: Colors.white,
                              padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 110.0, right: 110.0),
                              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                              onPressed: () {
                                if (_profileFormKey.currentState.validate()) {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => CarMap()));
                                }
                              },
                              child: Text('Update'),
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              ),
          ),
        ),
      ),
    );
  }
}