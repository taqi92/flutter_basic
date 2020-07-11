import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ImagePickerWidget> {

  File _image;
  Future CameraImage()async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }


  Future GalleryImage()async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.cyan,
              child: _image==null?Center(child: Text("No selected Image")):Image.file(_image),
            ),
            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(onPressed:(){
                  CameraImage();
                },child: Icon(Icons.camera)),
                SizedBox(width: 20,),
                FloatingActionButton(onPressed:(){
                  GalleryImage();
                },child: Icon(Icons.photo_library))
              ],
            )
          ],
        )
      ),
    );
  }
}
