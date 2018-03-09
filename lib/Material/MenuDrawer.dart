import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        //DrawerHeader for future use (dashboard, login page etc.)
        new DrawerHeader(
          child: new Column(
            children: <Widget>[
              new SizedBox(height: 20.0,),
              new Container(
                child: new FlatButton(
                  onPressed: null,
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
                    onPressed: (){Navigator.pushReplacementNamed(context, "/LogIn");},
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
          title: const Text('Current State', style: const TextStyle(color: Colors.black)),
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
                fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black)),
            backgroundColor: Theme
                .of(context)
                .accentColor
                .withOpacity(0.025),
            children: <Widget>[
              new ListTile( //TODO: links
                title: const Text('    Hypotension', style: const TextStyle(color: Colors.black)),
//                onTap: () { Navigator.of(context).pushNamed('/CurrentState'); },
              ),
              new ListTile(
                title: const Text('    Hypothermia', style: const TextStyle(color: Colors.black)),
//                onTap: () { Navigator.of(context).pushNamed('/CurrentState'); },
              ),
              new ListTile(
                title: const Text('    Pneumothorax', style: const TextStyle(color: Colors.black)),
//                onTap: () { Navigator.of(context).pushNamed('/CurrentState'); },
              )
            ]
        ),

        //activity monitor
        new ListTile(
          title: const Text('Activity Monitor', style: const TextStyle(color: Colors.black)),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/ActivityMonitor');
          },
        ),

        //risk history
        new ExpansionTile(
          title: new Text('Risk Hisotry', style: new TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            new ListTile(
              title: const Text('    All', style: const TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/RiskHistory/All');
              },
            ),
            new ListTile(
              title: const Text('    Hypoglycemia', style: const TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/RiskHistory/Hypoglycemia');
              },
            ),
            new ListTile(
              title: const Text('    Pneumothorax', style: const TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/RiskHistory/Pneumothorax');
              },
            ),
            new ListTile(
              title: const Text('    Hypothermia', style: const TextStyle(color: Colors.black)),
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
              fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            new ListTile(
              title: const Text('    View Recommended Test', style: const TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/LabWork/ViewRecTest');
              },
            ),
            new ListTile(
              title: const Text('    Order Additional Test', style: const TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/LabWork/OrderAdditionalTest');
              },
            ),
            new ListTile(
              title: const Text('    Enter Patient Report', style: const TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/LabWork/EnterPatientReports');
              },
            ),
            new ListTile(
              title: const Text('    View Patient Report', style: const TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/LabWork/ViewPatientReports');
              },
            ),
            new ListTile(
              title: const Text('Enter Recommended Medication', style: const TextStyle(color: Colors.black)),
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
              fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            new ListTile(
              title: const Text('    PSSAT Form Direction', style: const TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatFormDir');
              },
            ),
            new ListTile(
              title: const Text('    Patient Information', style: const TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatForm/PatientInfo');
              },
            ),
            new ListTile(
              title: const Text('    Time A', style: const TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatForm/TimeA');
              },
            ),
            new ListTile(
              title: const Text('    Time B', style: const TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatForm/TimeB');
              },
            ),
            new ListTile(
              title: const Text('    Time C', style: const TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatForm/TimeC');
              },
            ),
            new ListTile(
              title: const Text('    Specific Interventions', style: const TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatForm/Interventions');
              },),
            new ListTile(
              title: const Text('    Self Evaluation Questions', style: const TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatForm/SelfEvaluation');
              },)
          ],
        ),

        //STABLE
        new ExpansionTile(
          title: new Text('S.T.A.B.L.E', style: new TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            new ListTile(
              title: const Text('    Sugar', style: const TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/Stable/Sugar');
              },
            ),
            new ListTile(
              title: const Text('    Temperature', style: const TextStyle(color: Colors.black)),
//                      onTap: ,
            ),
            new ListTile(
              title: const Text('    Airway', style: const TextStyle(color: Colors.black)),
//                      onTap: ,
            ),
            new ListTile(
              title: const Text('    Blood Pressure', style: const TextStyle(color: Colors.black)),
//                      onTap: ,
            ),
            new ListTile(
              title: const Text('    Lab Work', style: const TextStyle(color: Colors.black)),
//                      onTap: ,
            ),
            new ListTile(
              title: const Text('    Emotional Support', style: const TextStyle(color: Colors.black)),
//                      onTap: ,
            )
          ],
        ),

      ],
    );
  }
}