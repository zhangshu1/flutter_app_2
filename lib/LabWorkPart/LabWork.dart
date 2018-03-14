import 'package:flutter/material.dart';

import '../Material/all.dart';
import '../Material/globals.dart' as globals;

//void main() => runApp(
//  new MaterialApp(
//    title: 'LabWork',
//    home: new LabWork(),
//  )
//);

class LabWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),
      appBar: new AppBar(
        title: new Text("Lab Work", textScaleFactor: globals.textScaleFactor, style: new TextStyle(color: Colors.black),
            textAlign: TextAlign.left),
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
                        child: new Text("View Recommended Test", textScaleFactor: globals.textScaleFactor,
                            style: new TextStyle(
                                color: Colors.black, fontSize: 20.0)),
//                  onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/All");}
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (_) => new ViewRecTest(),
                              )
                          );
                        }
                    )
                ),

                new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("Order Additional Tests", textScaleFactor: globals.textScaleFactor,
                            style: new TextStyle(
                                color: Colors.black, fontSize: 20.0)),
//                    onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/Hypoglycemia");}
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (_) => new OrderAdditionalTests(),
                              )
                          );
                        }
                    )
                ),

                new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("Enter Patient Reports", textScaleFactor: globals.textScaleFactor,
                            style: new TextStyle(
                                color: Colors.black, fontSize: 20.0)),
//                  onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/Pneumothorax");}
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (_) => new EnterPatientReports(),
                              )
                          );
                        }
                    )
                ),

                new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("View Patient Reports", textScaleFactor: globals.textScaleFactor,
                            style: new TextStyle(
                                color: Colors.black, fontSize: 20.0)),
//                  onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/Hypothermia");}
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (_) => new ViewPatientReports(),
                              )
                          );
                        }
                    )
                ),

                new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("View Recommended Medications", textScaleFactor: globals.textScaleFactor,
                            style: new TextStyle(
                                color: Colors.black, fontSize: 20.0)),
//                  onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/Hypothermia");}
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (_) => new ViewRecMedications(),
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