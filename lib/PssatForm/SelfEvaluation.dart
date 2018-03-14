import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Material/all.dart';

class EvaluationData {
  String healthProvider = '';
  String isPresent = 'Yes';
  String consultationTime = '';
  String family = '';
}

class SelfEvaluation extends StatefulWidget {
  const SelfEvaluation({Key key}): super(key: key);

  @override
  SelfEvaluationState createState() => new SelfEvaluationState();
}

class SelfEvaluationState extends State<SelfEvaluation>{
  EvaluationData evaluation = new EvaluationData();

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  String _ddHealthProvider = 'Jane Doe';

  final List<String> _healthProvider = <String>['Jane Doe', 'John Doe', 'Kid Doe'];

  bool _autoValidate = false;

  final EdgeInsets _rowPadding = const EdgeInsets.only(top: 10.0);
  final Decoration _myDeco = new BoxDecoration(border: new Border(bottom: new BorderSide(color: Colors.blueGrey[200])));

  String validateTime(String val) {
    final RegExp numExp = new RegExp(r'^[0-1][0-9]{3}$');

    if (!val.isEmpty && !numExp.hasMatch(val))
      return 'Must be 4 digits and the first number can only be 0 or 1';
    return null;
  }

  String validateFamily (String val){
    if (!val.isEmpty)
      return 'Please enter family information';
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),

      appBar: new AppBar(
        title: new Text(
            "Self Evaluation Questions",
            style: new TextStyle(color: Colors.black),
            textAlign: TextAlign.left),
      ),

      body: new SafeArea(
          child: new Form(
              key: _formKey,
              autovalidate: _autoValidate,

              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                children: <Widget>[
                  new Container(
                      padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                      decoration: _myDeco,
                      child: new Text('This section is to be completed by initial healthcare facility providers *', style: new TextStyle(fontWeight: FontWeight.bold),),
                  ),

                  new Row(
                    children: <Widget>[
                      new Container(
                          padding: _rowPadding,
                          child: new Text('_ddHealthProvider')
                      ),
                      new SizedBox(width: 65.0),
                      new Expanded(
                        child: new DropdownButton<String>(
                          value: _ddHealthProvider,
                          onChanged: (String val) {
                            setState(() {
                              _ddHealthProvider = val;
                              evaluation.healthProvider = val;
                            });
                          },
                          items: _healthProvider.map((String val) {
                            return new DropdownMenuItem<String>(
                              value: val,
                              child: new Text(val),
                            );
                          }).toList(),
                          hint: new Text('          ', style: new TextStyle(height: 4.0),),
                        ),
                      ),
                    ],
                  ),

                  new Row(
                    children: <Widget>[
                      new Container(
                          padding: _rowPadding,
                          child: new Text('Was physical or primary\nhealthcare provider\npresent at patient’s\nbedside or in nursery\nat the time of transport\nteam arrival? *\n')
                      ),
                      new SizedBox(width: 10.0),
                      new Container(
                          padding: _rowPadding,
                          child: new Row(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('Yes'),),
                                  new Radio<String>(
                                    value: 'Yes',
                                    groupValue: evaluation.isPresent,
                                    onChanged: _handlePresent,
                                  ),
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  new Container(child: new Text('No'),),
                                  new Radio<String>(
                                    value: 'No',
                                    groupValue: evaluation.isPresent,
                                    onChanged: _handlePresent,
                                  ),
                                ],
                              ),
                            ],
                          )
                      )
                    ],
                  ),

                  new TextFormField(
                    style: new TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        labelText: 'Time Consultations made *'
                    ),
                    keyboardType: TextInputType.number,
                    validator: validateTime,
                    onSaved: (String val) {
                      evaluation.consultationTime = val;
                    },
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),

                  new TextFormField(
                    style: new TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        labelText: 'Family practice called *'
                    ),
                    validator: validateFamily,
                    onSaved: (String val) {
                      evaluation.family = val;
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

                ],
              ),

          ),
      ),

    );
  }

  void _handlePresent(String val) {
    setState(() {
      evaluation.isPresent = val;
    });
  }

  void _handleSubmitted() {
    final FormState form = _formKey.currentState;

    if (!form.validate()) {
      _autoValidate = true;

      final redSnackbar = new SnackBar(
        content: new Text('Please re-enter field that marked in red'),);
      _scaffoldKey.currentState.showSnackBar(redSnackbar);
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
                          content: new Text('Time A form submitted successfully!'),
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

//void main() => runApp(
//  new MaterialApp(
//    title: 'Self Evaluation Questions',
//    home: new SelfEvaluation(),
//  )
//);