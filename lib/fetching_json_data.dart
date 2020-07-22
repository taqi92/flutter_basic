import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterappbartextwidget/details.dart';
import 'package:http/http.dart'as http;


class FetchingJsonData extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<FetchingJsonData> {

  var data;
  Future getData() async{

    var response = await http.get("https://reqres.in/api/users?page=2");
    setState(() {

      var decode = json.decode(response.body);
      data = decode["data"];
      print(data);

    });

  }

  @override
  void initState(){
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: ListView.builder(itemCount: data == null?0:data.length,
      itemBuilder: (context,index){

        return ListTile(
          title: Text(data[index]["first_name"]),
          subtitle: Text(data[index]["email"]),
          onTap: (){
            
            Navigator.push(context,
                MaterialPageRoute(builder:(context)=> DetailsPage(receivedata:data[index],)));
          },
        );
        
      }),
    );
  }
}
