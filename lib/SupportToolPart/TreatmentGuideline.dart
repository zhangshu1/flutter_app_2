import 'package:flutter/material.dart';

class TreatmentGuideline extends StatefulWidget {

  @override
  TreatmentState createState() => new TreatmentState();
}

class TreatmentState extends State<TreatmentGuideline> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Treatment Guidelines'),
        actions: <Widget>[
          new FlatButton(
            onPressed: null,
            child: new Text('Next'),
          )
        ],
      ),

      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Text('1. Begin an Intravenous Infusion of D10W at 80 ml/kg/day\n\n'
            '2. Give 2ml/kg of D10W bolus IV over several minutes\n\n'
            '3. Screen blood glucose 15-30 minutes after bolus\n\n'
            '4. Document respond to treatment - do signs disappear once normoglycemic\n\n'
            '5. If Glucose Continues below 50mg/dL (2.8mmol/dL)\n\n'
            '6. Repeat the Bolus of 2ml/kg of D10W'),
      ),
    );
  }
}

void main() => runApp(new MaterialApp(
  title: 'suibian',
  home: new TreatmentGuideline(),
));