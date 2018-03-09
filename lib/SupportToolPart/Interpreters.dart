import 'package:flutter/material.dart';
import '../Material/Zoomable_image.dart';

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
        title: new Text('Interpreters'),
      ),

      body: new Container(
        child: imageInterpreter,
      ),
    );
  }
}