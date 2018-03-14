import 'package:flutter/material.dart';

import '../Material/all.dart';
import '../Material/globals.dart' as globals;
class PssatFormDir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),

      appBar: new AppBar(
        title: new Text(
            "PSSAT Form Direction", textScaleFactor: globals.textScaleFactor, style: new TextStyle(color: Colors.black),
            textAlign: TextAlign.left),
      ),

      body: new Container(
        padding: new EdgeInsets.only(top: 50.0, left: 15.0, right: 15.0),
        child: new Column(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
              child: new Text(
                '1. Either during pre-transport stabilization care, or immediately after the infant is transported, complete the demographic information in the Patient Information section of the form.',
                textScaleFactor: globals.textScaleFactor, style: new TextStyle(fontSize: 18.0),),
            ),
            new Container(
              padding: new EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
              child: new Text(
                '2. Under Indications for Referral, select all of the suspected or confirmed diagnoses that apply at the time of referral.',
                textScaleFactor: globals.textScaleFactor, style: new TextStyle(fontSize: 18.0),),
            ),
            new Container(
              padding: new EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
              child: new Text(
                '3. Times A, B, and C are used repetitively on the first and second pages of the form. The idea is to record the vital signs, physical exam, and stabilization procedures that were performed.',
                textScaleFactor: globals.textScaleFactor, style: new TextStyle(fontSize: 18.0),),
            ),
            new Container(
                padding: new EdgeInsets.only(
                    top: 50.0, left: 15.0, right: 15.0),
                child: new RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/PssatFormMenu');
                  },
                  child: new Text('Continue', textScaleFactor: globals.textScaleFactor, ),
                )
            )
          ],
        ),
      ),

    );
  }
}

//void main() => runApp(
//  new MaterialApp(
//    title: 'Patient Information',
//    home: new PssatFormDir(),
//  )
//);