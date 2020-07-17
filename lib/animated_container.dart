import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AnimatedContainerWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<AnimatedContainerWidget> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.zoom_out_map),
            onPressed: () {
          setState(() {
            _value = !_value;
          });
        }),
        body: Center(
          child: AnimatedContainer(
              height: _value == false ? 150 : 350,
              width: _value == false ? 150 : 300,
              color: Colors.teal,
              duration: Duration(seconds: 4)
          ),
        ),
      ),
    );
  }
}
