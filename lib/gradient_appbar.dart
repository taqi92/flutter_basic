import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        tileMode: TileMode.clamp,
                        colors: [Colors.cyan,Colors.amberAccent])
                ),
              ),
            ),
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    tileMode: TileMode.clamp,
                    colors: [Colors.cyan,Colors.amberAccent])
              ),
            )
          ),
        ));
  }
}
