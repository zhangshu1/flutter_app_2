import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(    //TODO: scroll panel
      children: <Widget>[
        //DrawerHeader for future use (dashboard, login page etc.)
        new DrawerHeader(
          child: new Column(
            children: <Widget>[
              new Container(
                  child: new FlatButton(
                    onPressed: null, //TODO: add links for all onTaps
                    child: new Text('Log In', style: new TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w500), textAlign: TextAlign.left),
                  ),
                  alignment: Alignment.centerLeft,
                  padding: new EdgeInsets.all(1.0),
              ),

              new Container(
                  child: new FlatButton(
                      onPressed: null, //TODO: user can search patient after logging in, if not can only see FAQs etc.
                      child: new Text(' Search Patient', style: new TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w500), textAlign: TextAlign.left),
                  ),
                  alignment: Alignment.centerLeft,
                  padding: new EdgeInsets.all(1.0),
              ),

              new Container(
                  child: new FlatButton(
                      onPressed: null, //TODO: Go back to login page (main.dart) if log out
                      child: new Text(' Log Out', style: new TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w500), textAlign: TextAlign.left)
                  ),
                  alignment: Alignment.centerLeft,
                  padding: new EdgeInsets.all(1.0),
              ),
            ],
          ),
        ),

        //current state
        const ListTile(
          title: const Text('Current State'),
//          onTap: () => Navigator.pushNamed(context, "/CurrentState"),
//          onTap: Navigator.pop(context),
//          onTap: Navigator.popAndPushNamed(context, '/CurrentState')
        ),

        //risk monitor
        new ExpansionTile(
            title: new Text('Risk Monitor', style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500)),
            backgroundColor: Theme
                .of(context)
                .accentColor
                .withOpacity(0.025),
            children: const <Widget>[
              const ListTile(
                title: const Text('    Hypotension'),
//                  onTap: (){},
              ),
              const ListTile(
                title: const Text('    Hypothermia'),
//                      onTap: ,
              ),
              const ListTile(
                title: const Text('    Pneumothorax'),
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
          title: new Text('Risk Hisotry', style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            const ListTile(
              title: const Text('    All'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('    Hypoglycemia'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('    Pneumothorax'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('    Hypothermia'),
//                      onTap: ,
            )
          ],
        ),

        //lab work
        new ExpansionTile(
          title: new Text('Lab Work', style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            const ListTile(
              title: const Text('    View Recommended Test'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('    Order Additional Test'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('    Enter Patient Report'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('    View Patient Report'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('Enter Recommended Medication'),
//                      onTap: ,
            )
          ],
        ),

        //PSSAT form
        new ExpansionTile(
          title: new Text('PSSAT Form', style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            const ListTile(
              title: const Text('    Patient Information'),
        //                      onTap: ,
            ),
            const ListTile(
              title: const Text('    Time A'),
        //                      onTap: ,
            ),
            const ListTile(
              title: const Text('    Time B'),
        //                      onTap: ,
            ),
            const ListTile(
              title: const Text('    Time C'),
        //                      onTap: ,
            ),
            const ListTile(
              title: const Text('    Specific Interventions'),
        //                      onTap: ,
            ),
            const ListTile(
              title: const Text('    Self Evaluation Q'),
        //                      onTap: ,
            )
          ],
        ),

        //STABLE
        new ExpansionTile(
          title: new Text('S.T.A.B.L.E', style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            const ListTile(
              title: const Text('    Sugar'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('    Temperature'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('    Airway'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('    Blood Pressure'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('    Lab Work'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('    Emotional Support'),
//                      onTap: ,
            )
          ],
        ),

      ],
    );
  }
}