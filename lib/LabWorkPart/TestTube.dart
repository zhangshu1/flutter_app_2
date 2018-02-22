import 'package:flutter/material.dart';

import '../Material/MenuDrawer.dart';

//void main() => runApp(new MaterialApp(
//  title: 'Test Tube',
//    home: new TestTube(),
//));

class TestTube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    Decoration rowDeco = new Decoration();
    return new Scaffold(
        endDrawer: new Drawer(
          child: new MenuDrawer(),
        ),
        appBar: new AppBar(
//        leading: new IconButton(
//          icon: new Icon(Icons.arrow_drop_down_circle, size: 42.0, color: Colors.white,),
//          onPressed: null),
          title: new Text(
            'Test Tube',
            style: Theme
                .of(context)
                .textTheme
                .display1
                .copyWith(color: Colors.white), textScaleFactor: 0.6,
          ),
        ),

        body: new Container(

        )
    );
  }
}