import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget{
  @override
  MenuDrawerState createState() => new MenuDrawerState();
}

class MenuDrawerState extends State<MenuDrawer> {
  double _textScaleFactor = 1.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TEST'),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //DrawerHeader for future use (dashboard, login page etc.)
            new DrawerHeader(
              child: new Column(
                children: <Widget>[
                  new SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),

            //Font size
            new ExpansionTile(
              title: new Text('Setting',
                  style: new TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
              children: <Widget>[
                new Row(
                    children: <Widget>[
                      new Container(child: new Text('Small'),),
                      new Radio<double>(
                        value: 0.5,
                        groupValue: _textScaleFactor,
                        onChanged: _applyScaleFactor,
                      ),
                    ],
                  ),

                  new Row(
                    children: <Widget>[
                      new Container(child: new Text('Normal'),),
                      new Radio<double>(
                        value: 1.0,
                        groupValue: _textScaleFactor,
                        onChanged: _applyScaleFactor,
                      ),
                    ],
                  ),

                  new Row(
                    children: <Widget>[
                      new Container(child: new Text('Large'),),
                      new Radio<double>(
                        value: 2.0,
                        groupValue: _textScaleFactor,
                        onChanged: _applyScaleFactor,
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),

      body: new Text('Some text here to see the change', textScaleFactor: _textScaleFactor,),
    );


  }
  void _applyScaleFactor (double val){
    setState((){
      _textScaleFactor = val;
    });
  }

}

void main() =>
    runApp(
        new MaterialApp(
          home: new MenuDrawer(),
        )
    );