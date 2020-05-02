import 'package:flutter/material.dart';
import 'package:daymaker/home_page.dart';

Route _homeRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MyHomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class createEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Container(
                child: Text(
                  "Add Categroy:",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 40,
                  ),
                ),
              ),
              new Container(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Title"
                  ),
                ),
              ),
              new Container(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Start"
                  ),
                ),
              ),
              new Container(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "End"
                  ),
                ),
              ),
              new Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(_homeRoute());
                  },
                  child: Text("BACK"),
                  color:Colors.grey,
                  textColor: Colors.white,
                  highlightColor: Colors.black54,
                ),
              ),
              new Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(_homeRoute());
                  },
                  child: Text("SAVE"),
                  color:Colors.grey,
                  textColor: Colors.white,
                  highlightColor: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

