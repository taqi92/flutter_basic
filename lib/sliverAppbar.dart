import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SliverAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                expandedHeight: 200,
                backgroundColor: Colors.teal,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("SliverApp example"),
                ),
            ),
            SliverList(delegate: SliverChildListDelegate(<Widget>[
              ListTile(
                title: Text("1"),
                subtitle: Text("this is one"),
              ),
              ListTile(
                title: Text("1"),
                subtitle: Text("this is one"),
              ),
              ListTile(
                title: Text("1"),
                subtitle: Text("this is one"),
              ),
              ListTile(
                title: Text("1"),
                subtitle: Text("this is one"),
              ),
              ListTile(
                title: Text("1"),
                subtitle: Text("this is one"),
              ),
              ListTile(
                title: Text("1"),
                subtitle: Text("this is one"),
              )
            ]))
          ],
        ),
      ),
    );
  }
}
