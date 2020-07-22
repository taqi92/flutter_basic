import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DataTableWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<DataTableWidget> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          body: Center(
            child: DataTable(
              dataRowHeight: 50,
                columns:[
                  DataColumn(label: Text("Name")),
                  DataColumn(label: Text("Age")),
                  DataColumn(label: Icon(Icons.account_box)),
                ] , rows: [
                  DataRow(cells: [
                    DataCell(Text("Abc")),
                    DataCell(Text("54")),
                    DataCell(Text("Man")),
                  ])
            ])
          )
      );
  }
}
