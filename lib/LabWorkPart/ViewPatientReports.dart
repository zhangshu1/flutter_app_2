import 'package:flutter/material.dart';

import '../Material/MenuDrawer.dart';

class ViewPatientReports extends StatelessWidget {
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
          'View Patient Reports',
          style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white), textScaleFactor: 0.6,
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