import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Material/MenuDrawer.dart';

class InterventionData {
  String et = '';
  String isEt = 'Yes';
  String orderTime = '';
  String orderMode = '';
  String cultureTime = '';
  String antibioticsTime = '';
}

class Interventions extends StatefulWidget {
  const Interventions({Key key}): super(key: key);

  @override
  InterventionsState createState() => new InterventionsState();
}

class InterventionsState extends State<Interventions>{
  InterventionData intervention = new InterventionData();

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  String _ddOrderMode = '    Order Mode A';

  final List<String> _orderMode = <String>['    Order Mode A', '    Order Mode B', '    Order Mode C'];

  bool _autoValidate = false;

  final EdgeInsets _rowPadding = const EdgeInsets.only(top: 10.0);
  final EdgeInsets _titlePadding = const EdgeInsets.only(top: 50.0, bottom: 5.0);
  final TextStyle _titleStyle = new TextStyle(color: Colors.grey[700], fontFamily: 'Roboto', fontSize: 12.0,);
  final Decoration _myDeco = new BoxDecoration(border: new Border(bottom: new BorderSide(color: Colors.blueGrey[200])));

  String validateTime(String value) {
    if (value.isEmpty)
      return 'Calling Time is required';

    final RegExp numExp = new RegExp(r'^[0-9]{4}$');

    if (!numExp.hasMatch(value))
      return 'Must be 4 digits';
    return null;
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      key: _scaffoldKey,
      endDrawer: new Drawer(child: new MenuDrawer(),),
      appBar: new AppBar(
        title: new Text(
            'Specific Interventions',
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
                  child: new Text('Airway', style: _titleStyle),
                  padding: _titlePadding,
                  decoration: _myDeco,
                  alignment: Alignment.centerLeft,
                ),

                new TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'ET tube location when team arrived *',
                    suffixText: 'cm',
                  ),
                  keyboardType: TextInputType.number,
                  onSaved: (String val) {
                    intervention.et = val;
                  },
                  inputFormatters: <TextInputFormatter>[
                    WhitelistingTextInputFormatter.digitsOnly,
                  ],
                ),

                new Row(
                  children: <Widget>[
                    new Container(
                        padding: _rowPadding,
                        child: new Text('ET tube readjusted')
                    ),
                    new SizedBox(width: 37.0),
                    new Container(
                        padding: _rowPadding,
                        child: new Row(
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Container(child: new Text('Yes'),),
                                new Radio<String>(
                                  value: 'Yes',
                                  groupValue: intervention.isEt,
                                  onChanged: _handleIsEt,
                                ),
                              ],
                            ),
                            new SizedBox(width: 10.0),
                            new Row(
                              children: <Widget>[
                                new Container(child: new Text('No'),),
                                new Radio<String>(
                                  value: 'No',
                                  groupValue: intervention.isEt,
                                  onChanged: _handleIsEt,
                                ),
                              ],
                            ),
                          ],
                        )
                    )
                  ],
                ),

                new Container(
                  child: new Text('Antibiotics', style: _titleStyle),
                  padding: _titlePadding,
                  decoration: _myDeco,
                  alignment: Alignment.centerLeft,
                ),

                new TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Antibiotics order time'
                  ),
                  keyboardType: TextInputType.number,
                  onSaved: (String val) {
                    intervention.orderTime = val;
                  },
                  validator: validateTime,
                  inputFormatters: <TextInputFormatter>[
                    WhitelistingTextInputFormatter.digitsOnly,
                  ],
                ),

                new Row(
                  children: <Widget>[
                    new Container(
                        padding: _rowPadding,
                        child: new Text('Order Mode')
                    ),
                    new SizedBox(width: 65.0),
                    new Expanded(
                        child: new DropdownButton<String>(
                          value: _ddOrderMode,
                          onChanged: (String val) {
                            setState(() {
                              _ddOrderMode = val;
                              intervention.orderMode = val;
                            });
                          },
                          items: _orderMode.map((String val) {
                            return new DropdownMenuItem<String>(
                              value: val,
                              child: new Text(val),
                            );
                          }).toList(),
                         hint: new Text('                                ', style: new TextStyle(height: 4.0),),
                        ),
                    ),
                  ],
                ),

                new TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Blood culture obtained time'
                  ),
                  keyboardType: TextInputType.number,
                  onSaved: (String val) {
                    intervention.cultureTime = val;
                  },
                  validator: validateTime,
                  inputFormatters: <TextInputFormatter>[
                    WhitelistingTextInputFormatter.digitsOnly,
                  ],
                ),

                new TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Antibiotics began time'
                  ),
                  keyboardType: TextInputType.number,
                  onSaved: (String val) {
                    intervention.antibioticsTime = val;
                  },
                  validator: validateTime,
                  inputFormatters: <TextInputFormatter>[
                    WhitelistingTextInputFormatter.digitsOnly,
                  ],
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
            ),
          )
      ),
    );
  }

  void _handleIsEt(String val) {
    setState(() {
      intervention.isEt = val;
    });
  }

  void _handleSubmitted() {
    final FormState form = _formKey.currentState;

    if (!form.validate()) {
      _autoValidate = true;

      final redSnackbar = new SnackBar(
        content: new Text('Please re-enter field that marked in red + ${intervention.et} et'),);
      _scaffoldKey.currentState.showSnackBar(redSnackbar);
    } else if (intervention.et == '') {
      final requiredSnackbar = new SnackBar(
        content: new Text('Please enter all required fields + ${intervention.et} et'),);
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



void main() => runApp(
  new MaterialApp(
    title: 'Specific Interventions',
    home: new Interventions(),
  )
);