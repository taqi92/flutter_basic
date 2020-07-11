import 'package:flutter/material.dart';
import 'package:flutterappbartextwidget/listtile.dart';

class HeroWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
          body: Center(
            child: CircleAvatar(
              radius: 50,
              child: GestureDetector(
                  child: Hero(tag: "add", //we can pass it in any file using this same tag
                      child: Icon(Icons.add_alarm, size: 50,)
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => ListTileWidget()));
                  }),
            ),
          )
      ),
    );
  }
}
