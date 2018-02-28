import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Material/MenuDrawer.dart';

class PatientData {
  String birthWeight = ''; //textformfield
  String birthOrder = ''; //textformfield
  String gender = '';
  String estGa = '';
  String growth = '';
  String admitted = '';
  String resuscitation = '';
  String referral = '';
  String resuscitationMeds = ''; //textformfield
  String otherMeds = ''; //textformfield
  String at1min = '';
  String at5min = '';
  String at10min = '';
  String at15min = '';
  String at20min = '';
}

class PatientInfo extends StatefulWidget {
  const PatientInfo({ Key key }) : super(key: key);

  @override
  PatientInfoState createState() => new PatientInfoState();
}

class PatientInfoState extends State<PatientInfo> {
  PatientData patient = new PatientData();

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

//  String _ddBirthOrder;
  String _ddGender;
  String _ddEstGa;
  String _ddGrowth;
  String _ddAdmitted;
  String _ddResuscitation;
  String _ddReferral;
  String _dd1Min;
  String _dd5Min;
  String _dd10Min;
  String _dd15Min;
  String _dd20Min;

  final List<String> _gender = <String>['Female', 'Male'];
  final List<String> _estGa = <String>[
    'GA 1', 'GA 2', 'GA 3', 'GA 4', 'GA 5', 'GA 6',
  ];
  final List<String> _growth = <String>[
    'Growth 1', 'Growth 2', 'Growth 3', 'Growth 4', 'Growth 5', 'Growth 6'];
  final List<String> _admitted = <String>['Central', 'East', 'West', 'Other'];
  final List<String> _resuscitation = <String>['True', 'False'];
  final List<String> _referral = <String>[
    'Referral 1',
    'Referral 2',
    'Referral 3',
    'Referral 4',
    'Referral 5',
    'Referral 6'
  ];
  final List<String> _at1Min = <String>[
    'Apgar 1', 'Apgar 2', 'Apgar 3', 'Apgar 4', 'Apgar 5', 'Apgar 6'];
  final List<String> _at5Min = <String>[
    'Apgar 1', 'Apgar 2', 'Apgar 3', 'Apgar 4', 'Apgar 5', 'Apgar 6'];
  final List<String> _at10Min = <String>[
    'Apgar 1', 'Apgar 2', 'Apgar 3', 'Apgar 4', 'Apgar 5', 'Apgar 6'];
  final List<String> _at15Min = <String>[
    'Apgar 1', 'Apgar 2', 'Apgar 3', 'Apgar 4', 'Apgar 5', 'Apgar 6'];
  final List<String> _at20Min = <String>[
    'Apgar 1', 'Apgar 2', 'Apgar 3', 'Apgar 4', 'Apgar 5', 'Apgar 6'];

  bool _autoValidate = false;

  String _validateBirthWeight(String value) {
    if (value.isEmpty)
      return 'Birth weight is required';

    final RegExp numExp = new RegExp(
        r'(?!^0*$)(?!^0*\.0*$)^\d{1,2}(\.\d{1,2})?$');

    if (!numExp.hasMatch(value))
      return 'Only 2 digits and 2 decimals at most';
    return null;
  }

