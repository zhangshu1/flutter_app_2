import 'package:flutter/material.dart';

import '../Material/MenuDrawer.dart';

class TimeB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),

      appBar: new AppBar(
        title: new Text(
            "Time B", style: new TextStyle(color: Colors.black),
            textAlign: TextAlign.left),
      ),

      body: new Container(

      ),

    );
  }
}

//void main() => runApp(
//  new MaterialApp(
//    title: 'Time B',
//    home: new TimeB(),
//  )
//);