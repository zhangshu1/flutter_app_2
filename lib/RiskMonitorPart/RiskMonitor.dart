import 'package:flutter/material.dart';
import 'CarePlan.dart';

import '../Material/MenuDrawer.dart';

//void main() => runApp(new MaterialApp(
//  title: 'Risk Monitor Page',
//  home: new RiskMonitor(),
//));

class RiskMonitor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        endDrawer: new Drawer(
          child: new MenuDrawer(),
        ),
        appBar: new AppBar(
          title: new Text(
              'Risk Monitor',
              style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black), textScaleFactor: 0.6
          ),
//        backgroundColor: Colors.grey,
        ),

        body: new Column(
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
                      new Container(
                        width: 180.0,
                        child: new Text('Hypoglycemia',
                          style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black), textScaleFactor: 0.8,),
                      ),
                      new Container(
                        width: 150.0,
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
                      new Container(
                        width: 180.0,
                        child: new Text('Hypothermia',
                          style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black), textScaleFactor: 0.8,),
                      ),
                      new Container(
                        width: 150.0,
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
                      new Container(
                        width: 180.0,
                        child: new Text('Pneumothorax',
                            style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black), textScaleFactor: 0.8),
                      ),
                      new Container(
                        width: 150.0,
                        alignment: Alignment.centerRight,
                        child: new Icon(Icons.arrow_forward_ios, color: Colors.black),
                      )
                    ],
                  )
              ),
            ),
          ],
        ),

        bottomNavigationBar: new Container(
          color: Colors.blue[300],
          height: 100.0,
          alignment: Alignment.center,
          child: new RaisedButton(
            // COLOR NOT SHOWING
              highlightColor: Colors.blueGrey,
              onPressed: null,
              child: new Text(
                  'Care Plan',
                  style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black), textScaleFactor: 0.5)
          ),
        )
    );
  }
}