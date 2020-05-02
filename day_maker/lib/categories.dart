/*
Calendar categories - for classes, assignments, etc.
 */
import 'package:flutter/material.dart';

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
                buildKey(inColor: Colors.purple)
              ],
            )
        ),
      ),

    );
  }
}




