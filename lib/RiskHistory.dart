import 'package:flutter/material.dart';

import 'RiskHistory_All.dart';
import 'RiskHistory_Hypoglycemia.dart';
import 'RiskHistory_Pneumothorax.dart';
import 'RiskHistory_Hypothermia.dart';

//void main() => runApp(
//  new MaterialApp(
//    title: 'Risk History Page',
//    home: new RiskHistory(),
//    routes: <String, WidgetBuilder>{
//      '/RiskHistory/All': (BuildContext context) => new RiskHistory_All(),
//      '/RiskHistory/Hypoglycemia': (BuildContext context) => new RiskHistory_Hypoglycemia(),
//      '/RiskHistory/Pneumothorax': (BuildContext context) => new RiskHistory_Pneumothorax(),
//      '/RiskHistory/Hypothermia': (BuildContext context) => new RiskHistory_Hypothermia(),
//    },
//  )
//);

class RiskHistory extends StatelessWidget{
  @override
  Widget build(BuildContext context){
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
        title: new Text("Risk History", style: new TextStyle(color: Colors.black), textAlign: TextAlign.left),
      ),

      body: new Container(
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Container(
                margin: new EdgeInsets.only(bottom: 1.0),
                height: 50.0,
                child: new RaisedButton(
                  child: new Text("All", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
//                  onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/All");}
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (_) => new RiskHistory_All(),
                        )
                    );
                  }
                )
              ),
              new Container(
                margin: new EdgeInsets.only(bottom: 1.0),
                height: 50.0,
                child: new RaisedButton(
                  child: new Text("Hypoglycemia", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
//                    onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/Hypoglycemia");}
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (_) => new RiskHistory_Hypoglycemia(),
                          )
                      );
                    }
                )
              ),
              new Container(
                margin: new EdgeInsets.only(bottom: 1.0),
                height: 50.0,
                child: new RaisedButton(
                  child: new Text("Pneumothorax", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
//                  onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/Pneumothorax");}
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (_) => new RiskHistory_Pneumothorax(),
                      )
                    );
                  }
                )
              ),
              new Container(
                margin: new EdgeInsets.only(bottom: 1.0),
                height: 50.0,
                child: new RaisedButton(
                  child: new Text("Hypothermia", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
//                  onPressed: (){Navigator.of(context).pushNamed("/RiskHistory/Hypothermia");}
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (_) => new RiskHistory_Hypothermia(),
                      )
                    );
                  }
                )
              ),
            ],
          ),
        )
      ),
    );
  }
}