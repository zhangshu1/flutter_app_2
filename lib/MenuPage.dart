import 'package:flutter/material.dart';

import 'Material/MenuDrawer.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Design widgets.
    return new Scaffold( //TODO: theme (http://blog.csdn.net/hekaiyou/article/details/76533014)
        drawer: new Drawer(
          child: new MenuDrawer(),
        ),

        appBar: new AppBar(
//        leading: new IconButton(
//          icon: new Icon(Icons.menu),
//          tooltip: 'Navigation menu',
//          onPressed: null
//        ),
          title: new Text('Options', textAlign: TextAlign.left,
              style: new TextStyle(color: Colors.white)),
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
                          child: new Text("Current State", style: new TextStyle(
                              color: Colors.black, fontSize: 20.0)),
                          onPressed: () {
                            Navigator.of(context).pushNamed("/CurrentState");
                          }
                      )
                  ),

                  new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                      child: new Text("Risk Monitor", style: new TextStyle(
                          color: Colors.black, fontSize: 20.0)),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/RiskMonitor");
                      },
                    ),
                  ),

                  new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("Activity Monitor",
                            style: new TextStyle(
                                color: Colors.black, fontSize: 20.0)),
                        onPressed: () {
                          Navigator.of(context).pushNamed("/ActivityMonitor");
                        }
                    ),
                  ),

                  new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("Risk History", style: new TextStyle(
                            color: Colors.black, fontSize: 20.0)),
                        onPressed: () {
                          Navigator.of(context).pushNamed("/RiskHistory");
                        }
//                  onPressed: riskHistoryMenu
                    ),
                  ),

                  new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("Lab Work", style: new TextStyle(
                            color: Colors.black, fontSize: 20.0)),
                        onPressed: () {
                          Navigator.of(context).pushNamed("/LabWork");
                        }
                    ),
                  ),

                  new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("PSSAT Form", style: new TextStyle(
                            color: Colors.black, fontSize: 20.0)),
                        onPressed: () {
                          Navigator.of(context).pushNamed("/PssatFormDir");
                        }
                    ),
                  ),

                  new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                        child: new Text("S.T.A.B.L.E", style: new TextStyle(
                            color: Colors.black, fontSize: 20.0)),
                        onPressed: () {
                          Navigator.of(context).pushNamed("/Stable");
                        }
                    ),
                  )

                ],
              ),
            )
        )
    );
  }
}