import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: 'Current State',
  home: new CurrentState(),
));

var assetImage = new AssetImage('images/pic.jpg');
var image = new Image(image: assetImage);

class CurrentState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //DrawerHeader for future use (dashboard, login page etc.)
            new DrawerHeader(
              child: new Text('Log In'),
              padding: new EdgeInsets.only(left: 10.0, right: 50.0, top: 3.0, bottom: 0.0),
            ),

            //current state
            const ListTile(
              title: const Text('Current State'),
//                onTap: ,
            ),

            //risk monitor
            new ExpansionTile(
                title: const Text('Risk Monitor'),
                backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
                children: const <Widget>[
                  const ListTile(
                    title: const Text('Hypotension'),
//                      onTap: ,
                  ),
                  const ListTile(
                    title: const Text('Hypothermia'),
//                      onTap: ,
                  ),
                  const ListTile(
                    title: const Text('Pneumothorax'),
//                      onTap: ,
                  )
                ]
            ),

            //activity monitor
            const ListTile(
              title: const Text('Activity Monitor'),
//                onTap: ,
            ),

            //risk history
            new ExpansionTile(
              title: const Text('Risk Hisotry'),
              backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
              children: <Widget>[
                const ListTile(
                  title: const Text('All'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Hypoglycemia'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Pneumothorax'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Hypothermia'),
//                      onTap: ,
                )
              ],
            ),

            //lab work
            new ExpansionTile(
              title: new Text('Lab Work'),
              backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
              children: <Widget>[
                const ListTile(
                  title: const Text('View Recommended Test'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Order Additional Test'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Enter Patient Report'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('View Patient Report'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Enter Recommended Medication'),
//                      onTap: ,
                )
              ],
            ),

            //PSSAT form
            const ListTile(title: const Text('PSSAT Form')),

            //STABLE
            new ExpansionTile(
              title: new Text('S.T.A.B.L.E'),
              backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
              children: <Widget>[
                const ListTile(
                  title: const Text('Sugar'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Temperature'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Airway'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Blood Pressure'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Lab Work'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Emotional Support'),
//                      onTap: ,
                )
              ],
            )
          ],
        ),
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