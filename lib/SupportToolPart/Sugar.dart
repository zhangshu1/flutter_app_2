import 'package:flutter/material.dart';
import '../Material/MyListView.dart';
import 'SelectCalculators.dart';

class Sugar extends StatefulWidget {
  @override
  SugarState createState() => new SugarState();
}

class SugarState extends State<Sugar> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Sugar'),
      ),

      body: new Container(
        child: new MyListView(
          options: [
            new Option(new Icon(Icons.confirmation_number), 'Calculators', context, new MaterialPageRoute(builder: (_) => new Calculator())),
            new Option(new Icon(Icons.compare_arrows), 'Convertors', context, null),
            new Option(new Icon(Icons.local_hospital), 'Risks & Treatment', context, null),
            new Option(new Icon(Icons.disc_full), 'Quick Slides', context, null),
            new Option(new Icon(Icons.card_membership), 'Quick Cards', context, null),
            new Option(new Icon(Icons.book), 'Educational Material', context, null),
          ],
        ),
      ),
    );
  }
}