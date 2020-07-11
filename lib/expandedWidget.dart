import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(flex: 1,child: Container(
              color: Colors.green,
            )),
            Expanded(flex: 1,child: Container(
              color: Colors.deepOrange,
            )),
            Expanded(flex: 1,child: Container(
              color: Colors.amberAccent,
            )),
          ],
        ),
      ),
    );
  }
}
