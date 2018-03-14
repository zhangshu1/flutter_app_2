import 'package:flutter/material.dart';
import 'CarePlan.dart';

import '../Material/all.dart';
import '../Material/globals.dart' as globals;

//void main() => runApp(new MaterialApp(
//  title: 'Risk Monitor Page',
//  home: new RiskMonitor(),
//));

class RiskMonitor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        endDrawer: new Drawer(child: new MenuDrawer(),),

        appBar: new AppBar(
          title: new Text(
              'Risk Monitor', textScaleFactor: globals.textScaleFactor,
          ),
//        backgroundColor: Colors.grey,
        ),

        body: new Container(
          padding: new EdgeInsets.symmetric(horizontal: 30.0),
          child: new Column(
            children: <Widget>[
              new Container(
                decoration: const BoxDecoration(
                    border: const Border(
                      bottom: const BorderSide(width: 1.0, color: Colors.grey),
                    )
                ),
                height: 80.0,
                child: new FlatButton(
                    onPressed: null,
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Container(
                            child: new Text('Hypoglycemia', textScaleFactor: globals.textScaleFactor,
                            style: new TextStyle(color: Colors.black, fontSize: 20.0)),
                          ),
                        ),

                        new Container(
                          width: 50.0,
                          alignment: Alignment.centerRight,
                          child: new Icon(Icons.arrow_forward_ios, color: Colors.black),
                        )
                      ],
                    )
                ),
              ),

              new Container(
                decoration: const BoxDecoration(
                    border: const Border(
                      bottom: const BorderSide(width: 1.0, color: Colors.grey),
                    )
                ),
                height: 80.0,
                child: new FlatButton(
                    onPressed: null,
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Container(
                             child: new Text('Hypothermia', textScaleFactor: globals.textScaleFactor,
                             style: new TextStyle(color: Colors.black, fontSize: 20.0)),
                          ),
                        ),

                        new Container(
                          width: 50.0,
                          alignment: Alignment.centerRight,
                          child: new Icon(Icons.arrow_forward_ios, color: Colors.black),
                        )
                      ],
                    )
                ),
              ),

              new Container(
                decoration: const BoxDecoration(
                    border: const Border(
                      bottom: const BorderSide(width: 1.0, color: Colors.grey),
                    )
                ),
                height: 80.0,
                child: new FlatButton(
                    onPressed: null,
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Container(
                            child: new Text('Pneumothorax', textScaleFactor: globals.textScaleFactor,
                                style: new TextStyle(color: Colors.black, fontSize: 20.0)),
                          ),
                        ),

                        new Container(
                          width: 50.0,
                          alignment: Alignment.centerRight,
                          child: new Icon(Icons.arrow_forward_ios, color: Colors.black),
                        )
                      ],
                    )
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: new Container(
          color: Colors.blue[300],
          height: 100.0,
          alignment: Alignment.center,
          child: new RaisedButton(
            // COLOR NOT SHOWING
              highlightColor: Colors.blueGrey,
              onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (_) => new CarePlan()));},
              child: new Text(
                  'Care Plan',
                  style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black), textScaleFactor: globals.textScaleFactor)
          ),
        )
    );
  }
}