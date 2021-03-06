import 'package:flutter/material.dart';
import 'CustomizeCarePlan.dart';
import 'MyCarePlan.dart';

import '../Material/all.dart';
import '../Material/globals.dart' as globals;

//void main() =>
//    runApp(new MaterialApp(
//      title: 'Care Plan Page',
//      home: new CarePlan(),
//      routes: <String, WidgetBuilder>{
//        '/CustomizeCarePlan': (BuildContext context) => new CustomizeCarePlan(),
//        '/MyCarePlan': (BuildContext context) => new MyCarePlan(),
//      },
//    ));

class CarePlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(child: new MenuDrawer(),),
      appBar: new AppBar(
        title: new Text(
          'Suggested Care Plan',
        ),
      ),

      // Text Part
      body: new Column(
        children: <Widget>[
          new Container(
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new Container(
                      padding: new EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 50.0),
                      child: new RichText(
                        textScaleFactor: globals.textScaleFactor,
                        text: new TextSpan(
                            style: new TextStyle(
                                color: Colors.black, height: 1.3, fontSize: 18.0),
                            children: <TextSpan>[
                              new TextSpan(text: '1. Establish IV access\n',),
                              new TextSpan(
                                text: '2. Infuse D10W at 80 mL/kg/day\n',),
                              new TextSpan(text: '3. Calculate rate\n',),
                              new TextSpan(
                                text: '4. Screen the blood sugar\n',),
                              new TextSpan(text: '5. Treat hypoglycemi\n',),
                              new TextSpan(
                                text: '6. Calculate D10W bolus (2 mL/kg D10W)\n',),
                              new TextSpan(text: '7. Treat hypotension\n',),
                              new TextSpan(
                                text: '8. Calculate saline bolus (10 mL/kg)\n',),
                              new TextSpan(text: '9. Treat anemia\n',),
                              new TextSpan(
                                text: '10. Calculate packed red blood cell transfusion volume (10 mL/kg)\n\n\n',),
                              new TextSpan(text: 'Note: ',
                                  style: new TextStyle(
                                      fontWeight: FontWeight.bold)),
                              new TextSpan(
                                text: 'If time allows, perform type and cross match before administering blood. If emergently needed, give O negative packed red blood cells).',),
                            ]
                        ),
                      )
                  ),

                  // Button Part
                  new Container(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Column(
                          children: <Widget>[
                            new RaisedButton(
                              onPressed: () {
                                Navigator.push(context, new MaterialPageRoute(builder: (_) => new CustomizeCarePlan()));
                              },
                              child: new Text('Customize My Plan', textScaleFactor: globals.textScaleFactor,
                                style: new TextStyle(color: Colors.black),),
                            ),
                          ],
                        ),
                        new Column(
                          children: <Widget>[
                            new RaisedButton(
                              onPressed: () {
                                Navigator.push(context, new MaterialPageRoute(builder: (_) => new MyCarePlan()));
                              },
                              child: new Text('Proceed >>', textScaleFactor: globals.textScaleFactor,
                                style: new TextStyle(color: Colors.black),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}