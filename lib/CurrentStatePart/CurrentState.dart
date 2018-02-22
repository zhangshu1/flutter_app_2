import 'package:flutter/material.dart';

import '../Material/MenuDrawer.dart';

//void main() => runApp(new MaterialApp(
//  title: 'Current State',
//  home: new CurrentState(),
//));

var assetImage = new AssetImage('images/pic.jpg');
var image = new Image(image: assetImage);

class CurrentState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),
      appBar: new AppBar(
        title: new Text('Current State'),
      ),

      body: new Column(
        children: <Widget>[
          new Container(
            child: new Expanded(child: image),
          ),
          new Container(
            child: new Row(
              children: <Widget>[
                new RaisedButton(
                  // First dialog
                  onPressed: () {
                    showDialog(
                      context: context,
                      child: new SimpleDialog(
                        children: <Widget>[
                          new Container(
                            padding: new EdgeInsets.all(15.0),
                            height: 300.0,
                            child: new Center(
                              child: new RichText(
                                text: new TextSpan(
                                  children: <TextSpan>[
                                    new TextSpan(
                                        text: 'Chief Risk Indicator:\n\n',
                                        style: new TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    new TextSpan(text: 'The infant is ',
                                        style: new TextStyle(
                                            color: Colors.grey)),
                                    new TextSpan(text: 'SGA\n\n\n',
                                        style: new TextStyle(
                                            color: Colors.red)),
                                    new TextSpan(text: 'Visible Symptoms:\n\n',
                                        style: new TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    new TextSpan(
                                        text: 'Jitteriness\nLethargy\nWeak Cry',
                                        style: new TextStyle(
                                            color: Colors.grey)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: new Text('Risk Indicators'),
                ),

                new RaisedButton(
                  // Second dialog
                  onPressed: () {
                    showDialog(
                      context: context,
                      child: new SimpleDialog(
                        children: <Widget>[
                          new Container(
                            padding: new EdgeInsets.all(15.0),
                            height: 300.0,
                            child: new Center(
                              child: new RichText(
                                text: new TextSpan(
                                  children: <TextSpan>[
                                    new TextSpan(text: 'Assessment:\n\n',
                                        style: new TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    new TextSpan(
                                        text: 'The Bedside evaluation of Blood glucose is ',
                                        style: new TextStyle(
                                            color: Colors.grey)),
                                    new TextSpan(text: '35 mg/dL\n\n\n',
                                        style: new TextStyle(
                                            color: Colors.red)),
                                    new TextSpan(
                                        text: 'The Serum Glucose analysis value is ',
                                        style: new TextStyle(
                                            color: Colors.grey)),
                                    new TextSpan(text: '30 mg/dL',
                                        style: new TextStyle(
                                            color: Colors.red)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: new Text(' Assessment '),
                ),

                new RaisedButton(
                  // Third dialog
                  onPressed: () {
                    showDialog(
                      context: context,
                      child: new SimpleDialog(
                        children: <Widget>[
                          new Container(
                            padding: new EdgeInsets.all(15.0),
                            height: 300.0,
                            child: new Center(
                              child: new RichText(
                                text: new TextSpan(
                                  children: <TextSpan>[
                                    new TextSpan(text: 'Treatment:\n\n',
                                        style: new TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    new TextSpan(
                                        text: 'IV is in place at Location ____\n\n',
                                        style: new TextStyle(
                                            color: Colors.grey)),
                                    new TextSpan(
                                        text: 'IV fluid infusing is started of type __ at the rate of __ ml/lg/day\n\n',
                                        style: new TextStyle(
                                            color: Colors.grey)),
                                    new TextSpan(
                                        text: 'UVC is in place at Location ____\n\n',
                                        style: new TextStyle(
                                            color: Colors.grey)),
                                    new TextSpan(
                                        text: 'Glucose bolus of 2mg/dL given\n\n',
                                        style: new TextStyle(
                                            color: Colors.grey)),
                                    new TextSpan(text: 'UAC not in place\n\n',
                                        style: new TextStyle(
                                            color: Colors.grey)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: new Text(' Treatment  '),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}