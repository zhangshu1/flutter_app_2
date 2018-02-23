import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView( //TODO: scroll panel
      children: <Widget>[
        //DrawerHeader for future use (dashboard, login page etc.)
        new DrawerHeader(
          child: new Column(
            children: <Widget>[
              new Container(
                child: new FlatButton(
                  onPressed: null, //TODO: add links for all onTaps
                  child: new Text('Log In', style: new TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500), textAlign: TextAlign.left),
                ),
                alignment: Alignment.centerLeft,
                padding: new EdgeInsets.all(1.0),
              ),

              new Container(
                child: new FlatButton(
                  onPressed: null,
                  //TODO: user can search patient after logging in, if not can only see FAQs etc.
                  child: new Text(' Search Patient', style: new TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500), textAlign: TextAlign.left),
                ),
                alignment: Alignment.centerLeft,
                padding: new EdgeInsets.all(1.0),
              ),

              new Container(
                child: new FlatButton(
                    onPressed: null,
                    //TODO: Go back to login page (main.dart) if log out
                    child: new Text(' Log Out', style: new TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500), textAlign: TextAlign.left)
                ),
                alignment: Alignment.centerLeft,
                padding: new EdgeInsets.all(1.0),
              ),
            ],
          ),
        ),

        //current state
        new ListTile(
          title: const Text('Current State'),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/CurrentState');
          },
//          onTap: () => Navigator.pushNamed(context, "/CurrentState"),
//          onTap: Navigator.pop(context),
//          onTap: Navigator.popAndPushNamed(context, '/CurrentState')
        ),

        //risk monitor
        new ExpansionTile(
            title: new Text('Risk Monitor', style: new TextStyle(
                fontSize: 14.0, fontWeight: FontWeight.w500)),
            backgroundColor: Theme
                .of(context)
                .accentColor
                .withOpacity(0.025),
            children: <Widget>[
              new ListTile( //TODO: links
                title: const Text('    Hypotension'),
//                onTap: () { Navigator.of(context).pushNamed('/CurrentState'); },
              ),
              new ListTile(
                title: const Text('    Hypothermia'),
//                onTap: () { Navigator.of(context).pushNamed('/CurrentState'); },
              ),
              new ListTile(
                title: const Text('    Pneumothorax'),
//                onTap: () { Navigator.of(context).pushNamed('/CurrentState'); },
              )
            ]
        ),

        //activity monitor
        new ListTile(
          title: const Text('Activity Monitor'),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/ActivityMonitor');
          },
        ),

        //risk history
        new ExpansionTile(
          title: new Text('Risk Hisotry', style: new TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w500)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            new ListTile(
              title: const Text('    All'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/RiskHistory/All');
              },
            ),
            new ListTile(
              title: const Text('    Hypoglycemia'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/RiskHistory/Hypoglycemia');
              },
            ),
            new ListTile(
              title: const Text('    Pneumothorax'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/RiskHistory/Pneumothorax');
              },
            ),
            new ListTile(
              title: const Text('    Hypothermia'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/RiskHistory/Hypothermia');
              },
            )
          ],
        ),

        //lab work
        new ExpansionTile(
          title: new Text('Lab Work', style: new TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w500)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            new ListTile(
              title: const Text('    View Recommended Test'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/LabWork/ViewRecTest');
              },
            ),
            new ListTile(
              title: const Text('    Order Additional Test'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/LabWork/OrderAdditionalTest');
              },
            ),
            new ListTile(
              title: const Text('    Enter Patient Report'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/LabWork/EnterPatientReports');
              },
            ),
            new ListTile(
              title: const Text('    View Patient Report'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/LabWork/ViewPatientReports');
              },
            ),
            new ListTile(
              title: const Text('Enter Recommended Medication'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/LabWork/ViewRecMedications');
              },
            )
          ],
        ),

        //PSSAT form
        new ExpansionTile(
          title: new Text('PSSAT Form', style: new TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w500)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            new ListTile(
              title: const Text('    PSSAT Form Direction'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatFormDir');
              },
            ),
            new ListTile(
              title: const Text('    Patient Information'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatForm/PatientInfo');
              },
            ),
            new ListTile(
              title: const Text('    Time A'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatForm/TimeA');
              },
            ),
            new ListTile(
              title: const Text('    Time B'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatForm/TimeB');
              },
            ),
            new ListTile(
              title: const Text('    Time C'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatForm/TimeC');
              },
            ),
            new ListTile(
              title: const Text('    Specific Interventions'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatForm/Interventions');
              },),
            new ListTile(
              title: const Text('    Self Evaluation Questions'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatForm/SelfEvaluation');
              },)
          ],
        ),

        //STABLE
        new ExpansionTile(
          title: new Text('S.T.A.B.L.E', style: new TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w500)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            new ListTile(
              title: const Text('    Sugar'),
//                      onTap: ,
            ),
            new ListTile(
              title: const Text('    Temperature'),
//                      onTap: ,
            ),
            new ListTile(
              title: const Text('    Airway'),
//                      onTap: ,
            ),
            new ListTile(
              title: const Text('    Blood Pressure'),
//                      onTap: ,
            ),
            new ListTile(
              title: const Text('    Lab Work'),
//                      onTap: ,
            ),
            new ListTile(
              title: const Text('    Emotional Support'),
//                      onTap: ,
            )
          ],
        ),

      ],
    );
  }
}