import 'package:flutter/material.dart';

import '../Material/MenuDrawer.dart';

//void main() => runApp(
//  new MaterialApp(
//    title: 'PSSAT Form Menu',
//    home: new PssatFormMenu(),
//  )
//);

class PssatFormMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(child: new MenuDrawer()),

      appBar: new AppBar(
        title: new Text(
            "PSSAT Form Menu", style: new TextStyle(color: Colors.black),
            textAlign: TextAlign.left),
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
                      child: new Text("Patient Information",
                          style: new TextStyle(
                              color: Colors.black, fontSize: 20.0)),
                      onPressed: () {Navigator.of(context).pushNamed('/PssatForm/PatientInfo');},
                    )
                ),

                new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                      child: new Text("Time A", style: new TextStyle(
                          color: Colors.black, fontSize: 20.0)),
                      onPressed: () {Navigator.of(context).pushNamed('/PssatForm/TimeA');},
                    )
                ),

                new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                      child: new Text("Time B", style: new TextStyle(
                          color: Colors.black, fontSize: 20.0)),
                      onPressed: () {Navigator.of(context).pushNamed('/PssatForm/TimeB');},
                    )
                ),

                new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                      child: new Text("Time C", style: new TextStyle(
                          color: Colors.black, fontSize: 20.0)),
                      onPressed: () {Navigator.of(context).pushNamed('/PssatForm/TimeC');},
                    )
                ),

                new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                      child: new Text("Specific Interventions",
                          style: new TextStyle(
                              color: Colors.black, fontSize: 20.0)),
                      onPressed: () {Navigator.of(context).pushNamed('/PssatForm/Interventions');},
                    )
                ),

                new Container(
                    margin: new EdgeInsets.only(bottom: 1.0),
                    height: 50.0,
                    child: new RaisedButton(
                      child: new Text("Self Evaluation Questions",
                          style: new TextStyle(
                              color: Colors.black, fontSize: 20.0)),
                      onPressed: () {Navigator.of(context).pushNamed('/PssatForm/SelfEvaluation');},
                    )
                ),

              ],
            ),
          )
      ),
    );
  }
}