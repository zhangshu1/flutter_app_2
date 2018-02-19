import 'package:flutter/material.dart';

import '../Material/MenuDrawer.dart';

import 'RiskHistory_All.dart';
import 'RiskHistory_Hypoglycemia.dart';
import 'RiskHistory_Pneumothorax.dart';
import 'RiskHistory_Hypothermia.dart';

//void main() => runApp(
//  new MaterialApp(
//    title: 'Risk History Page',
//    home: new RiskHistory(),
//    routes: <String, WidgetBuilder>{
//      '/RiskHistory/All': (BuildContext context) => new RiskHistory_All(),
//      '/RiskHistory/Hypoglycemia': (BuildContext context) => new RiskHistory_Hypoglycemia(),
//      '/RiskHistory/Pneumothorax': (BuildContext context) => new RiskHistory_Pneumothorax(),
//      '/RiskHistory/Hypothermia': (BuildContext context) => new RiskHistory_Hypothermia(),
//    },
//  )
//);

class RiskHistory extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),
      appBar: new AppBar(
        title: new Text("Risk History", style: new TextStyle(color: Colors.black), textAlign: TextAlign.left),
      ),

      body: new Container(
          child: new Center(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("All", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
//                  onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/All");}
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (_) => new RiskHistory_All(),
                              )
                          );
                        }
                    )
                ),
                new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("Hypoglycemia", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
//                    onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/Hypoglycemia");}
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (_) => new RiskHistory_Hypoglycemia(),
                              )
                          );
                        }
                    )
                ),
                new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("Pneumothorax", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
//                  onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/Pneumothorax");}
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (_) => new RiskHistory_Pneumothorax(),
                              )
                          );
                        }
                    )
                ),
                new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("Hypothermia", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
//                  onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/Hypothermia");}
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (_) => new RiskHistory_Hypothermia(),
                              )
                          );
                        }
                    )
                ),
              ],
            ),
          )
      ),
    );
  }
}