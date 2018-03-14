import 'package:flutter/material.dart';
import '../Material/globals.dart' as globals;

class WeightConverter extends StatefulWidget{

  @override
  WeightConverterState createState() => new WeightConverterState();
}

class WeightConverterState extends State<WeightConverter> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Weight Converter', textScaleFactor: globals.textScaleFactor),
      ),

      body: new Container(
        child: new Column(
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}