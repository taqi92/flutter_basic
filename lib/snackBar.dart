import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SnackBarWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SnackBarWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
          child: Builder(
            builder: (BuildContext con) {
              return RaisedButton(
                onPressed: () {
                  Scaffold.of(con).showSnackBar(SnackBar(
                    content: Text("This is Snackbar"),
                    duration: Duration(seconds: 10),
                    action: SnackBarAction(label: "Ok", onPressed: (){}),
                  ));
                },
                child: Text("Show Snackbar"),
              );
            },
          ),
        ),
      );
  }
}
