import 'package:flutter/material.dart';

import '../Material/MenuDrawer.dart';

//void main() =>
//    runApp(new MaterialApp(
//      title: 'My Care Plan',
//      home: new MyCarePlan(),
//    ));

class MyCarePlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(child: new MenuDrawer(),),
      appBar: new AppBar(
        title: new Text('My Care Plan'),
      ),

      body: new Column(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(30.0),
            alignment: Alignment.centerLeft,
            child: new Text(
              'My Care Plan',
              style: new TextStyle(color: Colors.green, fontSize: 20.0),),
          ),

          new Container(
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new Container(
                      padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 50.0),
                      child: new RichText(
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
                    alignment: Alignment.center,
                    child: new RaisedButton(
                      onPressed: null,
                      child: new Text('Save & Proceed'),
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