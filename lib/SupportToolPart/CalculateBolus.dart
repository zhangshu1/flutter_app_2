import 'package:flutter/material.dart';

import '../Material/all.dart';
import '../Material/globals.dart' as globals;

class CalculateBolus extends StatefulWidget {

  @override
  CalculateBolusState createState() => new CalculateBolusState();
}

class CalculateBolusState extends State<CalculateBolus> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Calculate Bolus', textScaleFactor: globals.textScaleFactor),
      ),

      body: new Container(
        padding: new EdgeInsets.all(30.0),
        child: new Column(
          children: <Widget>[
            new Form(
              child: new Column(
                children: <Widget>[
                  new MyDropDownItem(new MyDropDownButton('Dextrose Conc.',  const ['Option1', 'Option2', 'Option3'])),
                  new MyDropDownItem(new MyDropDownButton('Desired Dose',  const ['Option1', 'Option2', 'Option3'])),
                  new Container(
                    padding: new EdgeInsets.symmetric(horizontal: 100.0),
                    child: new Row(
                      children: <Widget>[
                        new RaisedButton(
                          onPressed: null,
                          child: new Text('Calculate', textScaleFactor: globals.textScaleFactor),
                        ),
                        new Icon(Icons.help, color: Colors.blue,),
                      ],
                    ),
                  ),

                  new Container(
                    child: new Text('The Dose to draw up 0.25ml = 250 unit', textScaleFactor: globals.textScaleFactor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}