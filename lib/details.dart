import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsPage extends StatelessWidget{

  var receivedata;
  DetailsPage({this.receivedata});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Image.network(receivedata["avatar"]),

      ),

    );

  }


}