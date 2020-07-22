import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

class ToastWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ToastWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Builder(
          builder: (BuildContext con) {
            return RaisedButton(
              onPressed: () {

                Fluttertoast.showToast(
                    msg: "This is a simple toast!!",
                toastLength: Toast.LENGTH_LONG,
                backgroundColor: Colors.green,
                textColor: Colors.white,
                gravity: ToastGravity.BOTTOM);



              },
              child: Text("Show toast"),
            );
          },
        ),
      ),
    );
  }
}
