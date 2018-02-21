import 'package:flutter/material.dart';

import 'MenuPage.dart';
import 'CurrentStatePart/CurrentState.dart';
import 'RiskMonitorPart/RiskMonitor.dart';
import 'ActivityMonitorPart/ActivityMonitor.dart';
import 'RiskHistoryPart/RiskHistory.dart';
import 'RiskHistoryPart/RiskHistory_All.dart';
import 'RiskHistoryPart/RiskHistory_Hypoglycemia.dart';
import 'RiskHistoryPart/RiskHistory_Pneumothorax.dart';
import 'RiskHistoryPart/RiskHistory_Hypothermia.dart';
import 'LabWorkPart/LabWork.dart';
//import 'PssatForm/PssatForm.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Menu Page',
      home: new MenuPage(),
//      home: new LogIn(),
      routes: <String, WidgetBuilder>{
        //home page is automatically defiend as:
        //"/": (BuildContext context) => new MenuPage(),
        "/CurrentState": (BuildContext context) => new CurrentState(),
        "/RiskMonitor": (BuildContext context) => new RiskMonitor(),
        "/ActivityMonitor": (BuildContext context) => new DefaultTabController(length: choices.length, child: new ActivityMonitor()),
        "/RiskHistory": (BuildContext context) => new RiskHistory(),
        "/LabWork": (BuildContext context) => new LabWork(),
//        "/PSSATForm": (BuildContext context) => new PSSATForm(),
        "/RiskHistory_All": (BuildContext context) => new RiskHistory_All(),
        "/RiskHistory_Hypoglycemia": (BuildContext context) => new RiskHistory_Hypoglycemia(),
        "/RiskHistory_Pneumothorax": (BuildContext context) => new RiskHistory_Pneumothorax(),
        "/RiskHistory_Hypothermia": (BuildContext context) => new RiskHistory_Hypothermia()
      }
    )
  );
}

class LogIn extends StatelessWidget {   //TODO: a new login page before home page
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Options', textAlign: TextAlign.left, style: new TextStyle(color: Colors.white)),
    ),

      body: new Container(
        //TODO: add icon
      )
    );
  }
}