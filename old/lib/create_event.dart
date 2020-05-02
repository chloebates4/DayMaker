import 'package:flutter/material.dart';

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
            ],
          ),
        ),
      ),
    );
  }
}

