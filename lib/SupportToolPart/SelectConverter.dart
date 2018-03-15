import 'package:flutter/material.dart';
import '../Demo/MyListView.dart';
import '../Material/globals.dart' as globals;

class SelectConverter extends StatefulWidget {

  @override
  SelectConverterState createState() => new SelectConverterState();
}

class SelectConverterState extends State<SelectConverter> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Select Converter', textScaleFactor: globals.textScaleFactor),
      ),

      body: new Container(
        child: new MyListView(
          options: [
            new Option(new Icon(Icons.fitness_center), 'Weight', context, new MaterialPageRoute(builder: (_) => null)),
            new Option(new Icon(Icons.devices_other), 'Temperature', context, new MaterialPageRoute(builder: (_) => null)),
          ],
        ),
      ),
    );
  }
}