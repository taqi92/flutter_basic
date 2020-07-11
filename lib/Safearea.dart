import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SafeareaWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            body: Text(
              "this is safearea tutorial",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
          ),
        ));
  }
}
