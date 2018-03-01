import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Material/MenuDrawer.dart';

class TimeAData {
  String callingTime = '';          //*textformfield
  String isAlive = 'Yes';           //*
  String age = '';                  //*
  String temperature = '';          //textformfield
  String heartRate = '';            //textformfield
  String respiratoryRate = '';      //textformfield
  String bloodPressure = '';        //textformfield
  String mean = '';                 //textformfield
  String method = '';

  // Perfusion/Pulses
  String crtOverChest = '';
  String crtOverKnee = '';
  String pulses = '';
  String isPulsesEqual = '';

  // Retractions
  String severity = '';
  String retractionLocation = '';
  String o2 = '';                   //textformfield
  String fio2 = '';                 //textformfield
  String pao2 = '';                 //textformfield

  // Level of consciousness
  String response = '';
  String others = '';               //textformfield
  String isParalyticUsed = '';
  String reasongiven = '';          //textformfield
  String opioidsDose = '';          //textformfield
  String sedativesDose = '';        //textformfield

  // Stabilization Procedures
  String isIVInPlace = '';
  String ivLocation = '';          //textformfield
  String isIVInfusing = '';
  String infusingLocation = '';    //textformfield
  String isUVCInPlace = '';
  String tipLocation = '';         //textformfield
  String isUACInPlace = '';
  String uacLocation = '';         //textformfield
  String isGlucose = '';
  String glucoseValue = '';        //textformfield

  // Blood Gases
  String cbgAbg = '';             //textformfield
  String ph = '';                 //textformfield
  String pco2 = '';               //textformfield
  String po2 = '';                //textformfield
  String hco3 = '';               //textformfield
  String be = '';
  String rate = '';               //textformfield
}

class TimeA extends StatefulWidget {
//  const TimeAData({ Key key }): super(key: key);

  @override
  TimeAState createState() => new TimeAState();
}

class TimeAState extends State<TimeA> {
  TimeAData timeA = new TimeAData();

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  String _rbIsAlive;
  String _ddage1;
  String _ddage2;
  String _ddMethod;
  String _rbPulseEqual;
  String _ddSeverity;
  String _ddLocation;
  String _ddResponse;
  String _rbParalyticUsed;
  String _rbIv;
  String _rbIvInfusing;
  String _rbUvc;
  String _rbUac;
  String _rbGlucose;
  String _ddBe;

  final List<String> _age1 = <String>['1', '2', '3', '4', '5', '6', '7'];
  final List<String> _age2 = <String>[
    '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'];
  final List<String> _method = <String>['A', 'B', 'C'];
  final List<String> _severity = <String>['None', 'Light', 'Severe'];
  final List<String> _location = <String>['Floor 1', 'Floor 2', 'Floor 3'];
  final List<String> _response = <String>['Low', 'Medium', 'High'];
  final List<String> _be = <String>['A', 'B'];

  bool _autoValidate = false;


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      endDrawer: new Drawer(child: new MenuDrawer(),),

      appBar: new AppBar(
        title: new Text(
            "Time A", style: new TextStyle(color: Colors.black),
            textAlign: TextAlign.left),
      ),

