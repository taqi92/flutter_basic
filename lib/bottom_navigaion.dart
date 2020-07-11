import 'package:flutter/material.dart';
import 'package:flutterappbartextwidget/main.dart';
import 'package:flutterappbartextwidget/pageview_page/page1.dart';
import 'package:flutterappbartextwidget/pageview_page/page2.dart';
import 'package:flutterappbartextwidget/pageview_page/page3.dart';
import 'package:flutterappbartextwidget/pageview_page/page4.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<BottomNavigationWidget> {

  var _currentindex = 0;

  final pages = [Page1(),Page2(),Page3(),Page4()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(

          currentIndex: _currentindex,
          items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              title: Text("james"), icon: Icon(Icons.accessibility)),
          BottomNavigationBarItem(
              title: Text("artcell"), icon: Icon(Icons.music_video)),
          BottomNavigationBarItem(
              title: Text("black"), icon: Icon(Icons.music_note)),
          BottomNavigationBarItem(
              title: Text("aurthohin"), icon: Icon(Icons.library_music)),
        ],


          onTap: (index){
            setState(() {
              _currentindex=index;
            });

          },
        ),


        body: pages[_currentindex]);
  }
}
