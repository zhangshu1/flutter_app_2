import 'package:flutter/material.dart';
import '../Demo/MyListView.dart';
import '../Material/globals.dart' as globals;

class Risk extends StatefulWidget {

  @override
  RiskState createState() => new RiskState();
}

class RiskState extends State<Risk> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Risk', textScaleFactor: globals.textScaleFactor),
      ),

      body: new Container(
        child: new MyListView(
          options: [
            new Option(null, 'Hypoglycemia', context, new MaterialPageRoute(builder: (_) => null)), // To be implemented
          ],
        ),
      ),
    );
  }
}