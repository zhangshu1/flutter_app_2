import 'package:flutter/material.dart';

import 'risk_monitor.dart';
import 'ActivityMonitor.dart';
//import 'RiskHistory.dart';

void main() {
  runApp(
      new MaterialApp(
          title: 'Menu Page',
          home: new MenuPage(),
          routes: <String, WidgetBuilder>{
            //home page is automatically defiend as:
            //"/": (BuildContext context) => new MenuPage(),
            "/CurrentStatePage": (BuildContext context) => new CurrentStatePage(),
            "/RiskMonitor": (BuildContext context) => new RiskMonitor(),
            "/ActivityMonitor": (BuildContext context) => new ActivityMonitor(),
            "/RiskHistory": (BuildContext context) => new RiskHistory(),
            "/LabWork": (BuildContext context) => new LabWork(),
            "/PSSATForm": (BuildContext context) => new PSSATForm()
          }
      )
  );
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Design widgets.
    return new Scaffold(
        appBar: new AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          title: new Text('Options', textAlign: TextAlign.left, style: new TextStyle(color: Colors.black)),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
        ),

        // body is the majority of the screen.
        body: new Container(
            child: new Center(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Container(
                      margin: new EdgeInsets.only(bottom: 1.0),
                      height: 50.0,
                      child: new RaisedButton(
                          child: new Text("Current State", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
                          onPressed: (){Navigator.of(context).pushNamed("/CurrentStatePage");}
                      )
                  ),
                  new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                      child: new Text("Risk Monitor", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
                      onPressed: (){Navigator.of(context).pushNamed("/RiskMonitor");},
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("Activity Monitor", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
                        onPressed: (){Navigator.of(context).pushNamed("/ActivityMonitor");}
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("Risk History", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
                        onPressed: (){Navigator.of(context).pushNamed("/RiskHistory");}
//                        onPressed: riskHistoryMenu
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("Lab Work", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
                        onPressed: (){Navigator.of(context).pushNamed("/LabWork");}
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("PSSAT Form", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
                        onPressed: (){Navigator.of(context).pushNamed("/PSSATForm");}
                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}

class CurrentStatePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Current Status', textAlign: TextAlign.left, style: new TextStyle(color: Colors.black)),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

//class RiskMonitor extends StatelessWidget{
//  @override
//  Widget build(BuildContext context){
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("Risk Monitor", textAlign: TextAlign.left, style: new TextStyle(color: Colors.black)),
//        actions: <Widget>[
//          new IconButton(
//            icon: new Icon(Icons.search),
//            tooltip: 'Search',
//            onPressed: null,
//          ),
//        ],
//      ),
//    );
//  }
//}

//class ActivityMonitor extends StatelessWidget{
//  @override
//  Widget build(BuildContext context){
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("Activity Monitor", textAlign: TextAlign.left, style: new TextStyle(color: Colors.black)),
//        actions: <Widget>[
//          new IconButton(
//            icon: new Icon(Icons.search),
//            tooltip: 'Search',
//            onPressed: null,
//          ),
//        ],
//      ),
//    );
//  }
//}

class RiskHistory extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Risk History", textAlign: TextAlign.left, style: new TextStyle(color: Colors.black)),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class LabWork extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Lab Work", textAlign: TextAlign.left, style: new TextStyle(color: Colors.black)),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class PSSATForm extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("PSSAT Form", textAlign: TextAlign.left, style: new TextStyle(color: Colors.black)),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
