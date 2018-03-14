import 'package:flutter/material.dart';

import '../Material/globals.dart' as globals;

class TemperatureConverter extends StatefulWidget {

  @override
  TemperatureConverterState createState() => new TemperatureConverterState();
}

class TemperatureConverterState extends State<TemperatureConverter> {
  final TextEditingController celsiusController = new TextEditingController();
  final TextEditingController fahrenheitController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Temperature', textScaleFactor: globals.textScaleFactor),
      ),

      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
          child: new Column(
            children: <Widget>[
              new Container(
                width: 300.0,
                height: 300.0,
                child: new Row(
                  children: <Widget>[
                    new TextField(
                      decoration: new InputDecoration(
                        labelText: 'Celsius',
                      ),
                      controller: celsiusController,
                    ),
                    new RaisedButton(
                      onPressed: (){},
                      child: new Text('Submit'),
                    ),
                  ],
                ),
              ),
              
              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Fahrenheit',
                ),
                controller: fahrenheitController,
              ),
              new Container(
                padding: new EdgeInsets.symmetric(vertical: 20.0),
                child: new RichText(
                  textScaleFactor: globals.textScaleFactor,
                  text: new TextSpan(
                    children: <TextSpan>[
                      new TextSpan(text: celsiusController.text, style: new TextStyle(color: Colors.black)),
                      new TextSpan(text: ' Celsius =', style: new TextStyle(color: Colors.black)),
                      new TextSpan(text: fahrenheitController.text, style: new TextStyle(color: Colors.black)),
                      new TextSpan(text: ' Fahrenheit', style: new TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(new MaterialApp(
  title: 'suibian',
  home: new TemperatureConverter(),
));