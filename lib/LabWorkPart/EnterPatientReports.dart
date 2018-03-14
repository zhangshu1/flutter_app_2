import 'package:flutter/material.dart';

import '../Material/all.dart';
import '../Material/globals.dart' as globals;

//void main() => runApp(
//  new MaterialApp(
//    title: 'Enter Patient Reports',
//    home: new EnterPatientReports(),
//  )
//);
class EnterPatientReports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),
      appBar: new AppBar(
        title: new Text("Enter Patient Reports", textScaleFactor: globals.textScaleFactor, style: new TextStyle(color: Colors.black), textAlign: TextAlign.left),
      ),

      body: new Container(
          child: new Center(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Container(    //TODO: backgroud color is too dark
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("CRP (C-Reactive Protein)", textScaleFactor: globals.textScaleFactor,
                            style: new TextStyle(
                                color: Colors.black, fontSize: 20.0)),
//                  onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/All");}
                        onPressed: null,
                    )
                ),

                new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("Blood Gas", textScaleFactor: globals.textScaleFactor,
                            style: new TextStyle(
                                color: Colors.black, fontSize: 20.0)),
//                    onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/Hypoglycemia");}
                      onPressed: null,
                    )
                ),

                new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("Electrolytes", textScaleFactor: globals.textScaleFactor,
                            style: new TextStyle(
                                color: Colors.black, fontSize: 20.0)),
//                  onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/Pneumothorax");}
                      onPressed: null,
                    )
                ),

                new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("Clotting Studies", textScaleFactor: globals.textScaleFactor,
                            style: new TextStyle(
                                color: Colors.black, fontSize: 20.0)),
//                  onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/Hypothermia");}
                      onPressed: null,
                    )
                ),

              ],
            ),
          )
      ),
    );
  }
}

//
//class EnterPatientReports extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      endDrawer: new Drawer(
//        child: new MenuDrawer(),
//      ),
//      appBar: new AppBar(
//        title: new Text(
//          'Enter Patient Reports',
//          style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white), textScaleFactor: 0.6,
//        ),
//      ),
//
//        body: new Container(
//          child: new Center(
//            child: new Column(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
//              children: <Widget>[
//                new Container(
//                  margin: new EdgeInsets.only(bottom: 1.0),
//                  height: 50.0,
//                  child: new RaisedButton(
////                  child: new Icon(Icons.note),
//                    child: new Text("CRP (C-Reactive Protein)", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
//                    onPressed: null   //TODO
//                  ),
//                  color: Colors.grey[300],
//                ),
//
//                new Container(
//                  margin: new EdgeInsets.only(bottom: 1.0),
//                  height: 50.0,
//                  child: new RaisedButton(
//                    child: new Text("Blood Gas", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
//                    onPressed: null
//                  ),
//                ),
//
//                new Container(
//                  margin: new EdgeInsets.only(bottom: 1.0),
//                  height: 50.0,
//                  child: new RaisedButton(
//                    child: new Text("Electrolytes", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
//                    onPressed: null
//                  ),
//                ),
//
//                new Container(
//                  margin: new EdgeInsets.only(bottom: 1.0),
//                  height: 50.0,
//                  child: new RaisedButton(
//                    child: new Text("Clotting Studies", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
//                    onPressed: null
////                  onPressed: riskHistoryMenu
//                  ),
//                ),
//
//              ],
//            ),
//          )
//        )
//    );
//  }
//}