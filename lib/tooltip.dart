import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ToolTipWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ToolTipWidget> {

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             Tooltip(
               message: "this is container",
               child: Container(
                 height: 200,
                 color: Colors.green,
               ),
             )
            ],
          )
      ),
    );
  }
}
