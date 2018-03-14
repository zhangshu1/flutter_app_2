import 'package:flutter/material.dart';

import 'Material/all.dart';
import 'Material/globals.dart' as globals;

//void main() {
//  runApp(new MaterialApp(
//    home: new MyHomePage(),
//      routes: <String, WidgetBuilder>{
//        //home page is automatically defiend as:
//        "/CurrentState": (BuildContext context) => new CurrentState(),
//
//        "/RiskMonitor": (BuildContext context) => new RiskMonitor(),
//
//        "/ActivityMonitor": (BuildContext context) => new DefaultTabController(length: choices.length, child: new ActivityMonitor()),
//
//        "/RiskHistory": (BuildContext context) => new RiskHistory(),
//
//        "/LabWork": (BuildContext context) => new LabWork(),
//
//        "/PssatFormDir": (BuildContext context) => new PssatFormDir(),
//        "/PssatFormMenu": (BuildContext context) => new PssatFormMenu(),
//
//        "/Stable": (BuildContext context) => new SelectOptions(),
//      }
//  ));
//}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final Size screenSize = MediaQuery.of(context).size;
    final double distance = screenSize.width * 0.02;
    final double paddingVertical = screenSize.width * 0.08;
    final double paddingHorizontal = screenSize.width * 0.07;

    return new Scaffold(
      drawer: new Drawer(child: new MenuDrawer(),),
      appBar: new AppBar(
        title: new Text('Menu', textScaleFactor: globals.textScaleFactor,
        ),
      ),
      body: new GridView.count(
        primary: false,
        padding: new EdgeInsets.symmetric(vertical: paddingVertical, horizontal: paddingHorizontal,),
        crossAxisCount: 2,
        children: <Widget>[
          new Container(
            color: Colors.blue.shade400,
            margin: new EdgeInsets.all(distance),
            child: new ListTile(
              title: new Text('Current State', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pushNamed("/CurrentState");
              },
            ),
          ),
          new Container(
            color: Colors.blue.shade400,
            margin: new EdgeInsets.all(distance),
            child: new ListTile(
              title: new Text('Risk Monitor', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pushNamed("/RiskMonitor");
              },
            ),
          ),
          new Container(
            color: Colors.blue.shade300,
            margin: new EdgeInsets.all(distance),
            child: new ListTile(
              title: new Text('Activity Monitor', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pushNamed("/ActivityMonitor");
              },
            ),
          ),
          new Container(
            color: Colors.blue.shade300,
            margin: new EdgeInsets.all(distance),
            child: new ListTile(
              title: new Text('Risk History', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pushNamed("/RiskHistory");
              },
            ),
          ),
          new Container(
            color: Colors.blue.shade200,
            margin: new EdgeInsets.all(distance),
            child: new ListTile(
              title: new Text('Lab Work', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pushNamed("/LabWork");
              },
            ),
          ),
          new Container(
            color: Colors.blue.shade200,
            margin: new EdgeInsets.all(distance),
            child: new ListTile(
              title: new Text('PSSAT Form', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pushNamed("/PssatFormDir");
              },
            ),
          ),
          new Container(
            color: Colors.blue.shade100,
            margin: new EdgeInsets.all(distance),
            child: new ListTile(
              title: new Text('S.T.A.B.L.E', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pushNamed("/Stable");
              },
            ),
          ),
        ],
      )
    );
  }
}