import 'package:flutter/material.dart';
import '../Material/globals.dart' as globals;

class Blank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('A Blank Page', textScaleFactor: globals.textScaleFactor),
      ),
      
      body: new Text('To be continued', textScaleFactor: globals.textScaleFactor),
    );
  }
}