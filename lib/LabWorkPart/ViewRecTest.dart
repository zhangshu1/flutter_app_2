import 'package:flutter/material.dart';

import '../Material/MenuDrawer.dart';

void main() => runApp(new MaterialApp(
  title: 'Customize Care Plan',
    home: new ViewRecTest(),
));

class ViewRecTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),
      appBar: new AppBar(
//        leading: new IconButton(
//          icon: new Icon(Icons.arrow_drop_down_circle, size: 42.0, color: Colors.white,),
//          onPressed: null),
        title: new Text(
          'View Recommended Test',
          style: Theme
            .of(context)
            .textTheme
            .display1
            .copyWith(color: Colors.white), textScaleFactor: 0.6,
        ),
      ),

      body: new Column(
        children: <Widget>[
          new Container(
            alignment: Alignment.center,
            child: new Column(
              children: <Widget>[
                new Text("To be continued")
              ],
            )
          )
        ],
      ),
    );
  }
}