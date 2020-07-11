import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DismissibleWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<DismissibleWidget> {
  var selected = "Choose";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Dismissible(
          key: ValueKey("abc"),
          background: Container(
            color: Colors.teal,
            child: Icon(Icons.delete,size: 40)

          ),
          secondaryBackground: Container(
              color: Colors.redAccent,
              child: Icon(Icons.delete,size: 40)

          ),
          child: ListTile(
            title: Text("this is title"),
            subtitle: Text("this is subtitle"),
            leading: CircleAvatar(child: Icon(Icons.account_box)),
            trailing: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
