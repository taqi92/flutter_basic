import 'package:flutter/material.dart';


class AppbarTextWiget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Tutorial"),
            centerTitle: true,
            leading: Icon(Icons.print),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add_alarm),
                onPressed: () {},
              )
            ],
          ),
          body: Center(
            child: Text("this is first tutorial",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
          ),
        ));
  }
}
