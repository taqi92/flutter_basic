import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BackDropFilterWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<BackDropFilterWidget> {

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.teal,
                ),
                BackdropFilter(filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
                child: Container(
                  color: Colors.white.withOpacity(0.3),
                ),)
              ],
            ),
          )
      ),
    );
  }
}
