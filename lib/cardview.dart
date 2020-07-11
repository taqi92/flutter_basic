import 'package:flutter/material.dart';

class CardViewWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Container(
            height: 200,
            width: 200,
            color: Colors.green,
          ),
        )),
      ),
    );
  }
}
