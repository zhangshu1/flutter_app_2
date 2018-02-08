import 'package:flutter/material.dart';

//void main() => runApp(new MaterialApp(
//  title: 'Activity Monitor Page',
//  home: new ActivityMonitor(),
//));

class ActivityMonitor extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Activity Monitor'),
        actions: <Widget>[
          new Container(
              height: 10.0,
              width: 80.0,
              child: new IconButton(
                  icon: new Icon(Icons.arrow_right),
                  onPressed: null)
          ),
        ],
      ),
      body: new Column(
        children: <Widget>[
          new Container(
              child: new Row(
                children: <Widget>[
                  new Container(
                    width: 125.0,
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.centerLeft,
                    child: new RaisedButton(
                      onPressed: null,
                      child: new Text('Previous',
                          style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black), textScaleFactor: 0.4),),
                  ),
                  new Container(
                    width: 125.0,
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: new RaisedButton(
                        onPressed: null,
                        child: new Text('Current',
                          style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black), textScaleFactor: 0.4,)),
                  ),
                  new Container(
                    width: 125.0,
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.centerRight,
                    child: new RaisedButton(
                      onPressed: null,
                      child: new Text('To do',
                          style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black), textScaleFactor: 0.4),),
                  ),
                ],
              )
          ),

          new Container(
            height: 450.0,
            width: 350.0,
            decoration: const BoxDecoration(
                border: const Border(
                  top: const BorderSide(width: 1.0, color: Colors.black),
                  left: const BorderSide(width: 1.0, color: Colors.black),
                  right: const BorderSide(width: 1.0, color: Colors.black),
                  bottom: const BorderSide(width: 1.0, color: Colors.black),
                )
            ),
            child: new Column(
              children: <Widget>[
                new Container(
                  height: 50.0,
                  width: 350.0,
                  padding: const EdgeInsets.all(16.0),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      border: const Border(
                        bottom: const BorderSide(width: 1.0, color: Colors.black),
                      )
                  ),
                  child: new Text('12/12/2010', textAlign: TextAlign.center,),
                ),

                new Container(
                  decoration: const BoxDecoration(
                      border: const Border(
                        bottom: const BorderSide(width: 1.0, color: Colors.grey),
                      )
                  ),
                  child: new FlatButton(
                      onPressed: null,
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            height: 50.0,
                            width: 200.0,
                            padding: const EdgeInsets.all(8.0),
                            child: new Text('12:45 a.m:   Administer Glucose Level',
                                style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black), textScaleFactor: 0.4),
                            alignment: Alignment.centerLeft,
                          ),
                          new Container(
                            width: 115.0,
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
                  child: new FlatButton(
                      onPressed: null,
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            height: 50.0,
                            width: 200.0,
                            padding: const EdgeInsets.all(8.0),
                            child: new Text('12:30 a.m   IV Treatment Started',
                              style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black), textScaleFactor: 0.4,),
                            alignment: Alignment.centerLeft,
                          ),
                          new Container(
                            width: 115.0,
                            alignment: Alignment.centerRight,
                            child: new Icon(Icons.arrow_forward_ios, color: Colors.black),
                          )
                        ],
                      )
                  ),
                ),

                new Container(
                  child: new FlatButton(
                      onPressed: null,
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            height: 50.0,
                            width: 200.0,
                            padding: const EdgeInsets.all(8.0),
                            child: new Text('12:22 a.m   Waiting for Serum Glucose ',
                                style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black), textScaleFactor: 0.4),
                            alignment: Alignment.centerLeft,
                          ),
                          new Container(
                            width: 115.0,
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
        ],
      ),
    );
  }
}