import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: 'Care Plan Page',
  home: new CarePlan(),
));

class CarePlan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
//        leading: new IconButton(
//            icon: new Icon(Icons.arrow_drop_down_circle, size: 42.0, color: Colors.white,),
//            onPressed: null),
        title: new Text(
            'Suggested Care Plan',
            style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white), textScaleFactor: 0.6,
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
                  padding: new EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 50.0),
                  child: new RichText(
                    text: new TextSpan(
                      style: new TextStyle(color: Colors.black, height: 1.3),
                      children: <TextSpan>[
                        new TextSpan(text: '1. Establish IV access\n',),
                        new TextSpan(text: '2. Infuse D10W at 80 mL/kg/day\n',),
                        new TextSpan(text: '3. Calculate rate\n',),
                        new TextSpan(text: '4. Screen the blood sugar\n',),
                        new TextSpan(text: '5. Treat hypoglycemi\n',),
                        new TextSpan(text: '6. Calculate D10W bolus (2 mL/kg D10W)\n',),
                        new TextSpan(text: '7. Treat hypotension\n',),
                        new TextSpan(text: '8. Calculate saline bolus (10 mL/kg)\n',),
                        new TextSpan(text: '9. Treat anemia\n',),
                        new TextSpan(text: '10. Calculate packed red blood cell transfusion volume (10 mL/kg)\n\n\n',),
                        new TextSpan(text: 'Note: ', style: new TextStyle(fontWeight: FontWeight.bold)),
                        new TextSpan(text: 'If time allows, perform type and cross match before administering blood. If emergently needed, give O negative packed red blood cells).',),
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
                            onPressed: null,
                            child: new Text('Customize My Plan', style: new TextStyle(color: Colors.black),),
                          ),
                        ],
                      ),
                      new Column(
                        children: <Widget>[
                          new RaisedButton(
                            onPressed: null,
                            child: new Text('Proceed >>', style: new TextStyle(color: Colors.black),),
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