  String _validateBirthOrder(String value) {
    if (value.isEmpty)
      return 'Birth order is required';

    final RegExp numExp = new RegExp(r'^[1-9]$');

    if (!numExp.hasMatch(value))
      return 'Only allow 1 digit';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,

      endDrawer: new Drawer(child: new MenuDrawer(),),
      appBar: new AppBar(
        title: new Text(
            "Patient Information", style: new TextStyle(color: Colors.black),
            textAlign: TextAlign.left),
      ),

      body: new SafeArea(
        child: new Form(
          key: _formKey,
          autovalidate: _autoValidate,

          child: new ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            children: <Widget>[

              new TextFormField(
//              initialValue: patient.birthWeight,
                decoration: const InputDecoration(
                  labelText: 'Birth Weight *',
                  helperText: 'Please enter numbers',
                ),
                keyboardType: TextInputType.number,
                onSaved: (String value) {patient.birthWeight = value;},
                validator: _validateBirthWeight,
              ),

              new TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Birth Order *',
                  helperText: 'Please enter 1 digit only',
                ),
                keyboardType: TextInputType.number,
                onSaved: (String value) {patient.birthOrder = value;},
                validator: _validateBirthOrder,
                // TextInputFormatters are applied in sequence.
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly,
                ],
              ),

              new Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Expanded(
                    child: new Container(
                      padding: new EdgeInsets.only(top: 10.0),
                      child: new DropdownButton<String>(
                        value: _ddGender,
                        onChanged: (String newValue) {
                          setState(() {
                            _ddGender = newValue;
                            patient.gender = _ddGender;
                          });
                        },
                        items: _gender.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        hint: new Text('Gender *'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30.0,),
                  new Expanded(
                    child: new Container(
                      padding: new EdgeInsets.only(top: 10.0),
                      child: new DropdownButton<String>(
                        value: _ddEstGa,
                        onChanged: (String newValue) {
                          setState(() {
                            _ddEstGa = newValue;
                            patient.estGa = _ddEstGa;
                          });
                        },
                        items: _estGa.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        hint: new Text('Est. GA *'),
                      ),
                    ),
                  ),
                ],
              ),

              new Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Expanded(
                    child: new Container(
                      padding: new EdgeInsets.only(top: 10.0),
                      child: new DropdownButton<String>(
                        value: _ddGrowth,
                        onChanged: (String newValue) {
                          setState(() {
                            _ddGrowth = newValue;
                            patient.growth = _ddGrowth;
                          });
                        },
                        items: _growth.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        hint: new Text('Growth *'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30.0,),
                  new Expanded(
                    child: new Container(
                      padding: new EdgeInsets.only(top: 10.0),
                      child: new DropdownButton<String>(
                        value: _ddAdmitted,
                        onChanged: (String newValue) {
                          setState(() {
                            _ddAdmitted = newValue;
                            patient.admitted = _ddAdmitted;
                          });
                        },
                        items: _admitted.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        hint: new Text('Admitted *'),
                      ),
                    ),
                  ),
                ],
              ),

              new Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Expanded(
                    child: new Container(
                      padding: new EdgeInsets.only(top: 10.0),
                      child: new DropdownButton<String>(
                        value: _ddResuscitation,
                        onChanged: (String newValue) {
                          setState(() {
                            _ddResuscitation = newValue;
                            patient.resuscitation = _ddResuscitation;
                          });
                        },
                        items: _resuscitation.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        hint: new Text('Resuscitation *'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30.0,),
                  new Expanded(
                    child: new Container(
                      padding: new EdgeInsets.only(top: 10.0),
                      child: new DropdownButton<String>(
                        value: _ddReferral,
                        onChanged: (String newValue) {
                          setState(() {
                            _ddReferral = newValue;
                            patient.referral = _ddReferral;
                          });
                        },
                        items: _referral.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        hint: new Text('Referral *'),
                      ),
                    ),
                  ),
                ],
              ),

              new TextFormField(
                initialValue: patient.resuscitationMeds,
                decoration: const InputDecoration(
                  hintText: 'List of resuscitation medications',
                  helperText: 'Keep it short, this is just a demo',
                  labelText: 'Resuscitation Meds',
                ),
                onSaved: (String value) {
                  patient.resuscitationMeds = value;
                },
                maxLines: 2,
                keyboardType: TextInputType.multiline,
              ),

              new TextFormField(
                initialValue: patient.otherMeds,
                decoration: const InputDecoration(
                  hintText: 'List of other medication history',
                  helperText: 'Keep it short, this is just a demo',
                  labelText: 'Other Meds',
                ),
                onSaved: (String value) {
                  patient.otherMeds = value;
                },
                maxLines: 2,
                keyboardType: TextInputType.multiline,
              ),

              new Container(
                  padding: new EdgeInsets.only(top: 50.0),
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        child: new Text('Apgar', style: Theme
                            .of(context)
                            .textTheme
                            .button),
                        alignment: Alignment.centerLeft,
                      ),
                      new Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          new Expanded(
                            child: new Container(
                              padding: new EdgeInsets.only(top: 10.0),
                              child: new DropdownButton<String>(
                                value: _dd1Min,
                                onChanged: (String newValue) {
                                  setState(() {
                                    _dd1Min = newValue;
                                    patient.at1min = _dd1Min;
                                  });
                                },
                                items: _at1Min.map((String value) {
                                  return new DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                hint: new Text('At 1 min'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 30.0,),
                          new Expanded(
                            child: new Container(
                              padding: new EdgeInsets.only(top: 10.0),
                              child: new DropdownButton<String>(
                                value: _dd5Min,
                                onChanged: (String newValue) {
                                  setState(() {
                                    _dd5Min = newValue;
                                    patient.at5min = _dd5Min;
                                  });
                                },
                                items: _at5Min.map((String value) {
                                  return new DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                hint: new Text('At 5 min'),
                              ),
                            ),
                          ),
                        ],
                      ),

                      new Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          new Expanded(
                            child: new Container(
                              padding: new EdgeInsets.only(top: 10.0),
                              child: new DropdownButton<String>(
                                value: _dd10Min,
                                onChanged: (String newValue) {
                                  setState(() {
                                    _dd10Min = newValue;
                                    patient.at10min = _dd10Min;
                                  });
                                },
                                items: _at10Min.map((String value) {
                                  return new DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                hint: new Text('At 10 min'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 30.0,),
                          new Expanded(
                            child: new Container(
                              padding: new EdgeInsets.only(top: 10.0),
                              child: new DropdownButton<String>(
                                value: _dd15Min,
                                onChanged: (String newValue) {
                                  setState(() {
                                    _dd15Min = newValue;
                                    patient.at15min = _dd15Min;
                                  });
                                },
                                items: _at15Min.map((String value) {
                                  return new DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                hint: new Text('At 15 min'),
                              ),
                            ),
                          ),
                        ],
                      ),

                      new Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          new Expanded(
                            child: new Container(
                              padding: new EdgeInsets.only(top: 10.0),
                              child: new DropdownButton<String>(
                                value: _dd20Min,
                                onChanged: (String newValue) {
                                  setState(() {
                                    _dd20Min = newValue;
                                    patient.at20min = _dd20Min;
                                  });
                                },
                                items: _at20Min.map((String value) {
                                  return new DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                hint: new Text('At 20 min'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 170.0,),
                        ],
                      ),

                    ],
                  )
              ),

              new Container(
                padding: new EdgeInsets.only(top: 50.0),
                child: new Text('* indicates required field', style: Theme
                    .of(context)
                    .textTheme
                    .caption),
              ),

              new Container(
                padding: const EdgeInsets.only(top: 50.0),
                alignment: Alignment.center,
                child: new RaisedButton(
                  child: const Text('Submit'),
                  onPressed: _handleSubmitted,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleSubmitted() {
    final FormState form = _formKey.currentState;

    if (!form.validate()) {
      _autoValidate = true; // Start validating on every change.
      final redSnackbar = new SnackBar(
        content: new Text('Please re-enter field that marked in red'),);
      _scaffoldKey.currentState.showSnackBar(redSnackbar);
    } else
    if (patient.gender == '' || patient.estGa == '' || patient.growth == '' ||
        patient.admitted == '' || patient.resuscitation == '' ||
        patient.referral == '') {
      final requiredSnackbar = new SnackBar(
        content: new Text('Please enter all required fields'),);
      _scaffoldKey.currentState.showSnackBar(requiredSnackbar);
    } else {
      form.save();
      showDialog(
          context: context,
          child: new AlertDialog(
            content: new Text(
                "Are you sure to submit this patient's information?"),
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
                              'Patient information saved successfully!'),
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

void main() =>
    runApp(
        new MaterialApp(
          title: 'Patient Information',
          home: new PatientInfo(),
        )
    );