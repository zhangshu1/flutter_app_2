import 'package:flutter/material.dart';

import '../Material/all.dart';
import '../Material/globals.dart' as globals;

//void main() => runApp(new MaterialApp(
//  title: 'Activity Monitor Page',
//  home: new DefaultTabController(length: choices.length, child: new ActivityMonitor()),
//  theme: new ThemeData(textTheme: new TextTheme(body1: new TextStyle(fontSize: 18.0),),)
//));

class ActivityMonitor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),
      appBar: new AppBar(
        title: new Text('Activity Monitor', textScaleFactor: globals.textScaleFactor),
        bottom: new TabBar(
            tabs: choices.map((Choice choice) {
              return new Tab(
                text: choice.title,
              );
            }).toList()
        ),
      ),
      body: new TabBarView(
        children: choices.map((Choice choice) {
          return new Padding(
            padding: const EdgeInsets.all(30.0),
            child: new ChoiceCard(choice: choice,),
          );
        }).toList(),
      ),
    );
  }
}

class Choice {
  final String title;
  final Container container;

  Choice(this.title, this.container);
}

List<Choice> choices = <Choice>[
  // First choice
  new Choice(
    'Previous',
    new Container(
      height: 450.0,
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
          new Row(
            children: <Widget>[
              new Expanded(child: new Container(
                height: 55.0,
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    border: const Border(
                      bottom: const BorderSide(width: 1.0, color: Colors.black),
                    )
                ),
                child: new Text('12/12/2010', textAlign: TextAlign.center, textScaleFactor: globals.textScaleFactor,),
              ),)
            ],
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
                    new Expanded(
                        child: new Container(
                            height: 55.0,
                            padding: const EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child: new Text(
                              '12:32 a.m:   IV Treatment Started', textScaleFactor: globals.textScaleFactor, style: new TextStyle(color: Colors.black, fontSize: 18.0),)
                        )
                    ),

                    new Container(
                      width: 50.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(
                          Icons.arrow_forward_ios, color: Colors.black),
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
                    new Expanded(
                        child: new Container(
                            height: 55.0,
                            padding: const EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child: new Text(
                              '12:20 a.m   Hypoglycemia confirmed', textScaleFactor: globals.textScaleFactor, style: new TextStyle(color: Colors.black, fontSize: 18.0),)
                        )
                    ),

                    new Container(
                      width: 50.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(
                          Icons.arrow_forward_ios, color: Colors.black),
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
                    new Expanded(
                        child: new Container(
                            height: 55.0,
                            padding: const EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child: new Text('12:12 a.m   Symptoms visible', textScaleFactor: globals.textScaleFactor, style: new TextStyle(color: Colors.black, fontSize: 18.0),)
                        )
                    ),

                    new Container(
                      width: 50.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(
                          Icons.arrow_forward_ios, color: Colors.black),
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
                    new Expanded(
                        child: new Container(
                            height: 55.0,
                            padding: const EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child: new Text('12:10 a.m   Bedside Evaluation', textScaleFactor: globals.textScaleFactor, style: new TextStyle(color: Colors.black, fontSize: 18.0),)
                        )
                    ),

                    new Container(
                      width: 50.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(
                          Icons.arrow_forward_ios, color: Colors.black),
                    )
                  ],
                )
            ),
          ),

          new Container(
            decoration: const BoxDecoration(
                border: const Border(
                  bottom: const BorderSide(width: 1.0, color: Colors.black),
                )
            ),
            child: new FlatButton(
                onPressed: null,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Container(
                            height: 55.0,
                            padding: const EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child: new Text(
                              '12:01 a.m:  Potential Risk - Hypoglycemia', textScaleFactor: globals.textScaleFactor, style: new TextStyle(color: Colors.black, fontSize: 18.0),)
                        )
                    ),

                    new Container(
                      width: 50.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(
                          Icons.arrow_forward_ios, color: Colors.black),
                    )
                  ],
                )
            ),
          ),
        ],
      ),
    ),
  ),

  // Second choice begins
  new Choice(
    'Current',
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
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Container(
                  height: 55.0,
                  padding: const EdgeInsets.all(16.0),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    border: const Border(
                      bottom: const BorderSide(width: 1.0, color: Colors.black),
                    )
                  ),
                child: new Text('12/12/2010', textScaleFactor: globals.textScaleFactor, textAlign: TextAlign.center,),
                ),
              )
            ],
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
                    new Expanded(
                        child: new Container(
                            height: 55.0,
                            padding: const EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child: new Text(
                              '12:45 a.m:   Administer Glucose Level', textScaleFactor: globals.textScaleFactor, style: new TextStyle(color: Colors.black, fontSize: 18.0),)
                        )
                    ),

                    new Container(
                      width: 50.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(
                          Icons.arrow_forward_ios, color: Colors.black),
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
                    new Expanded(
                        child: new Container(
                            height: 55.0,
                            padding: const EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child: new Text('12:30 a.m   IV Treatment Started', textScaleFactor: globals.textScaleFactor, style: new TextStyle(color: Colors.black, fontSize: 18.0),)
                        )
                    ),

                    new Container(
                      width: 50.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(
                          Icons.arrow_forward_ios, color: Colors.black),
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
                    new Expanded(
                        child: new Container(
                            height: 55.0,
                            padding: const EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child: new Text(
                              '12:22 a.m   Waiting for Serum Glucose', textScaleFactor: globals.textScaleFactor, style: new TextStyle(color: Colors.black, fontSize: 18.0),)
                        )
                    ),

                    new Container(
                      width: 50.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(
                          Icons.arrow_forward_ios, color: Colors.black),
                    )
                  ],
                )
            ),
          ),
        ],
      ),
    ),
  ),

  // Third choice begins
  new Choice(
    'To do',
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
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Container(
                  height: 55.0,
                  padding: const EdgeInsets.all(16.0),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      border: const Border(
                        bottom: const BorderSide(width: 1.0, color: Colors.black),
                      )
                  ),
                  child: new Text('12/12/2010', textScaleFactor: globals.textScaleFactor, textAlign: TextAlign.center,),
                ),
              )
            ],
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
                    new Expanded(
                        child: new Container(
                            height: 55.0,
                            padding: const EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child: new Text(
                              '01:05 a.m:  Evaluate Pneumothorax', textScaleFactor: globals.textScaleFactor, style: new TextStyle(color: Colors.black, fontSize: 18.0),)
                        )
                    ),

                    new Container(
                      width: 50.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(
                          Icons.arrow_forward_ios, color: Colors.black),
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
                    new Expanded(
                        child: new Container(
                            height: 55.0,
                            padding: const EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child: new Text(
                              '01:30 a.m   Evaluate Glucose Level', textScaleFactor: globals.textScaleFactor, style: new TextStyle(color: Colors.black, fontSize: 18.0),)
                        )
                    ),

                    new Container(
                      width: 50.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(
                          Icons.arrow_forward_ios, color: Colors.black),
                    )
                  ],
                )
            ),
          ),
        ],
      ),
    ),
  ),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(child: choice.container),
    );
  }
}

