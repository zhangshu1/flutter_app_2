import 'package:flutter/material.dart';
import 'AddAlert.dart';
import 'SeeDetails.dart';

import '../Material/globals.dart' as globals;

void main() =>
    runApp(new MaterialApp(
      title: 'Alerts Dashboard',
      home: new AlertsDashboard(),
      routes: <String, WidgetBuilder>{
        '/AddAlert': (BuildContext context) => new AddAlert(),
        '/SeeDetails': (BuildContext context) => new SeeDetails(),
      },
    ));

class AlertsDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Alerts'),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/AddAlert');
        },
        tooltip: 'Add', // used by assistive technologies
        child: new Icon(Icons.add),
      ),

      body: new Column(
        children: <Widget>[
          new Card(
            child: new Column(
              children: <Widget>[
                new ListTile(
                  leading: new Icon(Icons.calendar_today),
                  title: new Text('Smith Jones – Loc : 205', textScaleFactor: globals.textScaleFactor),
                  subtitle: new Text('Blood Glucose Screening\n'
                      'June 23, 2011 at 11:37 p.m', textScaleFactor: globals.textScaleFactor),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.of(context).pushNamed('/SeeDetails');
                  },
                ),
              ],
            ),
          ),

          new Card(
            child: new Column(
              children: <Widget>[
                new ListTile(
                  leading: new Icon(Icons.calendar_today),
                  title: new Text('Deliz Ryan – Loc : 207', textScaleFactor: globals.textScaleFactor),
                  subtitle: new Text('Monitor Blood Pressure\n'
                      'June 23, 2011 at 11:37 p.m', textScaleFactor: globals.textScaleFactor),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.of(context).pushNamed('/SeeDetails');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}