import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image.network("https://www.inovex.de/blog/wp-content/uploads/2019/01/Flutter-1-1.png"),//Image.asset("images/newspaper.png"),
        ),
      ),
    );
  }
}
