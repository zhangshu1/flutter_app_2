import 'package:flutter/material.dart';

//void main() => runApp(new MaterialApp(
//  title: 'Activity Monitor Page',
//  home: new ActivityMonitor(),
//));

class ActivityMonitor extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //DrawerHeader for future use (dashboard, login page etc.)
            new DrawerHeader(
              child: new Text('Menu Options'),
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
        title: new Text('Activity Monitor'),
//        actions: <Widget>[
//          new Container(
//              height: 10.0,
//              width: 80.0,
//              child: new IconButton(
//                  icon: new Icon(Icons.arrow_right),
//                  onPressed: null)
//          ),
//        ],
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