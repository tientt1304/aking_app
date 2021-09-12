import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'body_worklisttoday.dart';

class BodyWorkListMonth extends StatefulWidget {
  const BodyWorkListMonth({Key? key}) : super(key: key);

  @override
  _BodyWorkListMonthState createState() => _BodyWorkListMonthState();
}

class _BodyWorkListMonthState extends State<BodyWorkListMonth> {
  CalendarFormat format = CalendarFormat.week;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TableCalendar(
          focusedDay: selectedDay,
          firstDay: DateTime(2000),
          lastDay: DateTime(2050),
          calendarFormat: format,
          onFormatChanged: (CalendarFormat _format){
            setState(() {
              format = _format;
            });
          },

          startingDayOfWeek: StartingDayOfWeek.monday,
          daysOfWeekVisible: true,
          onDaySelected: (DateTime selectDay, DateTime focusDay){
            setState(() {
              selectedDay = selectDay;
              focusedDay = focusDay;
            });
            print(focusedDay);
          },
          calendarStyle: CalendarStyle(
            isTodayHighlighted: true,
            selectedDecoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            selectedTextStyle: TextStyle(color: Colors.white),

          ),
        ),
        BodyWorkListToday(),
      ],
    );
  }
}
