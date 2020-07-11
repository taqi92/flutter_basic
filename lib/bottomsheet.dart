import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BottomSheetWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<BottomSheetWidget> {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          body: Center(
            child: RaisedButton(onPressed: (){
              showModalBottomSheet(context: context, builder: (context){
                return Container(
                  height: 250,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text("1"),
                        subtitle: Text("this is one"),
                      ),
                      ListTile(
                        title: Text("1"),
                        subtitle: Text("this is one"),
                      ),
                      ListTile(
                        title: Text("1"),
                        subtitle: Text("this is one"),
                      ),
                    ],
                  ),
                );
              });
            },child: Text("Click me"),),
          ),
      ),
    );
  }
}
