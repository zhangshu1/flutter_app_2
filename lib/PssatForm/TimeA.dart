import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Material/MenuDrawer.dart';

class TimeAData {
  String callingTime = ''; //*textformfield
  String isAlive = 'Yes'; //*
  String age = ''; //*
  String temperature = ''; //textformfield
  String heartRate = ''; //textformfield
  String respiratoryRate = ''; //textformfield
  String bloodPressure = ''; //textformfield
  String mean = ''; //textformfield
  String method = '';

  // Perfusion/Pulses
  String crtOverChest = '';
  String crtOverKnee = '';
  String pulses = '';
  String isPulsesEqual = '';

  // Retractions
  String severity = '';
  String location = '';
  String o2 = ''; //textformfield
  String fio2 = ''; //textformfield
  String pao2 = ''; //textformfield

  // Level of consciousness
  String response = '';
  String others = ''; //textformfield
  String isParalyticUsed = '';
  String reasonGiven = ''; //textformfield
  String opioidsDose = ''; //textformfield
  String sedativesDose = ''; //textformfield

  // Stabilization Procedures
  String isIVInPlace = '';
  String ivLocation = ''; //textformfield
  String isIVInfusing = '';
  String infusingLocation = ''; //textformfield
  String isUvcInPlace = '';
  String uvcLocation = ''; //textformfield
  String isUacInPlace = '';
  String uacLocation = ''; //textformfield
  String isGlucose = '';
  String glucose = ''; //textformfield

  // Blood Gases
  String cbgAbg = ''; //textformfield
  String ph = ''; //textformfield
  String pco2 = ''; //textformfield
  String po2 = ''; //textformfield
  String hco3 = ''; //textformfield
  String be = '';
  String rate = ''; //textformfield
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

  String _ddage1;
  String _ddage2;
  String _ddMethod;
  String _ddSeverity;
  String _ddLocation;
  String _ddResponse;
  String _ddBe;

  final List<String> _age1 = <String>['1', '2', '3', '4', '5', '6', '7'];
  final List<String> _age2 = <String>['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'];
  final List<String> _method = <String>['A', 'B', 'C'];
  final List<String> _severity = <String>['None', 'Light', 'Severe'];
  final List<String> _location = <String>['Floor 1', 'Floor 2', 'Floor 3'];
  final List<String> _response = <String>['Low', 'Medium', 'High'];
  final List<String> _be = <String>['A', 'B'];

  bool _autoValidate = false;

  final EdgeInsets _rowPadding = const EdgeInsets.only(top: 10.0);
  final EdgeInsets _titlePadding = const EdgeInsets.only(top: 50.0, bottom: 5.0);
  final TextStyle _titleStyle = new TextStyle(color: Colors.grey[700], fontFamily: 'Roboto', fontSize: 12.0,);
  final Decoration _myDeco = new BoxDecoration(border: new Border(bottom: new BorderSide(color: Colors.blueGrey[200])));

  String _validateCallingTime(String value) {
    if (value.isEmpty)
      return 'Calling Time is required';

    final RegExp numExp = new RegExp(r'^[0-9]{4}$');

    if (!numExp.hasMatch(value))
      return 'Must be 4 digits';
    return null;
  }

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
                padding: const EdgeInsets.symmetric(horizontal: 30.0),