      body: new SafeArea(
        child: new Form(
            key: _formKey,
            autovalidate: _autoValidate,

            child: new ListView(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 10.0),
                children: <Widget>[
                  new TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Calling Time *',
                    ),
                    onSaved: (String val) {timeA.callingTime = val;},
                  ),

                  new Row(
                    children: <Widget>[
                      new Container(
                          padding: new EdgeInsets.only(top: 10.0),
                          child: new Text('Baby is alive *')
                      ),
                      new SizedBox(width: 60.0),
                      new Container(
                          padding: new EdgeInsets.only(top: 10.0),
                          child: new Row(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('Yes'),),
                                  new Radio<String>(
                                    value: 'Yes',
                                    groupValue: timeA.isAlive,
                                    onChanged: _handleIsAlive,
                                  ),
                                ],
                              ),
                              new SizedBox(width: 20.0),
                              new Row(
                                children: <Widget>[
                                  new Container(
                                    child: new Text('No'),
                                  ),
                                  new Radio<String>(
                                    value: 'No',
                                    groupValue: timeA.isAlive,
                                    onChanged: _handleIsAlive,
                                  ),
                                ],
                              ),
                            ],
                          )
                      )
                    ],
                  ),

                  new Row(
                    children: <Widget>[
                      new Container(
                          padding: new EdgeInsets.only(top: 10.0),
                          child: new Text('Age *')
                      ),
                      new SizedBox(width: 100.0),
                      new Container(
                        padding: new EdgeInsets.only(top: 10.0),
                        child: new Row(
                          children: <Widget>[
                            new DropdownButton<String>(
                              value: _ddage1,
                              onChanged: (String val) {
                                setState(() {
                                  _ddage1 = val;
                                  timeA.age = _ddage1 + 'D ';
                                });
                              },
                              items: _age1.map((String val) {
                                return new DropdownMenuItem<String>(
                                  value: val,
                                  child: new Text(val),
                                );
                              }).toList(),
                              hint: new Text('Days *'),
                            ),

                            new SizedBox(width: 20.0),

                            new DropdownButton<String>(
                              value: _ddage2,
                              onChanged: (String val) {
                                setState(() {
                                  _ddage2 = val;
                                  timeA.age = timeA.age + _ddage2 + 'h';
                                });
                              },
                              items: _age2.map((String val) {
                                return new DropdownMenuItem<String>(
                                  value: val,
                                  child: new Text(val),
                                );
                              }).toList(),
                              hint: new Text('Hours'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  new TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Temperature',
                      helperText: 'Please enter numbers',
                    ),
                    keyboardType: TextInputType.number,
                    onSaved: (String val) {
                      timeA.temperature = val;
                    },
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),

                  new Row(
                    children: <Widget>[
                      new Expanded(
//                        padding: new EdgeInsets.only(top: 10.0),
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Heart Rate',
                            helperText: 'Please enter numbers',
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.heartRate = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      new SizedBox(width: 20.0),
                      new Expanded(
//                        padding: new EdgeInsets.only(top: 10.0),
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Respiratory Rate',
                            helperText: 'Please enter numbers',
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.respiratoryRate = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      )
                    ],
                  ),

                  new Row(
                    children: <Widget>[
                      new Expanded(
//                        padding: new EdgeInsets.only(top: 10.0),
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Blood Pressure',
                            helperText: 'Please enter numbers',
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.bloodPressure = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      new SizedBox(width: 20.0),
                      new Expanded(
//                        padding: new EdgeInsets.only(top: 10.0),
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Mean',
                            helperText: 'Please enter numbers',
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.mean = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      )
                    ],
                  ),







                  new Container(
                    padding: new EdgeInsets.only(top: 50.0),
                    child: new Text('* indicates required field', style: Theme
                        .of(context)
                        .textTheme
                        .caption),),

                  new Container(
                    padding: const EdgeInsets.only(top: 50.0),
                    alignment: Alignment.center,
                    child: new RaisedButton(
                      child: const Text('Submit'),
                      onPressed: _handleSubmitted,
                    ),
                  ),

                ]
            )
        ),
      ),

    );
  }


  void _handleIsAlive(String val) {
    setState(() {
      timeA.isAlive = val;
    });

    final requiredSnackbar = new SnackBar(
      content: new Text('${timeA.isAlive} is selected'),);
    _scaffoldKey.currentState.showSnackBar(requiredSnackbar);
  }

  void _handleSubmitted() {
    final requiredSnackbar = new SnackBar(content: new Text('age: ${timeA.age}'),);
    _scaffoldKey.currentState.showSnackBar(requiredSnackbar);

//    final FormState form = _formKey.currentState;
//
//    if (!form.validate()) {
//      _autoValidate = true; // Start validating on every change.
//      final redSnackbar = new SnackBar(
//        content: new Text('Please re-enter field that marked in red'),);
//      _scaffoldKey.currentState.showSnackBar(redSnackbar);
//    } else
//    if (patient.gender == '' || patient.estGa == '' || patient.growth == '' ||
//        patient.admitted == '' || patient.resuscitation == '' ||
//        patient.referral == '') {
//      final requiredSnackbar = new SnackBar(
//        content: new Text('Please enter all required fields'),);
//      _scaffoldKey.currentState.showSnackBar(requiredSnackbar);
//    } else {
//      form.save();
//
//      showDialog(
//          context: context,
//          child: new AlertDialog(
//            content: new Text(
//                "Are you sure to submit this patient's information?"),
//            actions: <Widget>[
//              new RaisedButton(
//                  child: new Text('Cancel'),
//                  onPressed: () {
//                    Navigator.of(context).pop(false);
//                  }
//              ),
//
//              new RaisedButton(
//                  child: new Text('Submit'),
//                  onPressed: () {
//                    showDialog(
//                        context: context,
//                        child: new AlertDialog(
//                          content: new Text(
//                              'Patient information saved successfully!'),
//                          actions: <Widget>[
//                            new RaisedButton(
//                                child: new Text("OK"),
//                                onPressed: () {
//                                  Navigator.of(context).pop(true);
//                                  Navigator.of(context).pop(true);
//                                })
//                          ],
//                        )
//                    );
//                  }
//              )
//            ],
//          )
//      );
//    }
  }
}

void main() =>
    runApp(
        new MaterialApp(
          title: 'Time A',
          home: new TimeA(),
        )
    );

