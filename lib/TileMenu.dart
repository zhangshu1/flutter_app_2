import 'package:flutter/material.dart';

import 'Material/app.dart';

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
    return new Scaffold(
      drawer: new Drawer(child: new MenuDrawer(),),
      appBar: new AppBar(
        title: new Text('Menu'),
      ),
      body: new GridView.count(
        primary: false,
        padding: const EdgeInsets.all(30.0),
        crossAxisSpacing: 10.0,
        crossAxisCount: 2,
        children: <Widget>[
          new Container(
            color: Colors.blue.shade100,
            margin: new EdgeInsets.symmetric(vertical: 5.0),
            child: new ListTile(
              title: new Text('Current State'),
              onTap: () {
                Navigator.of(context).pushNamed("/CurrentState");
              },
            ),
          ),
          new Container(
            color: Colors.blue.shade100,
            margin: new EdgeInsets.symmetric(vertical: 5.0),
            child: new ListTile(
              title: new Text('Risk Monitor'),
              onTap: () {
                Navigator.of(context).pushNamed("/RiskMonitor");
              },
            ),
          ),
          new Container(
            color: Colors.blue.shade100,
            margin: new EdgeInsets.symmetric(vertical: 5.0),
            child: new ListTile(
              title: new Text('Activity Monitor'),
              onTap: () {
                Navigator.of(context).pushNamed("/ActivityMonitor");
              },
            ),
          ),
          new Container(
            color: Colors.blue.shade100,
            margin: new EdgeInsets.symmetric(vertical: 5.0),
            child: new ListTile(
              title: new Text('Risk History'),
              onTap: () {
                Navigator.of(context).pushNamed("/RiskHistory");
              },
            ),
          ),
          new Container(
            color: Colors.blue.shade100,
            margin: new EdgeInsets.symmetric(vertical: 5.0),
            child: new ListTile(
              title: new Text('Lab Work'),
              onTap: () {
                Navigator.of(context).pushNamed("/LabWork");
              },
            ),
          ),
          new Container(
            color: Colors.blue.shade100,
            margin: new EdgeInsets.symmetric(vertical: 5.0),
            child: new ListTile(
              title: new Text('PSSAT Form'),
              onTap: () {
                Navigator.of(context).pushNamed("/PssatFormDir");
              },
            ),
          ),
          new Container(
            color: Colors.blue.shade100,
            margin: new EdgeInsets.symmetric(vertical: 5.0),
            child: new ListTile(
              title: new Text('S.T.A.B.L.E'),
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