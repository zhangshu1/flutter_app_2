import 'package:flutter/material.dart';

import '../Material/all.dart';
import '../Material/globals.dart' as globals;

//void main() => runApp(
//  new MaterialApp(
//    title: 'Classify Infants',
//    home: new ClassifyInfants(),
//  ),
//);

class ClassifyInfants extends StatefulWidget {
  @override
  ClassifyInfantsState createState() => new ClassifyInfantsState();
}

class ClassifyInfantsState extends State<ClassifyInfants> {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Classify Infants', textScaleFactor: globals.textScaleFactor),
      ),

      body: new Container(
        padding: new EdgeInsets.symmetric(horizontal: 30.0),
        child: new Form(
          child: new Column(
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Height',
                ),
              ),

              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Weight',
                ),
              ),

              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Head Circ.',
                ),
              ),

              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Gest. Age',
                ),
              ),

              new Container(
                margin: new EdgeInsets.all(30.0),
                padding: new EdgeInsets.symmetric(horizontal: 60.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new RaisedButton(
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (_) => new Calculations(),));},
                        child: new Text('Classify', textScaleFactor: globals.textScaleFactor),
                      ),
                    ),
                    new Container(width: 20.0,),
                    new Icon(Icons.help, color: Colors.blue,),
                  ],
                ),
              ),

              new Container(
                padding: new EdgeInsets.symmetric(horizontal: 90.0),
                child: new Row(
                  children: <Widget>[
                    new Icon(Icons.warning, color: Colors.red,),
                    new Expanded(child: new Text('The Infant is LGA', textScaleFactor: globals.textScaleFactor)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}