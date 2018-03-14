import 'package:flutter/material.dart';
//import 'AlertsDashboard.dart';

import '../Material/globals.dart' as globals;

void main() =>
    runApp(new MaterialApp(
      title: 'Add Alert',
      home: new AddAlert(),
//  routes: <String, WidgetBuilder> {
//    '/AlertsDashboard': (BuildContext context) => new AlertsDashboard(),
//  },
    ));

class AddAlert extends StatefulWidget {
  @override
  AddAlertState createState() => new AddAlertState();
}

//class Alert {
//  DateTime dateTime;
//  String patient;
//  String alertActivity;
//  int minute;
//  int second;
//
//  Alert(this.dateTime, this.patient, this.alertActivity, this.minute, this.second);
//}

class AddAlertState extends State<AddAlert> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Add Alert', textScaleFactor: globals.textScaleFactor),
      ),

      body: new Container(
        alignment: Alignment.center,
        child: new Container(
          width: 300.0,
          child: new Form(
            child: new Column(
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(labelText: 'Date'),
                ),

                new Patient(),

                new TextField(
                  decoration: new InputDecoration(labelText: 'Alert Activity'),
                  maxLines: 4,
                ),

                new TextField(
                  decoration: new InputDecoration(
                    labelText: 'Time remaining for the alert',
                    hintText: 'min\' sec',
                  ),
                ),

                new Container(
                  padding: new EdgeInsets.all(30.0),
                  alignment: Alignment.center,
                  child: new RaisedButton(
                    onPressed: null,
                    child: new Text('Save Alerts', textScaleFactor: globals.textScaleFactor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
// Datepicker
//  handleDateSelection() async {
//    var now = new DateTime.now();
//    await showDatePicker(
//        context: context,
//        initialDate: now,
//        firstDate: now,
//        lastDate: now.add(new Duration(days: 10000))
//    );
//  }
}

//Dropdown button for patients
class Patient extends StatefulWidget {
  @override
  PatientState createState() => new PatientState();
}

class PatientState extends State<Patient> {
  static const List<String> patients = const[
    'Patient1',
    'Patient2',
    'Patient3',
    'Patient4',
  ];

  String originalPatient = patients[0];

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          child: new Row(
            children: <Widget>[
              new Expanded(child: new Text('Patient')),
              new DropdownButton(
                value: originalPatient,
                items: patients.map((string) {
                  return new DropdownMenuItem(
                    child: new Text(string),
                    value: string,
                  );
                }).toList(),
                onChanged: (string) => setState(() => originalPatient = string),
              ),
            ],
          ),
        ),
      ],
    );
  }
}