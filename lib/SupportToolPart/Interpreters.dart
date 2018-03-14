import 'package:flutter/material.dart';

import '../Material/all.dart';
import '../Material/globals.dart' as globals;

var imageInterpreter = new ZoomableImage(new AssetImage('images/interpreter.jpg'), scale: 16.0, backgroundColor: Colors.grey,);

class Interpreter extends StatefulWidget {

  @override
  InterpreterState createState() => new InterpreterState();
}

class InterpreterState extends State<Interpreter> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Interpreters', textScaleFactor: globals.textScaleFactor,),
      ),

      body: new Container(
        child: imageInterpreter,
      ),
    );
  }
}