import 'package:flutter/material.dart';
import '../Material/MyDropDownButton.dart';

class HeparinSafety extends StatefulWidget {
  
  @override
  HeparinSafetyState createState() => new HeparinSafetyState();
}

class HeparinSafetyState extends State<HeparinSafety> {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('HeparinSafety'),
      ),

      body: new Container(
        padding: new EdgeInsets.all(30.0),
        child: new Column(
          children: <Widget>[
            new Form(
              child: new Column(
                children: <Widget>[
                  new MyDropDownItem(new MyDropDownButton('Desired Dose',  const ['Option1', 'Option2', 'Option3'])),
                  new MyDropDownItem(new MyDropDownButton('IV Solution.',  const ['Option1', 'Option2', 'Option3'])),
                  new Container(
                    padding: new EdgeInsets.symmetric(horizontal: 100.0),
                    child: new Row(
                      children: <Widget>[
                        new RaisedButton(
                          onPressed: null,
                          child: new Text('Calculate'),
                        ),
                        new Icon(Icons.help, color: Colors.blue,),
                      ],
                    ),
                  ),
                  
                  new Container(
                    padding: new EdgeInsets.all(20.0),
                    child: new Text('The Dose to draw up 0.25ml = 250 unit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}