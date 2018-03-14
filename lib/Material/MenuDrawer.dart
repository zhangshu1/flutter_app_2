import 'package:flutter/material.dart';

import 'globals.dart' as globals;

class MenuDrawer extends StatefulWidget {
  @override
  MenuDrawerState createState() => new MenuDrawerState();
}

class MenuDrawerState extends State<MenuDrawer> {
//  const MenuDrawer({
//    Key key,
//    this.useLightTheme,
//    @required this.onThemeChanged,
//    this.textScaleFactor,
//    this.onTextScaleFactorChanged,
//  }) : assert(onThemeChanged != null),
//        super(key: key);
//
//  final bool useLightTheme;
//  final ValueChanged<bool> onThemeChanged;
//
//  final double textScaleFactor;
//  final ValueChanged<double> onTextScaleFactorChanged;

  @override
  Widget build(BuildContext context) {
//    final ThemeData themeData = Theme.of(context);
//    final TextStyle aboutTextStyle = themeData.textTheme.body2;
//    final TextStyle linkStyle = themeData.textTheme.body2.copyWith(color: themeData.accentColor);
//
//    final Widget lightThemeItem = new RadioListTile<bool>(
////      secondary: const Icon(Icons.brightness_5),
//      title: const Text('Light'),
//      value: true,
//      groupValue: useLightTheme,
//      onChanged: onThemeChanged,
//      selected: useLightTheme,
//    );
//
//    final Widget darkThemeItem = new RadioListTile<bool>(
////      secondary: const Icon(Icons.brightness_7),
//      title: const Text('Dark'),
//      value: false,
//      groupValue: useLightTheme,
//      onChanged: onThemeChanged,
//      selected: !useLightTheme,
//    );
//
//    final List<Widget> textSizeItems = <Widget>[];
//    final Map<double, String> textSizes = <double, String>{
//      null: 'System Default',
//      1.0: 'Normal',
//      2.0: 'Large',
//    };
//    for (double size in textSizes.keys) {
//      textSizeItems.add(new RadioListTile<double>(
//        secondary: const Icon(Icons.text_fields),
//        title: new Text(textSizes[size]),
//        value: size,
//        groupValue: textScaleFactor,
//        onChanged: onTextScaleFactorChanged,
//        selected: textScaleFactor == size,
//      ));
//    }
//
//    final List<Widget> allDrawerItems = <Widget>[
//      new MenuDrawerHeader(light: useLightTheme),
//      lightThemeItem,
//      darkThemeItem,
//      const Divider(),
//    ];
//
//    allDrawerItems.addAll(textSizeItems);

//    final List<Widget> funtionItems = <Widget>[
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
                    child: new Text(' Search Patient', textScaleFactor: globals.textScaleFactor, style: new TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left),
                  ),
                  alignment: Alignment.centerLeft,
                  padding: new EdgeInsets.all(1.0),
                ),

                new Container(
                  child: new FlatButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "/LogIn");
                      },
                      //TODO: Go back to login page (main.dart) if log out
                      child: new Text(' Log Out', textScaleFactor: globals.textScaleFactor, style: new TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left)
                  ),
                  alignment: Alignment.centerLeft,
                  padding: new EdgeInsets.all(1.0),
                ),
              ]
          ),
        ),

        new ExpansionTile(
          title: new Text('Text Size', textScaleFactor: globals.textScaleFactor,
              style: new TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
          backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
          children: <Widget>[
            new Row(
              children: <Widget>[
                const SizedBox(width: 5.0,),
                new Radio<double>(
                  value: 0.8,
                  groupValue: globals.textScaleFactor,
                  onChanged: _applyScaleFactor,
                ),
                new Container(child: new Text('Small', textScaleFactor: globals.textScaleFactor),),
              ],
            ),

            new Row(
              children: <Widget>[
                const SizedBox(width: 5.0,),
                new Radio<double>(
                  value: 1.0,
                  groupValue: globals.textScaleFactor,
                  onChanged: _applyScaleFactor,

                ),
                new Container(child: new Text('Normal', textScaleFactor: globals.textScaleFactor),),
              ],
            ),

            new Row(
              children: <Widget>[
                const SizedBox(width: 5.0,),
                new Radio<double>(
                  value: 1.8,
                  groupValue: globals.textScaleFactor,
                  onChanged: _applyScaleFactor,
                ),
                new Container(child: new Text('Large', textScaleFactor: globals.textScaleFactor),),
              ],
            ),
          ],
        ),

        const Divider(),

        new ListTile(
          title: new Text('Current State', textScaleFactor: globals.textScaleFactor),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/CurrentState');
          },
        ),

        new ListTile(
          title: new Text('Risk Monitor', textScaleFactor: globals.textScaleFactor),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/RiskMonitor');
          },
        ),

        new ListTile(
          title: new Text('Activity Monitor', textScaleFactor: globals.textScaleFactor),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/ActivityMonitor');
          },
        ),

        new ExpansionTile(
          title: new Text('Risk Hisotry', textScaleFactor: globals.textScaleFactor, style: new TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w500)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            new ListTile(
              title: new Text('    All', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/RiskHistory/All');
              },
            ),
            new ListTile(
              title: new Text('    Hypoglycemia', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(
                    '/RiskHistory/Hypoglycemia');
              },
            ),
            new ListTile(
              title: new Text('    Pneumothorax', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(
                    '/RiskHistory/Pneumothorax');
              },
            ),
            new ListTile(
              title: new Text('    Hypothermia', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(
                    '/RiskHistory/Hypothermia');
              },
            )
          ],
        ),

        new ExpansionTile(
          title: new Text('Lab Work', textScaleFactor: globals.textScaleFactor, style: new TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w500)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            new ListTile(
              title: new Text('    View Recommended Test', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/LabWork/ViewRecTest');
              },
            ),
            new ListTile(
              title: new Text('    Order Additional Test', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(
                    '/LabWork/OrderAdditionalTest');
              },
            ),
            new ListTile(
              title: new Text('    Enter Patient Report', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(
                    '/LabWork/EnterPatientReports');
              },
            ),
            new ListTile(
              title: new Text('    View Patient Report', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(
                    '/LabWork/ViewPatientReports');
              },
            ),
            new ListTile(
              title: new Text('Enter Recommended Medication', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(
                    '/LabWork/ViewRecMedications');
              },
            )
          ],
        ),

        new ExpansionTile(
          title: new Text('PSSAT Form', textScaleFactor: globals.textScaleFactor, style: new TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w500)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            new ListTile(
              title: new Text('    PSSAT Form Direction', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatFormDir');
              },
            ),
            new ListTile(
              title: new Text('    Patient Information', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatForm/PatientInfo');
              },
            ),
            new ListTile(
              title: new Text('    Time A', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatForm/TimeA');
              },
            ),
            new ListTile(
              title: new Text('    Time B', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatForm/TimeB');
              },
            ),
            new ListTile(
              title: new Text('    Time C', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/PssatForm/TimeC');
              },
            ),
            new ListTile(
              title: new Text('    Specific Interventions', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(
                    '/PssatForm/Interventions');
              },),
            new ListTile(
              title: new Text('    Self Evaluation Questions', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(
                    '/PssatForm/SelfEvaluation');
              },)
          ],
        ),

        new ExpansionTile(
          title: new Text('S.T.A.B.L.E', textScaleFactor: globals.textScaleFactor, style: new TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w500)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            new ListTile(
              title: new Text('    Sugar', textScaleFactor: globals.textScaleFactor),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/Stable/Sugar');
              },
            ),
            new ListTile(
              title: new Text('    Temperature', textScaleFactor: globals.textScaleFactor),
            ),
            new ListTile(
              title: new Text('    Airway', textScaleFactor: globals.textScaleFactor),
            ),
            new ListTile(
              title: new Text('    Blood Pressure', textScaleFactor: globals.textScaleFactor),
            ),
            new ListTile(
              title: new Text('    Lab Work', textScaleFactor: globals.textScaleFactor),
            ),
            new ListTile(
              title: new Text('    Emotional Support', textScaleFactor: globals.textScaleFactor),
            )
          ],
        ),

      ],
    );
  }

  void _applyScaleFactor (double val){
    setState((){
      globals.textScaleFactor = val;
    });
  }
}

