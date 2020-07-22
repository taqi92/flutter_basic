import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DateTimePickerWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<DateTimePickerWidget> {
  DateTime _dateTime;
  TimeOfDay _timeOfDay;

  getDate() async {
    DateTime date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year - 20),
        lastDate: DateTime(DateTime.now().year + 2));

    setState(() {
      _dateTime = date;
    });
  }

  getTime()async{

    TimeOfDay time = await showTimePicker(context: context, initialTime: TimeOfDay.now());
    setState(() {
      _timeOfDay = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _dateTime == null
                ? Text("Choose date")
                : Text(
                    "Date : ${_dateTime.day}/${_dateTime.month}/${_dateTime.year}",
                    style: TextStyle(fontSize: 40),
                  ),
            RaisedButton(
              onPressed: () {
                getDate();
              },
              child: Text("Date Picker"),
            ),
            _timeOfDay == null
                ? Text("Choose time")
                : Text(
              "Time : ${_timeOfDay.hour}:${_timeOfDay.minute}",
              style: TextStyle(fontSize: 40),
            ),
            RaisedButton(onPressed: () {
              getTime();
            },child: Text("Time Picker"),),
          ],
        ),
      )),
    );
  }
}
