import 'package:flutter/material.dart';

import '../Material/MenuDrawer.dart';

class PssatForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),

      appBar: new AppBar(
        title: new Text("Lab Work", style: new TextStyle(color: Colors.black),
            textAlign: TextAlign.left),
      ),

      body: new Container(

      ),

    );
  }
}