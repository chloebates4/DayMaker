import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:calendar_strip/calendar_strip.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DayMaker',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: MyHomePage(title: 'DayMaker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  DateTime startDate = DateTime.now().subtract( Duration(days: 2) );

  DateTime endDate = DateTime.now().add( Duration(days: 2) );

  DateTime selectedDate = DateTime.now().subtract( Duration(days: 2) );

  List<DateTime> markedDates = [
    DateTime.now().subtract( Duration(days: 1) ),
    DateTime.now().subtract( Duration(days: 2) ),
    DateTime.now().add( Duration(days: 4) )
  ];

  onSelect(data) {
    print("Selected Date -> $data");
  }

  _monthNameWidget(monthName) {
    return Container(
      child: Text(
        monthName,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
          fontStyle: FontStyle.italic,
        ),
      ),
      padding: EdgeInsets.only(top: 8, bottom: 4),
    );
  }

  getMarkedIndicatorWidget() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        margin: EdgeInsets.only(left: 1, right: 1),
        width: 7,
        height: 7,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
      ),
      Container(
        width: 7,
        height: 7,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
      )
    ]);
  }

  dateTileBuilder(date, selectedDate, rowIndex, dayName, isDateMarked, isDateOutOfRange) {
    bool isSelectedDate = date.compareTo(selectedDate) == 0;
    Color fontColor = isDateOutOfRange ? Colors.black26 : Colors.black87;
    TextStyle normalStyle = TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: fontColor);
    TextStyle selectedStyle = TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: Colors.black87);
    TextStyle dayNameStyle = TextStyle(fontSize: 14.5, color: fontColor);
    List<Widget> _children = [
      Text(dayName, style: dayNameStyle),
      Text(date.day.toString(), style: !isSelectedDate ? normalStyle : selectedStyle),
    ];

    if (isDateMarked == true) {
      _children.add(getMarkedIndicatorWidget());
    }

    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 8, left: 5, right: 5, bottom: 5),
      decoration: BoxDecoration(
        color: !isSelectedDate ? Colors.transparent : Colors.white70,
        borderRadius: BorderRadius.all(Radius.circular(60)),
      ),
      child: Column(
        children: _children,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          child: CalendarStrip(
            startDate: startDate,
            endDate: endDate,
            onDateSelected: onSelect,
            dateTileBuilder: dateTileBuilder,
            iconColor: Colors.black87,
            monthNameWidget: _monthNameWidget,
            markedDates: markedDates,
            containerDecoration: BoxDecoration(color: Colors.black12),
            addSwipeGesture: true,
          )),
    );
  }
}

/*
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
*/