//class MenuDrawerHeader extends StatefulWidget {
//  const MenuDrawerHeader({ Key key, this.light }) : super(key: key);
//
//  final bool light;
//
//  @override
//  _MenuDrawerHeaderState createState() => new _MenuDrawerHeaderState();
//}
//
//class _MenuDrawerHeaderState extends State<MenuDrawerHeader> {
//  bool _logoHasName = true;
//  bool _logoHorizontal = true;
//  MaterialColor _logoColor = Colors.blue;
//
//  @override
//  Widget build(BuildContext context) {
//    final double systemTopPadding = MediaQuery.of(context).padding.top;
//
//    return new Semantics(
//      label: 'Flutter',
//      child: new DrawerHeader(
//        decoration: new FlutterLogoDecoration(
//          margin: new EdgeInsets.fromLTRB(12.0, 12.0 + systemTopPadding, 12.0, 12.0),
//          textColor: widget.light ? const Color(0xFF616161) : const Color(0xFF9E9E9E),
//        ),
//        child: new GestureDetector(
//            onLongPress: () {
//              setState(() {
//                _logoHorizontal = !_logoHorizontal;
//                if (!_logoHasName)
//                  _logoHasName = true;
//              });
//            },
//            onTap: () {
//              setState(() {
//                _logoHasName = !_logoHasName;
//              });
//            },
//            onDoubleTap: () {
//              setState(() {
//                final List<MaterialColor> options = <MaterialColor>[];
//                if (_logoColor != Colors.blue)
//                  options.addAll(<MaterialColor>[Colors.blue, Colors.blue, Colors.blue, Colors.blue, Colors.blue, Colors.blue, Colors.blue]);
//                if (_logoColor != Colors.amber)
//                  options.addAll(<MaterialColor>[Colors.amber, Colors.amber, Colors.amber]);
//                if (_logoColor != Colors.red)
//                  options.addAll(<MaterialColor>[Colors.red, Colors.red, Colors.red]);
//                if (_logoColor != Colors.indigo)
//                  options.addAll(<MaterialColor>[Colors.indigo, Colors.indigo, Colors.indigo]);
//                if (_logoColor != Colors.pink)
//                  options.addAll(<MaterialColor>[Colors.pink]);
//                if (_logoColor != Colors.purple)
//                  options.addAll(<MaterialColor>[Colors.purple]);
//                if (_logoColor != Colors.cyan)
//                  options.addAll(<MaterialColor>[Colors.cyan]);
//              });
//            }
//        ),
//      ),
//    );
//  }
//
//
//}
