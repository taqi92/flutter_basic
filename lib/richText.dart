import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RichTextWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<RichTextWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
      child: RichText(
          text: TextSpan(
              text: "New here?",
              style: TextStyle(fontSize: 30, color: Colors.green),
              children: [
            TextSpan(
                text: "Sign up!",
                style: TextStyle(fontSize: 30, color: Colors.redAccent))
          ])),
    ));
  }
}
