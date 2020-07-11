import 'package:flutter/material.dart';

class GridviewWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
            children: <Widget>[
              Container(
                height: 150,
                width: 100,
                color: Colors.amber,
              ),
              Container(
                height: 150,
                width: 100,
                color: Colors.green,
              ),
              Container(
                height: 150,
                width: 100,
                color: Colors.deepOrange,
              ),
              Container(
                height: 150,
                width: 100,
                color: Colors.blue,
              )
            ],
          ),
        )
      ),
    );
  }
}
