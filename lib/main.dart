import 'package:flutter/material.dart';

import 'RiskMonitor.dart';
import 'ActivityMonitor.dart';
import 'RiskHistory.dart';
//import 'Material/Menu.dart';

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
            "/PSSATForm": (BuildContext context) => new PSSATForm(),
          }
      )
  );
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Design widgets.
    return new Scaffold(
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              //DrawerHeader for future use (dashboard, login page etc.)
              new DrawerHeader(
                child: new Text('Menu Options'),
                padding: new EdgeInsets.only(left: 10.0, right: 50.0, top: 3.0, bottom: 0.0),
              ),

              //current state
              const ListTile(title: const Text('Current State')),

              //risk monitor
              new ExpansionTile(
                  title: const Text('Risk Monitor'),
                  backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
                  children: const <Widget>[
                    const ListTile(title: const Text('Hypotension')),
                    const ListTile(title: const Text('Hypothermia')),
                    const ListTile(title: const Text('Pneumothorax'))
                  ]
              ),

              //activity monitor
              const ListTile(title: const Text('Activity Monitor')),

              //risk history
              new ExpansionTile(
                title: const Text('Risk Hisotry'),
                backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
                children: <Widget>[
                  const ListTile(title: const Text('All')),
                  const ListTile(title: const Text('Hypotension')),
                  const ListTile(title: const Text('Hypothermia')),
                  const ListTile(title: const Text('Pneumothorax'))
                ],
              ),

              //lab work
              new ExpansionTile(
                title: new Text('Lab Work'),
                backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
                children: <Widget>[
                  const ListTile(title: const Text('View Recommended Test')),
                  const ListTile(title: const Text('Order Additional Test')),
                  const ListTile(title: const Text('Enter Patient Report')),
                  const ListTile(title: const Text('View Patient Report')),
                  const ListTile(title: const Text('Enter Recommended Medication')),
                ],
              ),

              //PSSAT form
              const ListTile(title: const Text('PSSAT Form')),

              //STABLE
              new ExpansionTile(
                title: new Text('S.T.A.B.L.E'),
                backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
                children: <Widget>[
                  const ListTile(title: const Text('Sugar')),
                  const ListTile(title: const Text('Temperature')),
                  const ListTile(title: const Text('Airway')),
                  const ListTile(title: const Text('Blood Pressure')),
                  const ListTile(title: const Text('Lab Work')),
                  const ListTile(title: const Text('Emotional Support')),
                ],
              )
            ],
          ),
        ),
        appBar: new AppBar(
//        leading: new IconButton(
//          icon: new Icon(Icons.menu),
//          tooltip: 'Navigation menu',
//          onPressed: null
//        ),
          title: new Text('Options', textAlign: TextAlign.left, style: new TextStyle(color: Colors.black)),
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
//                  child: new Icon(Icons.note),
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
//                  onPressed: riskHistoryMenu
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

//class RiskHistory extends StatelessWidget{
//  @override
//  Widget build(BuildContext context){
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("Risk History", textAlign: TextAlign.left, style: new TextStyle(color: Colors.black)),
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


