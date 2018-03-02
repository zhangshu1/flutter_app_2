import 'package:flutter/material.dart';

var imageInterpreter = new Image(image: new AssetImage('images/interpreter.jpg'));

class Interpreter extends StatefulWidget {

  @override
  InterpreterState createState() => new InterpreterState();
}

class InterpreterState extends State<Interpreter> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Interpreters'),
      ),

      body: new Container(
        child: imageInterpreter,
      ),
    );
  }
}