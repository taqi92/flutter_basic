import 'package:flutter/material.dart';
import 'package:flutterappbartextwidget/pageview_page/page1.dart';
import 'package:flutterappbartextwidget/pageview_page/page2.dart';

class TabviewWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.camera),),
                    Tab(icon: Icon(Icons.library_music),)
                  ]),
            ),
            body: TabBarView(children: [
              Page1(),
              Page2()
            ]),
          ))
    );
  }
}
