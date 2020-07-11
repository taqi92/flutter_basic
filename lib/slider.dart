import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SliderWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SliderWidget> {
  var _value = 10.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Example for slider effect!",
          style: TextStyle(fontSize: _value),),
        SizedBox(height: 10,),
        Slider(
            min: 10,
            max: 50,
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
                //print(value); //if anyone wants to show value in console
              });
            })
      ],
    ));
  }
}
