import 'package:flutter/material.dart';
import 'package:flutterappbartextwidget/slider.dart';
import 'package:flutterappbartextwidget/toast.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Tutorial"),
            centerTitle: true,
          ),
          body: SliderWidget(),
        ));
  }
}
