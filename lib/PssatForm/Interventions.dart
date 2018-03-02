import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Material/MenuDrawer.dart';

class interventionData {
  String et;
  String isEt;
  String orderTime;
  String orderModel;
  String cultureTime;
  String antibioticsTime;
}

class Interventions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),

      appBar: new AppBar(
        title: new Text(
            "Specific Interventions", style: new TextStyle(color: Colors.black),
            textAlign: TextAlign.left),
      ),

      body: new Container(

      ),

    );
  }
}

void main() => runApp(
  new MaterialApp(
    title: 'Specific Interventions',
    home: new Interventions(),
  )
);