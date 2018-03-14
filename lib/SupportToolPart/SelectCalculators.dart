import 'package:flutter/material.dart';
import 'package:flutter_app_2/Demo/MyListView.dart';

import '../Material/all.dart';
import '../Material/globals.dart' as globals;

class Calculator extends StatefulWidget {
  @override
  CalculatorState createState() => new CalculatorState();
}

class CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Select Calculators', textScaleFactor: globals.textScaleFactor),
      ),

      body: new Container(
        child: new MyListView(
          options: [
            new Option(new Icon(Icons.table_chart), 'Classify Infants', context, new MaterialPageRoute(builder: (_) => new ClassifyInfants(),)),
            new Option(new Icon(Icons.rate_review), 'Hourly Fluid Rate', context, new MaterialPageRoute(builder: (_) => new HourlyFluidRate(),)),
            new Option(new Icon(Icons.confirmation_number), 'Bolus Calculator', context, new MaterialPageRoute(builder: (_) => new Blank())),
            new Option(new Icon(Icons.data_usage), 'Heparin Safety', context, new MaterialPageRoute(builder: (_) => new HeparinSafety(),)),
          ],
        ),
      ),
    );
  }
}