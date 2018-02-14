import 'package:flutter/material.dart';
import 'CarePlan.dart';

//void main() => runApp(new MaterialApp(
//  title: 'Risk Monitor Page',
//  home: new RiskMonitor(),
//));

class RiskMonitor extends StatelessWidget {
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