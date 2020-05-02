/*
Calendar categories - for classes, assignments, etc.
 */
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

class Categories extends StatelessWidget {


  void viewColorCategory(int colorNumIdentifier) {
    // TODO: view category
  }

  Expanded buildKey({Color inColor, int inSoundNum}) {
    return Expanded(
      child: FlatButton(
        color: inColor,
        onPressed: () {
          viewColorCategory(0); //todo: change number
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('List of Categories'),
          backgroundColor: Colors.cyan,
        ),
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(inColor: Colors.red),
                buildKey(inColor: Colors.orange),
                buildKey(inColor: Colors.yellow),
                buildKey(inColor: Colors.green),
                buildKey(inColor: Colors.teal),
                buildKey(inColor: Colors.blue),
                buildKey(inColor: Colors.purple),
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
            )
        ),
      ),

    );
  }
}
