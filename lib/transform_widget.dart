import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TransformWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<TransformWidget> {

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: Transform.translate( //more properties scale,rotate etc
              offset: Offset(50, 100),
              child: Container(
                height: 150,
                width: 150,
                color: Colors.green,
              ),
            ),
          )
      ),
    );
  }
}
