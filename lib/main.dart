import 'package:flutter/material.dart';

import 'Material/all.dart';
import 'Material/globals.dart' as globals;

void main() {
  runApp(
    new MaterialApp(
      color: Colors.black,
      title: 'Menu Page',
      home: new LogIn(),
      theme: new ThemeData(
        textTheme: new TextTheme(body1: new TextStyle(fontSize: 18.0, color: Colors.black)),
        brightness: globals.useLightTheme ? Brightness.light : Brightness.dark,
        inputDecorationTheme: new InputDecorationTheme(hintStyle: new TextStyle(color: Colors.black)),
      ),

      routes: <String, WidgetBuilder>{
        //home page is automatically defined as:
        //"/": (BuildContext context) => new MenuPage(),
        "/LogIn": (_) => new LogIn(),

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

        "/Stable": (BuildContext context) => new SelectOptions(),
        "/Stable/Sugar": (BuildContext context) => new Sugar(),
      }
    )
  );
}