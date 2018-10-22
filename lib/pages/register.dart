import 'package:flutter/material.dart';
import './maps.dart';

class Register extends StatefulWidget{
   
  @override
  RegisterState createState() => new RegisterState();
}

class RegisterState extends State<Register>{

  String _fullname;
  String _email;
  String _phone;
  String _password;
  bool _confirm = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
        return Scaffold(
          appBar: AppBar(
            title: Text("Register"),
          ),
          body: Container(
            constraints: BoxConstraints.expand(),
            child: new SingleChildScrollView(
              child: new ConstrainedBox(
                constraints: new BoxConstraints(),
                  child:Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0,bottom: 30.0),
                        child: Column(
                          children: <Widget>[
                            Text("Sign Up Now",style: TextStyle(color: Colors.teal,fontSize: 20.0,fontWeight: FontWeight.bold),),
                            Padding(
                              padding: EdgeInsets.only(top:10.0),
                              child: Text("Welcome to Card Doc",style: TextStyle(color: Colors.teal,fontSize: 12.0,fontWeight: FontWeight.normal),),
                            ),
                          ],
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0,bottom: 15.0,left: 50.0,right: 50.0),
                              child: new TextFormField(
                                onSaved: (val) => _fullname = val,
                                validator: (val) {

                                  if (val.isEmpty) {
                                    return "Please Enter your full name";
                                  }else if(val.length < 10){
                                    return "Full name must have atleast 20 chars";
                                  } else{
                                    return null;
                                  }
                                },
                                decoration: new InputDecoration(
                                  contentPadding: EdgeInsets.all(10.0),
                                  hintText: "Full Name",
                                  border: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(30.0)),borderSide: BorderSide(color: Colors.teal,width: 2.0))
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0,bottom: 15.0,left: 50.0,right: 50.0),
                              child: new TextFormField(
                                onSaved: (val) => _email = val,
                                validator: (val) {

                                  if (val.isEmpty) {
                                    return "Please Enter your Email Address";
                                  }else if(val.length < 10){
                                    return "Email Address must have atleast 10 chars";
                                  } else{
                                    return null;
                                  }
                                },
                                decoration: new InputDecoration(
                                  contentPadding: EdgeInsets.all(10.0),
                                  hintText: "Email",
                                  border: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(30.0)),borderSide: BorderSide(color: Colors.teal,width: 2.0))
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0,bottom: 15.0,left: 50.0,right: 50.0),
                              child: new TextFormField(
                                onSaved: (val) => _phone = val,
                                validator: (val) {

                                  if (val.isEmpty) {
                                    return "Please Enter your Phone Number";
                                  }else if(val.length < 10){
                                    return "Phone Numbe must have atleast 10 chars";
                                  } else{
                                    return null;
                                  }
                                },
                                decoration: new InputDecoration(
                                  contentPadding: EdgeInsets.all(10.0),
                                  hintText: "Phone Number",
                                  border: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(30.0)),borderSide: BorderSide(color: Colors.teal,width: 2.0))
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0,bottom: 15.0,left: 50.0,right: 50.0),
                              child: new TextFormField(
                                onSaved: (val) => _password = val,
                                validator: (val) {

                                  if (val.isEmpty) {
                                    return "Please Enter your Password";
                                  }else if(val.length < 10){
                                    return "Password must have atleast 10 chars";
                                  } else{
                                    return null;
                                  }
                                },
                                decoration: new InputDecoration(
                                  contentPadding: EdgeInsets.all(10.0),
                                  hintText: "Password",
                                  border: OutlineInputBorder(borderRadius : BorderRadius.all(Radius.circular(30.0)),borderSide: BorderSide(color: Colors.teal,width: 2.0))
                                ),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0),
                            child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              value: true,
                              title: Text("I agree with the terms and conditions and the privacy policy",style: TextStyle(fontSize: 10.0),),
                              onChanged: (bool value) {
                                setState(() {
                                  _confirm = true;
                                });
                              }
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
                                if (_formKey.currentState.validate()) {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => CarMap()));
                                }
                              },
                              child: Text('Submit'),
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