                children: <Widget>[
                  new TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Calling Time *',
                      helperText: 'Four digits only'
                    ),
                    keyboardType: TextInputType.number,
                    onSaved: (String val) {
                      timeA.callingTime = val;
                    },
                    validator: _validateCallingTime,
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),

                  new Row(
                    children: <Widget>[
                      new Container(
                          padding: _rowPadding,
                          child: new Text('Baby is alive *')
                      ),
                      new SizedBox(width: 74.0),
                      new Container(
                          padding: _rowPadding,
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
                              new SizedBox(width: 8.0),
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('No'),),
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
                          padding: _rowPadding,
                          child: new Text('Age *')
                      ),
                      new SizedBox(width: 130.0),
                      new Container(
                        padding: _rowPadding,
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
                              hint: new Text('Days  '),
                            ),
                            new SizedBox(width: 3.0),
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

                  new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Temperature',
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.temperature = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      new SizedBox(width: 20.0),
                      new Expanded(
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Heart Rate',
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
                    ],
                  ),


                  new Row(
                    children: <Widget>[
                      new Expanded(
//                        padding: new EdgeInsets.only(top: 10.0),
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Respiratory Rate',
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.respiratoryRate = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      new SizedBox(width: 20.0),
                      new Expanded(
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Blood Pressure',
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
                    ],
                  ),

                  new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Mean',
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.mean = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      new SizedBox(width: 20.0),
                      new Container(
                          child: new Expanded(
                              child: new Container(
                                padding: _rowPadding,
                                child: new DropdownButton<String>(
                                  value: _ddMethod,
                                  hint: new Text('Method              ',
                                    style: new TextStyle(height: 4.0),),
                                  onChanged: (String val) {
                                    setState(() {
                                      _ddMethod = val;
                                      timeA.method = val;
                                    });
                                  },
                                  items: _method.map((String val) {
                                    return new DropdownMenuItem<String>(
                                      value: val,
                                      child: new Text(val),
                                    );
                                  }).toList(),
                                ),
                              )
                          )
                      ),
                    ],
                  ),

                  new Container(
                    child: new Text('Perfusion/Pulses', style: _titleStyle),
                    padding: _titlePadding,
                    decoration: _myDeco,
                    alignment: Alignment.centerLeft,
                  ),

                  new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'CRT over Chest (s)',
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.crtOverChest = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      new SizedBox(width: 20.0),
                      new Expanded(
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'CRT over Knee (s)',
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.crtOverKnee = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      )
                    ],
                  ),

                  new TextFormField(
                    decoration: const InputDecoration(labelText: 'Pulses',),
                    onSaved: (String val) {
                      timeA.pulses = val;
                    },
                  ),

                  new Row(
                    children: <Widget>[
                      new Container(
                          padding: _rowPadding,
                          child: new Text('Pulses equal')
                      ),
                      new SizedBox(width: 74.0),
                      new Container(
                          padding: _rowPadding,
                          child: new Row(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('Yes'),),
                                  new Radio<String>(
                                    value: 'Yes',
                                    groupValue: timeA.isPulsesEqual,
                                    onChanged: _handleIsEqual,
                                  ),
                                ],
                              ),
                              new SizedBox(width: 8.0),
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('No'),),
                                  new Radio<String>(
                                    value: 'No',
                                    groupValue: timeA.isPulsesEqual,
                                    onChanged: _handleIsEqual,
                                  ),
                                ],
                              ),
                            ],
                          )
                      )
                    ],
                  ),

                  new Container(
                    child: new Text('Retractions', style: _titleStyle),
                    padding: _titlePadding,
                    decoration: _myDeco,
                    alignment: Alignment.centerLeft,
                  ),

                  new Row(
                    children: <Widget>[
                      new Expanded(
                          child: new Container(
                            padding: _rowPadding,
                            child: new DropdownButton<String>(
                              value: _ddSeverity,
                              onChanged: (String val) {
                                setState(() {
                                  _ddSeverity = val;
                                  timeA.severity = val;
                                });
                              },
                              items: _severity.map((String val) {
                                return new DropdownMenuItem<String>(
                                  value: val,
                                  child: new Text(val),
                                );
                              }).toList(),
                              hint: new Text('Severity'),
                            ),
                          )
                      ),
                      new SizedBox(width: 20.0),
                      new Expanded(
                          child: new Container(
                            padding: _rowPadding,
                            child: new DropdownButton<String>(
                              value: _ddLocation,
                              onChanged: (String val) {
                                setState(() {
                                  _ddLocation = val;
                                  timeA.location = val;
                                });
                              },
                              items: _location.map((String val) {
                                return new DropdownMenuItem<String>(
                                  value: val,
                                  child: new Text(val),
                                );
                              }).toList(),
                              hint: new Text('Location'),
                            ),
                          )
                      ),

                    ],
                  ),

                  new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'O2',
                              suffixText: '%'
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.o2 = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      new SizedBox(width: 20.0),
                      new Expanded(
                        child: new TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'FiO2',
                              suffixText: '%'
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.fio2 = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      new SizedBox(width: 20.0),
                      new Expanded(
                        child: new TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'PaO2',
                              suffixText: '%'
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.pao2 = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      )
                    ],
                  ),

                  new Container(
                    child: new Text(
                        'Level of consciousness', style: _titleStyle),
                    padding: _titlePadding,
                    decoration: _myDeco,
                    alignment: Alignment.centerLeft,
                  ),

                  new Row(
                    children: <Widget>[
                      new Container(
                          child: new Expanded(
                              child: new Container(
                                padding: _rowPadding,
                                child: new DropdownButton<String>(
                                  value: _ddResponse,
                                  hint: new Text('Response          ',
                                    style: new TextStyle(height: 4.0),),
                                  onChanged: (String val) {
                                    setState(() {
                                      _ddResponse = val;
                                      timeA.response = val;
                                    });
                                  },
                                  items: _response.map((String val) {
                                    return new DropdownMenuItem<String>(
                                      value: val,
                                      child: new Text(val),
                                    );
                                  }).toList(),
                                ),
                              )
                          )
                      ),
                      new SizedBox(width: 20.0),
                      new Expanded(
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Others',
                          ),
                          keyboardType: TextInputType.text,
                          onSaved: (String val) {
                            timeA.others = val;
                          },
                        ),
                      ),
                    ],
                  ),

                  new Row(
                    children: <Widget>[
                      new Container(
                          padding: _rowPadding,
                          child: new Text('Paralytic used  ')
                      ),
                      new SizedBox(width: 66.0),
                      new Container(
                          padding: _rowPadding,
                          child: new Row(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('Yes'),),
                                  new Radio<String>(
                                    value: 'Yes',
                                    groupValue: timeA.isParalyticUsed,
                                    onChanged: _handleIsParalyticUsed,
                                  ),
                                ],
                              ),
                              new SizedBox(width: 7.0),
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('No'),),
                                  new Radio<String>(
                                    value: 'No',
                                    groupValue: timeA.isParalyticUsed,
                                    onChanged: _handleIsParalyticUsed,
                                  ),
                                ],
                              ),
                            ],
                          )
                      )
                    ],
                  ),

                  new TextFormField(
                    initialValue: timeA.reasonGiven,
                    decoration: const InputDecoration(
                      hintText: 'Reason Given',
                      labelText: 'Reason given',
                    ),
                    onSaved: (String value) {
                      timeA.reasonGiven = value;
                    },
                    maxLines: 2,
                    keyboardType: TextInputType.multiline,
                  ),

                  new TextFormField(
                    initialValue: timeA.opioidsDose,
                    decoration: const InputDecoration(
                      hintText: 'Time/dose of all opioids given past 24 hours',
                      labelText: 'Opioids dose',
                    ),
                    onSaved: (String value) {
                      timeA.opioidsDose = value;
                    },
                    maxLines: 2,
                    keyboardType: TextInputType.multiline,
                  ),

                  new TextFormField(
                    initialValue: timeA.sedativesDose,
                    decoration: const InputDecoration(
                      hintText: 'Time/dose of all sedatives given past 24 hours',
                      labelText: 'Sedatives dose',
                    ),
                    onSaved: (String value) {
                      timeA.sedativesDose = value;
                    },
                    maxLines: 2,
                    keyboardType: TextInputType.multiline,
                  ),

                  new Container(
                    child: new Text(
                        'Stabilization Procedures', style: _titleStyle),
                    padding: _titlePadding,
                    decoration: _myDeco,
                    alignment: Alignment.centerLeft,
                  ),

                  new Row(
                    children: <Widget>[
                      new Container(
                          padding: _rowPadding,
                          child: new Text('IV in place      ')
                      ),
                      new SizedBox(width: 66.0),
                      new Container(
                          padding: _rowPadding,
                          child: new Row(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('Yes'),),
                                  new Radio<String>(
                                    value: 'Yes',
                                    groupValue: timeA.isIVInPlace,
                                    onChanged: _handleIsIvInPlace,
                                  ),
                                ],
                              ),
                              new SizedBox(width: 7.0),
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('No'),),
                                  new Radio<String>(
                                    value: 'No',
                                    groupValue: timeA.isIVInPlace,
                                    onChanged: _handleIsIvInPlace,
                                  ),
                                ],
                              ),
                            ],
                          )
                      )
                    ],
                  ),

                  new TextFormField(
                    decoration: const InputDecoration(labelText: 'Location',),
                    onSaved: (String val) {
                      timeA.ivLocation = val;
                    },
                  ),

                  new Row(
                    children: <Widget>[
                      new Container(
                          padding: _rowPadding,
                          child: new Text('IV fluid infusing')
                      ),
                      new SizedBox(width: 54.0),
                      new Container(
                          padding: _rowPadding,
                          child: new Row(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('Yes'),),
                                  new Radio<String>(
                                    value: 'Yes',
                                    groupValue: timeA.isIVInfusing,
                                    onChanged: _handleIsIvInfusing,
                                  ),
                                ],
                              ),
                              new SizedBox(width: 7.0),
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('No'),),
                                  new Radio<String>(
                                    value: 'No',
                                    groupValue: timeA.isIVInfusing,
                                    onChanged: _handleIsIvInfusing,
                                  ),
                                ],
                              ),
                            ],
                          )
                      )
                    ],
                  ),

                  new TextFormField(
                    decoration: const InputDecoration(labelText: 'Location',),
                    onSaved: (String val) {
                      timeA.infusingLocation = val;
                    },
                  ),

                  new Row(
                    children: <Widget>[
                      new Container(
                          padding: _rowPadding,
                          child: new Text('UVC in place ')
                      ),
                      new SizedBox(width: 66.0),
                      new Container(
                          padding: _rowPadding,
                          child: new Row(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('Yes'),),
                                  new Radio<String>(
                                    value: 'Yes',
                                    groupValue: timeA.isUvcInPlace,
                                    onChanged: _handleIsUvcInPlace,
                                  ),
                                ],
                              ),
                              new SizedBox(width: 7.0),
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('No'),),
                                  new Radio<String>(
                                    value: 'No',
                                    groupValue: timeA.isUvcInPlace,
                                    onChanged: _handleIsUvcInPlace,
                                  ),
                                ],
                              ),
                            ],
                          )
                      )
                    ],
                  ),

                  new TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Tip Location',),
                    onSaved: (String val) {
                      timeA.uvcLocation = val;
                    },
                  ),

                  new Row(
                    children: <Widget>[
                      new Container(
                          padding: _rowPadding,
                          child: new Text('UAC in place ')
                      ),
                      new SizedBox(width: 66.0),
                      new Container(
                          padding: _rowPadding,
                          child: new Row(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('Yes'),),
                                  new Radio<String>(
                                    value: 'Yes',
                                    groupValue: timeA.isUacInPlace,
                                    onChanged: _handleIsUacInPlace,
                                  ),
                                ],
                              ),
                              new SizedBox(width: 7.0),
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('No'),),
                                  new Radio<String>(
                                    value: 'No',
                                    groupValue: timeA.isUacInPlace,
                                    onChanged: _handleIsUacInPlace,
                                  ),
                                ],
                              ),
                            ],
                          )
                      )
                    ],
                  ),

                  new TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Tip Location',),
                    onSaved: (String val) {
                      timeA.uacLocation = val;
                    },
                  ),

                  new Row(
                    children: <Widget>[
                      new Container(
                          padding: _rowPadding,
                          child: new Text('Glucose        ')
                      ),
                      new SizedBox(width: 66.0),
                      new Container(
                          padding: _rowPadding,
                          child: new Row(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('Yes'),),
                                  new Radio<String>(
                                    value: 'Yes',
                                    groupValue: timeA.isGlucose,
                                    onChanged: _handleGlucose,
                                  ),
                                ],
                              ),
                              new SizedBox(width: 7.0),
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('No'),),
                                  new Radio<String>(
                                    value: 'No',
                                    groupValue: timeA.isGlucose,
                                    onChanged: _handleGlucose,
                                  ),
                                ],
                              ),
                            ],
                          )
                      )
                    ],
                  ),

                  new TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Value (mg/dL)',),
                    onSaved: (String val) {
                      timeA.glucose = val;
                    },
                    keyboardType: TextInputType.number,
                  ),

                  new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Indicate CBG, ABG Venous',
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.cbgAbg = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      new SizedBox(width: 20.0),
                      new Expanded(
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'pH',
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.ph = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
                  ),

                  new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'pCO2',
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.pco2 = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      new SizedBox(width: 20.0),
                      new Expanded(
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'pO2',
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.po2 = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
                  ),

                  new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'HCO3',
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (String val) {
                            timeA.hco3 = val;
                          },
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      new SizedBox(width: 20.0),
                      new Container(
                          child: new Expanded(
                              child: new Container(
                                padding: _rowPadding,
                                child: new DropdownButton<String>(
                                  value: _ddBe,
                                  hint: new Text('BE (Ventilation)',
                                    style: new TextStyle(height: 4.0),),
                                  onChanged: (String val) {
                                    setState(() {
                                      _ddBe = val;
                                      timeA.be = val;
                                    });
                                  },
                                  items: _be.map((String val) {
                                    return new DropdownMenuItem<String>(
                                      value: val,
                                      child: new Text(val),
                                    );
                                  }).toList(),
                                ),
                              )
                          )
                      ),
                    ],
                  ),

                  new TextFormField(
                    decoration: const InputDecoration(labelText: 'Rate',),
                    onSaved: (String val) {
                      timeA.rate = val;
                    },
                  ),

                  new Container(
                    padding: new EdgeInsets.only(top: 30.0),
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
//    final requiredSnackbar = new SnackBar(
//      content: new Text('${timeA.isAlive} is selected'),);
//    _scaffoldKey.currentState.showSnackBar(requiredSnackbar);
  }

  void _handleIsEqual(String val) {
    setState(() {
      timeA.isPulsesEqual = val;
    });
  }

  void _handleIsParalyticUsed(String val) {
    setState(() {
      timeA.isParalyticUsed = val;
    });
  }

  void _handleIsIvInPlace(String val) {
    setState(() {
      timeA.isIVInPlace = val;
    });
  }

  void _handleIsIvInfusing(String val) {
    setState(() {
      timeA.isIVInfusing = val;
    });
  }

  void _handleIsUvcInPlace(String val) {
    setState(() {
      timeA.isUvcInPlace = val;
    });
  }

  void _handleIsUacInPlace(String val) {
    setState(() {
      timeA.isUacInPlace = val;
    });
  }

  void _handleGlucose(String val) {
    setState(() {
      timeA.isGlucose = val;
    });
  }

  void _handleSubmitted() {
    final FormState form = _formKey.currentState;

    if (!form.validate()) {
      _autoValidate = true;

      final redSnackbar = new SnackBar(
        content: new Text('Please re-enter field that marked in red + ${timeA.callingTime} time + ${timeA.isAlive} alive + ${timeA.age} age'),);
      _scaffoldKey.currentState.showSnackBar(redSnackbar);
    } else if (timeA.age == '') {
      final requiredSnackbar = new SnackBar(
        content: new Text('Please enter all required fields + ${timeA.callingTime} time + ${timeA.isAlive} alive + ${timeA.age} age'),);
      _scaffoldKey.currentState.showSnackBar(requiredSnackbar);
    } else {
      form.save();

      showDialog(
          context: context,
          child: new AlertDialog(
            content: new Text(
                "Are you sure to submit this?"),
            actions: <Widget>[
              new RaisedButton(
                  child: new Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  }
              ),

              new RaisedButton(
                  child: new Text('Submit'),
                  onPressed: () {
                    showDialog(
                        context: context,
                        child: new AlertDialog(
                          content: new Text(
                              'Time A form submitted successfully!'),
                          actions: <Widget>[
                            new RaisedButton(
                                child: new Text("OK"),
                                onPressed: () {
                                  Navigator.of(context).pop(true);
                                  Navigator.of(context).pop(true);
                                })
                          ],
                        )
                    );
                  }
              )
            ],
          )
      );
    }
  }
}

//void main() =>
//    runApp(
//        new MaterialApp(
//          title: 'Time A',
//          home: new TimeA(),
//        )
//    );