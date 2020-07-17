import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SwitchWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SwitchWidget> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: _value==false?Colors.red:Colors.green,
      body: Center(
          child: Switch(
              value: _value,
              onChanged: (val) {
                setState(() {
                  _value = val;
                });
              })),
    );
  }
}
