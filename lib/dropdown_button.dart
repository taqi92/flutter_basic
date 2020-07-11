import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DropDownWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<DropDownWidget> {

  var selected = "Choose";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(selected,style: TextStyle(fontSize: 60) ,),
              DropdownButton(
                  items: [
                    DropdownMenuItem(
                      value: "Easy",
                        child: Text("Easy")),
                    DropdownMenuItem(
                        value: "Hard",
                        child: Text("Hard"))
                  ],
                  onChanged: (val){
                    setState(() {
                      selected = val;
                    });
                  })
            ],
          ) ),
        );
  }
}
