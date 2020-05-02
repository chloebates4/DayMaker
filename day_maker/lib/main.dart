import 'package:flutter/material.dart';
import 'package:calendar_strip/calendar_strip.dart';

import 'package:daymaker/home_page.dart';
import 'package:table_calendar/table_calendar.dart';


void main() {
  return runApp(
    MaterialApp(
      home: TitlePage(),
    ),
  );
}

class TitlePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  new Container(
                    child: Text(
                      "Day Maker",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 50,
                      ),
                    ),
                  ),
                  new Container(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          // TODO: Error here, need to connect the home_page to enter page...
                          MaterialPageRoute(builder: (context) => _MyHomePageState()),
                        );
                      },
                      child: Text("ENTER"),
                      color:Colors.grey,
                      textColor: Colors.white,
                      highlightColor: Colors.black54,
                    ),
                  ),
                ]
            )
        ),
      ),
    );
  }
}


