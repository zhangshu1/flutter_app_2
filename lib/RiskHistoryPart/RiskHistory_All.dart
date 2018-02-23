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

//      body: new ListView(
//          padding: const EdgeInsets.all(20.0),
//          children: <Widget>[
//            new DataTable(
//              columns: <DataColumn>[
//                new DataColumn(label: new Text('Time')),
//                new DataColumn(
//                    label: new Text('Hypoglycemia (Blood Glucose)')),
//                new DataColumn(label: new Text('Pneumothorax')),
//                new DataColumn(label: new Text('Hypothermia')),
//              ],
//              rows: <DataRow>[
//                new DataRow(
//                  cells: <DataCell>[
//                    new DataCell(new Text('09:00')),
//                    new DataCell(new Text('Normal - 60')),
//                    new DataCell(new Text('Potential Risk')),
//                    new DataCell(new Text('Potential Risk')),
//                  ],
//                ),
//                new DataRow(
//                  cells: <DataCell>[
//                    new DataCell(new Text('06:00')),
//                    new DataCell(new Text('Under observation - 43')),
//                    new DataCell(new Text('Potential Risk')),
//                    new DataCell(new Text('Potential Risk')),
//                  ],
//                ),
//                new DataRow(
//                  cells: <DataCell>[
//                    new DataCell(new Text('04:00')),
//                    new DataCell(new Text('Actual Risk - 24')),
//                    new DataCell(new Text('Potential Risk')),
//                    new DataCell(new Text('Potential Risk')),
//                  ],
//                ),
//                new DataRow(
//                  cells: <DataCell>[
//                    new DataCell(new Text('03:00')),
//                    new DataCell(new Text('Actual Risk - 22.50')),
//                    new DataCell(new Text('Potential Risk')),
//                    new DataCell(new Text('Potential Risk')),
//                  ],
//                ),
//                new DataRow(
//                  cells: <DataCell>[
//                    new DataCell(new Text('01:00')),
//                    new DataCell(new Text('Potential Risk')),
//                    new DataCell(new Text('Potential Risk')),
//                    new DataCell(new Text('Potential Risk')),
//                  ],
//                ),
//
//              ],
//            ),
//          ]),

      body: new Container(
        padding: new EdgeInsets.only(top: 20.0),
        child: new Table( //TODO: horizontal view
          columnWidths: const <int, TableColumnWidth>{
            0: const FixedColumnWidth(70.0),
            1: const FixedColumnWidth(150.0),
            2: const FixedColumnWidth(100.0),
            3: const FixedColumnWidth(100.0),
          },
          border: new TableBorder(
              top: new BorderSide(color: const Color(0x42000000), width: 1.0),
              bottom: new BorderSide(
                  color: const Color(0x42000000), width: 1.0),
              left: new BorderSide(
                  color: const Color(0x42000000), width: 1.0),
              right: new BorderSide(
                  color: const Color(0x42000000), width: 1.0),
              verticalInside: new BorderSide(
                  width: 1.0, color: const Color(0x42000000)),
              //Colors.black45
              horizontalInside: new BorderSide(
                  width: 1.0, color: const Color(0x61000000))
          ),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,

          children: <TableRow>[
            new TableRow(
                children: <Widget>[
                  new TableCell(child: new Text(
                      'Time', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text('Hypoglycemia (Blood Glucose)',
                      textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Pneumothorax', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Hypothermia', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8)))
                ],
                decoration: new BoxDecoration(color: const Color(0xFFE0E0E0))

            ),
            new TableRow(
                children: <Widget>[
                  new TableCell(child: new Text(
                      '09:00', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Normal - 60', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Potential Risk', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Potential Risk', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8)))
                ]
            ),
            new TableRow(
                children: <Widget>[
                  new TableCell(child: new Text(
                      '06:00', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Under observation - 43', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Potential Risk', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Potential Risk', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8)))
                ]
            ),
            new TableRow(
                children: <Widget>[
                  new TableCell(child: new Text(
                      '04:00', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Actual Risk - 24', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Potential Risk', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Potential Risk', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8)))
                ]
            ),
            new TableRow(
                children: <Widget>[
                  new TableCell(child: new Text(
                      '03:00', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Actual Risk - 22.50', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Potential Risk', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Potential Risk', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8)))
                ]
            ),
            new TableRow(
                children: <Widget>[
                  new TableCell(child: new Text(
                      '01:00', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Potential Risk', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Potential Risk', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8))),
                  new TableCell(child: new Text(
                      'Potential Risk', textAlign: TextAlign.center,
                      style: new TextStyle(height: 1.8)))
                ]
            )
          ],
        ),
      ),


    );
  }
}

//void main() =>
//    runApp(new MaterialApp(
//      title: 'All Risk History',
//      home: new RiskHistory_All(),
//    ));