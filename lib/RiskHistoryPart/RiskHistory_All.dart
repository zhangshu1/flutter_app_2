import 'package:flutter/material.dart';

import '../Material/MenuDrawer.dart';

class RiskHistory_All extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),
      appBar: new AppBar(
//        leading: new IconButton(
//          icon: new Icon(Icons.arrow_drop_down_circle, size: 42.0, color: Colors.white,),
//          onPressed: null),
        title: new Text(
          'All Risk Hisotry',
          style: Theme
              .of(context)
              .textTheme
              .display1
              .copyWith(color: Colors.white), textScaleFactor: 0.6,
        ),

        //TODO: show current patient info on/under AppBar
      ),

      body: new Container(
        child: new Table( //TODO: horizontal view
          children: <TableRow>[
            new TableRow(
                children: <Widget>[
                  new TableCell(child: new Text('Time')),
                  new TableCell(child: new Text('Hypoglycemia (Blood Glucose)')),
                  new TableCell(child: new Text('Pneumothorax')),
                  new TableCell(child: new Text('Hypothermia'))
                ]
            ),
            new TableRow(
                children: <Widget>[
                  new TableCell(child: new Text('09:00')),
                  new TableCell(child: new Text('Normal - 60')),
                  new TableCell(child: new Text('Potential Risk')),
                  new TableCell(child: new Text('Potential Risk'))
                ]
            ),
            new TableRow(
                children: <Widget>[
                  new TableCell(child: new Text('06:00')),
                  new TableCell(child: new Text('Under observation - 43')),
                  new TableCell(child: new Text('Potential Risk')),
                  new TableCell(child: new Text('Potential Risk'))
                ]
            ),
            new TableRow(
                children: <Widget>[
                  new TableCell(child: new Text('04:00')),
                  new TableCell(child: new Text('Actual Risk - 24')),
                  new TableCell(child: new Text('Potential Risk')),
                  new TableCell(child: new Text('Potential Risk'))
                ]
            ),
            new TableRow(
                children: <Widget>[
                  new TableCell(child: new Text('03:00')),
                  new TableCell(child: new Text('Actual Risk - 22.50')),
                  new TableCell(child: new Text('Potential Risk')),
                  new TableCell(child: new Text('Potential Risk'))
                ]
            ),
            new TableRow(
                children: <Widget>[
                  new TableCell(child: new Text('01:00')),
                  new TableCell(child: new Text('Potential Risk')),
                  new TableCell(child: new Text('Potential Risk')),
                  new TableCell(child: new Text('Potential Risk'))
                ]
            )
          ],
        ),
      ),
    );
  }
}

void main() =>
    runApp(new MaterialApp(
      title: 'All Risk History',
      home: new RiskHistory_All(),
    ));