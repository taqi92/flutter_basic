import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CheckBoxWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<CheckBoxWidget> {

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_value==false?"unchecked":"checked",style: TextStyle(
              fontSize: 40
            ),),
            Checkbox(value: _value, onChanged: (bool val){
              setState(() {
                _value = val;
              });
            })

          ],
        )
      ),
    );
  }
}
