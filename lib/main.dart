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
import 'LabWorkPart/ViewRecTest.dart';
import 'LabWorkPart/OrderAdditionalTests.dart';
import 'LabWorkPart/EnterPatientReports.dart';
import 'LabWorkPart/ViewPatientReports.dart';
import 'LabWorkPart/ViewRecMedication.dart';
import 'PssatForm/PssatFormDir.dart';
import 'PssatForm/PssatFormMenu.dart';
import 'PssatForm/PatientInfo.dart';
import 'PssatForm/TimeA.dart';
import 'PssatForm/TimeB.dart';
import 'PssatForm/TimeC.dart';
import 'PssatForm/Interventions.dart';
import 'PssatForm/SelfEvaluation.dart';
import 'SupportToolPart/SelectModule.dart';
import 'SupportToolPart/Sugar.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Menu Page',
      home: new MenuPage(),
      theme: new ThemeData(textTheme: new TextTheme(body1: new TextStyle(fontSize: 18.0))),
//      home: new LogIn(),
      routes: <String, WidgetBuilder>{
        //home page is automatically defiend as:
        //"/": (BuildContext context) => new MenuPage(),
        "/CurrentState": (BuildContext context) => new CurrentState(),

        "/RiskMonitor": (BuildContext context) => new RiskMonitor(),

        "/ActivityMonitor": (BuildContext context) => new DefaultTabController(length: choices.length, child: new ActivityMonitor()),

        "/RiskHistory": (BuildContext context) => new RiskHistory(),
        "/RiskHistory/All": (BuildContext context) => new RiskHistory_All(),
        "/RiskHistory/Hypoglycemia": (BuildContext context) => new RiskHistory_Hypoglycemia(),
        "/RiskHistory/Pneumothorax": (BuildContext context) => new RiskHistory_Pneumothorax(),
        "/RiskHistory/Hypothermia": (BuildContext context) => new RiskHistory_Hypothermia(),

        "/LabWork": (BuildContext context) => new LabWork(),
        "/LabWork/ViewRecTest": (BuildContext context) => new ViewRecTest(),
        "/LabWork/OrderAdditionalTest": (BuildContext context) => new OrderAdditionalTests(),
        "/LabWork/EnterPatientReports": (BuildContext context) => new EnterPatientReports(),
        "/LabWork/ViewPatientReports": (BuildContext context) => new ViewPatientReports(),
        "/LabWork/ViewRecMedications": (BuildContext context) => new ViewRecMedications(),

        "/PssatFormDir": (BuildContext context) => new PssatFormDir(),
        "/PssatFormMenu": (BuildContext context) => new PssatFormMenu(),
        "/PssatForm/PatientInfo": (BuildContext context) => new PatientInfo(),
        "/PssatForm/TimeA": (BuildContext context) => new TimeA(),
        "/PssatForm/TimeB": (BuildContext context) => new TimeB(),
        "/PssatForm/TimeC": (BuildContext context) => new TimeC(),
        "/PssatForm/Interventions": (BuildContext context) => new Interventions(),
        "/PssatForm/SelfEvaluation": (BuildContext context) => new SelfEvaluation(),

        "/Stable": (BuildContext context) => new SelectModule(),
        "/Stable/Sugar": (BuildContext context) => new Sugar(),
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