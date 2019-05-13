import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class TopMechanics extends StatefulWidget{
   
  @override
  TopMechanicsState createState() => new TopMechanicsState();
}

class TopMechanicsState extends State<TopMechanics>{

  double rating = 3.5;
  int starCount = 6;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Top Car docs"),
      ),
      body: Container(
        child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              decoration: new BoxDecoration(
                border: new Border(
                          bottom: new BorderSide(width: 1.0, color: Colors.black12))
                ),
              child: new ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                leading: Container(
                  padding: EdgeInsets.only(right: 12.0),
                  // decoration: new BoxDecoration(
                  //     border: new Border(
                  //         right: new BorderSide(width: 1.0, color: Colors.black26))),
                  child: CircleAvatar(
                            child: Text('NK'),
                            radius: 25.0,
                  ),
                ),
                title: Text(
                  "Ngara wa kimani",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
                // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Icon(Icons.linear_scale, color: Colors.yellowAccent),
                    Text(" Intermediate", style: TextStyle(color: Colors.black)),
                    StarRating(
                      size: 25.0,
                      rating: rating,
                      color: Colors.teal,
                      borderColor: Colors.grey,
                      starCount: starCount,
                      onRatingChanged: (rating) => setState(
                            () {
                              this.rating = rating;
                            },
                          ),
                    ),
                  ],
                ),
                trailing:
                    Icon(Icons.keyboard_arrow_right, color: Colors.teal, size: 30.0)
              ),
            );
        },
      ),
      ),
    );
  }

}