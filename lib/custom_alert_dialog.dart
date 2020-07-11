import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomAlertDialogWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<CustomAlertDialogWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RaisedButton(onPressed: (){
            showDialog(context: context,
            builder: (context){
              return Dialog(
                child: Stack(
                  overflow: Overflow.visible,
                  alignment: Alignment.topCenter,
                  children:<Widget>[
                    Container(
                      height: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                            children: <Widget>[
                              SizedBox(height: 40,),
                              new Text("Alert Dialog",
                                style: TextStyle(
                                    fontFamily: "segoe UI",fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                    color: Colors.green
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              new Text("This Alert Dialog is a custom one",
                                style: TextStyle(
                                    fontFamily: "segoe UI",fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Colors.black
                                ),
                              )
                            ],
                          ),
                      ),
                    ),
                    Positioned(
                      top: -50,
                        child: CircleAvatar(
                      radius: 50,
                    ))
                  ]
                ),
              );
            });
          },child: Text("Custom Alert Dialog"),)
        ),
      ),
    );
  }
}
