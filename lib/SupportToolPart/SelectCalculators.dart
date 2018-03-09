import 'package:flutter/material.dart';
import '../Material/MyListView.dart';
import 'ClassifyInfants.dart';
import 'HourlyFluidRate.dart';
import 'HeparinSafety.dart';
import 'BlankPage.dart';

class Calculator extends StatefulWidget {
  @override
  CalculatorState createState() => new CalculatorState();
}

class CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Select Calculators'),
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