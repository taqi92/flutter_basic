import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwipeWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final pages = [
      Container(color: Colors.blue,),
      Container(color: Colors.amber,),
      Container(color: Colors.green,),
      Container(color: Colors.deepOrange,)
    ];

    return MaterialApp(
      home: Scaffold(
        body: LiquidSwipe(pages: pages)
      )
    );

  }


}
