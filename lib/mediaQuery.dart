import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var containerheight = screenheight / 1.5;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: containerheight,
            width: MediaQuery.of(context).size.width / 1.5,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
