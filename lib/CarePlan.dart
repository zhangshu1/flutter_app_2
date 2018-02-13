import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: 'Care Plan Page',
  home: new CarePlan(),
));

class CarePlan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //DrawerHeader for future use (dashboard, login page etc.)
            new DrawerHeader(
              child: new Text('Menu Options'),
              padding: new EdgeInsets.only(left: 10.0, right: 50.0, top: 3.0, bottom: 0.0),
            ),

            //current state
            const ListTile(
              title: const Text('Current State'),
//                onTap: ,
            ),

            //risk monitor
            new ExpansionTile(
                title: const Text('Risk Monitor'),
                backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
                children: const <Widget>[
                  const ListTile(
                    title: const Text('Hypotension'),
//                      onTap: ,
                  ),
                  const ListTile(
                    title: const Text('Hypothermia'),
//                      onTap: ,
                  ),
                  const ListTile(
                    title: const Text('Pneumothorax'),
//                      onTap: ,
                  )
                ]
            ),

            //activity monitor
            const ListTile(
              title: const Text('Activity Monitor'),
//                onTap: ,
            ),

            //risk history
            new ExpansionTile(
              title: const Text('Risk Hisotry'),
              backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
              children: <Widget>[
                const ListTile(
                  title: const Text('All'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Hypoglycemia'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Pneumothorax'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Hypothermia'),
//                      onTap: ,
                )
              ],
            ),

            //lab work
            new ExpansionTile(
              title: new Text('Lab Work'),
              backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
              children: <Widget>[
                const ListTile(
                  title: const Text('View Recommended Test'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Order Additional Test'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Enter Patient Report'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('View Patient Report'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Enter Recommended Medication'),
//                      onTap: ,
                )
              ],
            ),

            //PSSAT form
            const ListTile(title: const Text('PSSAT Form')),

            //STABLE
            new ExpansionTile(
              title: new Text('S.T.A.B.L.E'),
              backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
              children: <Widget>[
                const ListTile(
                  title: const Text('Sugar'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Temperature'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Airway'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Blood Pressure'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Lab Work'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Emotional Support'),
//                      onTap: ,
                )
              ],
            )
          ],
        ),
      ),
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