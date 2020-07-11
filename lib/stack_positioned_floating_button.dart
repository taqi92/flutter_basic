import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPositioned extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
          body: Center(
            child: Stack(
              alignment: Alignment.topCenter,
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 1.3,
                  color: Colors.amber,
                ),
                Positioned(
                  bottom: -50,
                    child: CircleAvatar(
                      child: Icon(Icons.accessibility),
                      radius: 40,
                ))
              ],
            ),
          ),
        ));
  }
}
