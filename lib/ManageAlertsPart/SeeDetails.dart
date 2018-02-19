import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: 'See Details',
  home: new SeeDetails(),
));

class SeeDetails extends StatefulWidget {
  @override
  SeeDetailsState createState() => new SeeDetailsState();
}

class SeeDetailsState extends State<SeeDetails> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Details'),
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


                new ButtonBar(
                  children: <Widget>[
                    new RaisedButton(
                      onPressed: null,
                      child: new Text('Delete'),
                    ),
                    new RaisedButton(
                      onPressed: null,
                      child: new Text('Edit'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
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