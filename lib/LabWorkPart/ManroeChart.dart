import 'package:flutter/material.dart';

import '../Material/all.dart';
import '../Material/globals.dart' as globals;

//void main() => runApp(new MaterialApp(
//  title: 'Manroe Chart',
//    home: new ManroeChart(),
//));

class ManroeChart extends StatelessWidget {
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
            'Manroe Chart', textScaleFactor: globals.textScaleFactor,
            style: Theme
                .of(context)
                .textTheme
                .display1
                .copyWith(color: Colors.white),
          ),
        ),

        body: new Container(

        )
    );
  }
}