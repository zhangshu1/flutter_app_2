import 'package:flutter/material.dart';

import 'Material/MenuDrawer.dart';
import 'CurrentStatePart/CurrentState.dart';
import 'RiskMonitorPart/RiskMonitor.dart';
import 'ActivityMonitorPart/ActivityMonitor.dart';
import 'RiskHistoryPart/RiskHistory.dart';
import 'RiskHistoryPart/RiskHistory_All.dart';
import 'RiskHistoryPart/RiskHistory_Hypoglycemia.dart';
import 'RiskHistoryPart/RiskHistory_Pneumothorax.dart';
import 'RiskHistoryPart/RiskHistory_Hypothermia.dart';
import 'LabWorkPart/LabWork.dart';
//import 'PssatForm/PssatForm.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Menu Page',
      home: new MenuPage(),
      routes: <String, WidgetBuilder>{
        //home page is automatically defiend as:
        //"/": (BuildContext context) => new MenuPage(),
        "/CurrentState": (BuildContext context) => new CurrentState(),
        "/RiskMonitor": (BuildContext context) => new RiskMonitor(),
        "/ActivityMonitor": (BuildContext context) => new DefaultTabController(length: choices.length, child: new ActivityMonitor()),
        "/RiskHistory": (BuildContext context) => new RiskHistory(),
        "/LabWork": (BuildContext context) => new LabWork(),
//        "/PSSATForm": (BuildContext context) => new PSSATForm(),
        "/RiskHistory_All": (BuildContext context) => new RiskHistory_All(),
        "/RiskHistory_Hypoglycemia": (BuildContext context) => new RiskHistory_Hypoglycemia(),
        "/RiskHistory_Pneumothorax": (BuildContext context) => new RiskHistory_Pneumothorax(),
        "/RiskHistory_Hypothermia": (BuildContext context) => new RiskHistory_Hypothermia()
      }
    )
  );
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Design widgets.
    return new Scaffold(  //TODO: theme (http://blog.csdn.net/hekaiyou/article/details/76533014)
      drawer: new Drawer(
        child: new MenuDrawer(),
      ),
      appBar: new AppBar(
//        leading: new IconButton(
//          icon: new Icon(Icons.menu),
//          tooltip: 'Navigation menu',
//          onPressed: null
//        ),
        title: new Text('Options', textAlign: TextAlign.left, style: new TextStyle(color: Colors.white)),
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
                      onPressed: (){Navigator.of(context).pushNamed("/CurrentState");}
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