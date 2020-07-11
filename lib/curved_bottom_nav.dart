import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterappbartextwidget/main.dart';
import 'package:flutterappbartextwidget/pageview_page/page1.dart';
import 'package:flutterappbartextwidget/pageview_page/page2.dart';
import 'package:flutterappbartextwidget/pageview_page/page3.dart';
import 'package:flutterappbartextwidget/pageview_page/page4.dart';

class CurvedBottomNav extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<CurvedBottomNav> {

  var _currentindex = 0;

  final pages = [Page1(),Page2(),Page3(),Page4()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(

          index: 0,
          color: Colors.blue,
          buttonBackgroundColor: Colors.blue,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(microseconds: 600),
          items: [
           Icon(Icons.image),
            Icon(Icons.library_music),
            Icon(Icons.music_video),
            Icon(Icons.account_box),
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
