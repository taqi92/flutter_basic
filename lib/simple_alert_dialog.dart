import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SimpleAlertDialogWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SimpleAlertDialogWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RaisedButton(onPressed: (){
            showDialog(context: context,
            builder: (context){
              return AlertDialog(
                title: Text("Alert Dialog"),
                content: Text("This is simple Alert Dialog"),
                actions: <Widget>[
                  RaisedButton(onPressed: (){
                    Navigator.pop(context);
                  },child: Text("OK"),)
                ],
              );
            });
            }, child: Text("Show Alert dialog"),
          ),
        ),
      ),
    );
  }
}
