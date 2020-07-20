import 'package:flutter/material.dart';
import 'package:flutterappbartextwidget/ExpansionTile.dart';
import 'package:flutterappbartextwidget/animated_container.dart';
import 'package:flutterappbartextwidget/backdrop_filter.dart';
import 'package:flutterappbartextwidget/checkbox.dart';
import 'package:flutterappbartextwidget/dismissible.dart';
import 'package:flutterappbartextwidget/switch.dart';
import 'package:flutterappbartextwidget/tooltip.dart';


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
          body: BackDropFilterWidget(),
        ));
  }
}
