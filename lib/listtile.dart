import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text("this is title"),
              subtitle: Text("this is subtitle"),
              leading: CircleAvatar(child: Icon(Icons.account_box)),
              trailing: Icon(Icons.add),
            ),
            ListTile(
              title: Text("this is title"),
              subtitle: Text("this is subtitle"),
              leading: CircleAvatar(child: Icon(Icons.account_box)),
              trailing: Icon(Icons.add),
            ),
            ListTile(
              title: Text("this is title"),
              subtitle: Text("this is subtitle"),
              leading: CircleAvatar(child: Icon(Icons.account_box)),
              trailing: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
