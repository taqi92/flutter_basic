import 'package:flutter/material.dart';
import 'package:flutterappbartextwidget/main.dart';
import 'package:flutterappbartextwidget/pageview_page/page1.dart';
import 'package:flutterappbartextwidget/pageview_page/page2.dart';

class PageViewWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<PageViewWidget> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: _controller,
          children: <Widget>[
            Page1(),
            Page2(),
          ],
        ),
      ),
    );
  }
}
