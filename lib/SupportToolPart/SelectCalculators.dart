import 'package:flutter/material.dart';
import '../Material/MyListView.dart';

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
            new Option(new Icon(Icons.table_chart), 'Classify Infants', context, null),
            new Option(new Icon(Icons.rate_review), 'Hourly Fluid Rate', context, null),
            new Option(new Icon(Icons.confirmation_number), 'Bolus Calculator', context, null),
            new Option(new Icon(Icons.data_usage), 'Heparin Safety', context, null),
          ],
        ),
      ),
    );
  }
}