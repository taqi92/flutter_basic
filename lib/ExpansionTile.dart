import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ExpansionTileWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ExpansionTileWidget> {

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          ExpansionTile(
            
            title: Text("One"),
            subtitle: Text("This is one"),
            leading: Icon(Icons.access_time),
            trailing: Icon(Icons.arrow_downward),
            children: <Widget>[
              Container(
                height: 200,
                color: Colors.teal,
              )
            ],
          )
          
        ],
      )
    );
  }
}
