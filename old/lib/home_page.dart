import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context)  {
    return MaterialApp();
    home: homeScreen;
  }
}

class homeScreen extends StatefulWidget {
  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<homeScreen> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();

    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: Text(
                "Day Maker",
                style: TextStyle(
                  color: Colors.white,
                )
            ),
          ),
          body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TableCalendar(
                    initialCalendarFormat: CalendarFormat.week,
                    calendarStyle: CalendarStyle(
                      todayColor: Colors.amber,
                      selectedColor: Colors.grey,
                    ),
                    calendarController: _controller,)
                ],
              )
          )
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}
