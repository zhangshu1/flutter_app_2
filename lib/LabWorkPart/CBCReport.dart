import 'package:flutter/material.dart';

import '../Material/MenuDrawer.dart';
import 'TestTube.dart';
import 'ManroeChart.dart';

//void main() => runApp(new MaterialApp(
//  title: 'View CBC Report',
//    home: new CBCReport(),
//));

class CBCReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    Decoration rowDeco = new Decoration();
    return new Scaffold(
        endDrawer: new Drawer(
        child: new MenuDrawer(),
    ),
    appBar: new AppBar(
//        leading: new IconButton(
//          icon: new Icon(Icons.arrow_drop_down_circle, size: 42.0, color: Colors.white,),
//          onPressed: null),
      title: new Text(
        'View CBC Report',
        style: Theme
            .of(context)
            .textTheme
            .display1
            .copyWith(color: Colors.white), textScaleFactor: 0.6,
      ),
    ),

      body: new Container(
        padding: new EdgeInsets.only(top: 40.0, left: 40.0, right: 40.0),
        child: new Column(
          children: <Widget>[
            new Container(
              child: new Row(
                children: <Widget>[
                  new Text('While Blood Cell Count(K/uL):', textAlign: TextAlign.left,),
                  new Expanded(child: new Text('14400', textAlign: TextAlign.right)),
                ],
              ),
              padding: new EdgeInsets.symmetric(vertical: 10.0),
              decoration: new BoxDecoration(
                border: new Border(bottom: new BorderSide(color: const Color(0x42000000), width: 1.0),)
              ),
            ),

            new Container(
              child: new Row(
                children: <Widget>[
                  new Text('Hgb (g/dL):', textAlign: TextAlign.left,),
                  new Expanded(child: new Text('889', textAlign: TextAlign.right,)),
                ],
              ),
              padding: new EdgeInsets.symmetric(vertical: 10.0),
              decoration: new BoxDecoration(
                  border: new Border(bottom: new BorderSide(color: const Color(0x42000000), width: 1.0),)
              ),
            ),

            new Container(
              child: new Row(
                children: <Widget>[
                  new Text('Hct (%):', textAlign: TextAlign.left,),
                  new Expanded(child: new Text('77', textAlign: TextAlign.right,)),
                ],
              ),
              padding: new EdgeInsets.symmetric(vertical: 10.0),
              decoration: new BoxDecoration(
                  border: new Border(bottom: new BorderSide(color: const Color(0x42000000), width: 1.0),)
              ),
            ),

            new Container(
              child: new Row(
                children: <Widget>[
                  new Text('Plts (%):', textAlign: TextAlign.left,),
                  new Expanded(child: new Text('77', textAlign: TextAlign.right,))
                ],
              ),
              padding: new EdgeInsets.symmetric(vertical: 10.0),
              decoration: new BoxDecoration(
                  border: new Border(bottom: new BorderSide(color: const Color(0x42000000), width: 1.0),)
              ),
            ),

            new Container(
              child: new Row(
                children: <Widget>[
                  new Text('Segmented Neutrophils (%):', textAlign: TextAlign.left,),
                  new Expanded(child: new Text('77', textAlign: TextAlign.right,))
                ],
              ),
              padding: new EdgeInsets.symmetric(vertical: 10.0),
              decoration: new BoxDecoration(
                  border: new Border(bottom: new BorderSide(color: const Color(0x42000000), width: 1.0),)
              ),
            ),

            new Container(
              child: new Row(
                children: <Widget>[
                  new Text('Band Neutrophils (%):', textAlign: TextAlign.left,),
                  new Expanded(child: new Text('77', textAlign: TextAlign.right,))
                ],
              ),
              padding: new EdgeInsets.symmetric(vertical: 10.0),
              decoration: new BoxDecoration(
                  border: new Border(bottom: new BorderSide(color: const Color(0x42000000), width: 1.0),)
              ),
            ),

            new Container(
              child: new Row(
                children: <Widget>[
                  new Text('Metamyelocytes (%):', textAlign: TextAlign.left,),
                  new Expanded(child: new Text('77', textAlign: TextAlign.right,))
                ],
              ),
              padding: new EdgeInsets.symmetric(vertical: 10.0),
              decoration: new BoxDecoration(
                  border: new Border(bottom: new BorderSide(color: const Color(0x42000000), width: 1.0),)
              ),
            ),

            new Container(
              child: new Row(
                children: <Widget>[
                  new Text('Lymphocytes (%):', textAlign: TextAlign.left,),
                  new Expanded(child: new Text('77', textAlign: TextAlign.right,))
                ],
              ),
              padding: new EdgeInsets.symmetric(vertical: 10.0),
              decoration: new BoxDecoration(
                  border: new Border(bottom: new BorderSide(color: const Color(0x42000000), width: 1.0),)
              ),
            ),

            new Container(
              child: new Row(
                children: <Widget>[
                  new Text('Basophils (%):', textAlign: TextAlign.left,),
                  new Expanded(child: new Text('77', textAlign: TextAlign.right,))
                ],
              ),
              padding: new EdgeInsets.symmetric(vertical: 10.0),
              decoration: new BoxDecoration(
                  border: new Border(bottom: new BorderSide(color: const Color(0x42000000), width: 1.0),)
              ),
            ),

            new Container(
              child: new Row(
                children: <Widget>[
                  new Text('Eosinophils (%):', textAlign: TextAlign.left,),
                  new Expanded(child: new Text('77', textAlign: TextAlign.right,))
                ],
              ),
              padding: new EdgeInsets.symmetric(vertical: 10.0),
              decoration: new BoxDecoration(
                  border: new Border(bottom: new BorderSide(color: const Color(0x42000000), width: 1.0),)
              ),
            ),

            new Container(
              child: new Row(
                children: <Widget>[
                  new Expanded(child: new RaisedButton(
                      onPressed:  () {Navigator.push(context, new MaterialPageRoute(builder: (_) => new TestTube(),));},
                      child: new Text('Test Tube', style: new TextStyle(color: Colors.black), textAlign: TextAlign.center,)
                  )),
                  new FlatButton(onPressed: null, child: new Text(' ')),
                  new Expanded(child: new RaisedButton(
                      onPressed:  () {Navigator.push(context, new MaterialPageRoute(builder: (_) => new ManroeChart(),));},
                      child: new Text('Manroe Chart', style: new TextStyle(color: Colors.black), textAlign: TextAlign.center,)
                  ))
                ],
              ),
              padding: new EdgeInsets.symmetric(vertical: 80.0),
            )

          ],
        ),
      )
    );
  }
}