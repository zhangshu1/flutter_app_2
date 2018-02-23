import 'package:flutter/material.dart';
import 'Results.dart';

//void main() => runApp(new MaterialApp(
//  title: 'Mint Tool',
//  home: new MintTool(),
//));

class MintTool extends StatefulWidget {
  @override
  MintToolState createState() => new MintToolState();
}

class MintToolState extends State<MintTool> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Mint Tool'),
        ),

        body: new CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              expandedHeight: 150.0,
              flexibleSpace: const FlexibleSpaceBar(
                title: const Text(
                    'Mortality Index for Neonatal\n            Transportation\n               (MINT) score'),
              ),
            ),

            new SliverList(
              delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return new Column(
                    children: <Widget>[
                      new Container(
                        padding: new EdgeInsets.all(20.0),
                        child: new Column(
                          children: <Widget>[
                            new pH(),
                            new Age(),
                            new Apgar(),
                            new BirthWeight(),
                            new PaO2(),
                            new Abnormality(),
                            new Status(),
//                          new Container(height: 500.0, width: 500.0, child: new Result(),),
                            new RaisedButton(
                              //Show simple dialog
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  child: new SimpleDialog(
                                    children: <Widget>[
                                      new Container(height: 600.0,
                                        width: 600.0,
                                        child: new Result(),),
                                    ],
                                  ),
                                );
                              },
                              child: new Text('Calculate'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                childCount: 1,
              ),
            ),
          ],
        )
    );
  }
}

class pH extends StatefulWidget {
  @override
  pHState createState() => new pHState();
}

class pHState extends State<pH> {
  static const List<String> pHs = const[
    '5.0',
    '6.0',
    '7.0',
    '8.0'
  ];

  String originalpH = pHs[0];

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          height: 50.0,
          child: new Row(
            children: <Widget>[
              new Expanded(child: new Text('pH'),),
              new DropdownButton(
                value: originalpH,
                items: pHs.map((string) {
                  return new DropdownMenuItem(
                    child: new Text(string),
                    value: string,
                  );
                }).toList(),
                onChanged: (string) => setState(() => originalpH = string),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Age extends StatefulWidget {
  @override
  AgeState createState() => new AgeState();
}

class AgeState extends State<Age> {
  static const List<String> ages = const[
    '1 month',
    '2 month',
    '3 month',
    '4 month'
  ];

  String originalAge = ages[0];

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          height: 50.0,
          child: new Row(
            children: <Widget>[
              new Expanded(child: new Text('Age'),),
              new DropdownButton(
                value: originalAge,
                items: ages.map((string) {
                  return new DropdownMenuItem(
                    child: new Text(string),
                    value: string,
                  );
                }).toList(),
                onChanged: (string) => setState(() => originalAge = string),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Apgar extends StatefulWidget {
  @override
  ApgarState createState() => new ApgarState();
}

class ApgarState extends State<Apgar> {
  static const List<String> pHs = const[
    'Score1',
    'Score2',
    'Score3',
    'Score4'
  ];

  String originalApgar = pHs[0];

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          height: 50.0,
          child: new Row(
            children: <Widget>[
              new Expanded(child: new Text('Apgar Score at 1 min'),),
              new DropdownButton(
                value: originalApgar,
                items: pHs.map((string) {
                  return new DropdownMenuItem(
                    child: new Text(string),
                    value: string,
                  );
                }).toList(),
                onChanged: (string) => setState(() => originalApgar = string),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class BirthWeight extends StatefulWidget {
  @override
  BirthWeightState createState() => new BirthWeightState();
}

class BirthWeightState extends State<BirthWeight> {
  static const List<String> birthWeights = const[
    'Weight1',
    'Weight2',
    'Weight3',
    'Weight4'
  ];

  String originalBirthWeight = birthWeights[0];

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          height: 50.0,
          child: new Row(
            children: <Widget>[
              new Expanded(child: new Text('Birth Weight'),),
              new DropdownButton(
                value: originalBirthWeight,
                items: birthWeights.map((string) {
                  return new DropdownMenuItem(
                    child: new Text(string),
                    value: string,
                  );
                }).toList(),
                onChanged: (string) =>
                    setState(() => originalBirthWeight = string),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class PaO2 extends StatefulWidget {
  @override
  PaO2State createState() => new PaO2State();
}

class PaO2State extends State<PaO2> {
  static const List<String> PaO2s = const[
    'Option1',
    'Option2',
    'Option3',
    'Option4'
  ];

  String originalPaO2 = PaO2s[0];

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          height: 50.0,
          child: new Row(
            children: <Widget>[
              new Expanded(child: new Text('PaO2'),),
              new DropdownButton(
                value: originalPaO2,
                items: PaO2s.map((string) {
                  return new DropdownMenuItem(
                    child: new Text(string),
                    value: string,
                  );
                }).toList(),
                onChanged: (string) => setState(() => originalPaO2 = string),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Abnormality extends StatefulWidget {
  @override
  AbnormalityState createState() => new AbnormalityState();
}

class AbnormalityState extends State<Abnormality> {
  static const List<String> Abnormalities = const[
    'Option1',
    'Option2',
    'Option3',
    'Option4'
  ];

  String originalAbnormality = Abnormalities[0];

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          height: 50.0,
          child: new Row(
            children: <Widget>[
              new Expanded(child: new Text('Congenital abnormality'),),
              new DropdownButton(
                value: originalAbnormality,
                items: Abnormalities.map((string) {
                  return new DropdownMenuItem(
                    child: new Text(string),
                    value: string,
                  );
                }).toList(),
                onChanged: (string) =>
                    setState(() => originalAbnormality = string),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Status extends StatefulWidget {
  @override
  StatusState createState() => new StatusState();
}

class StatusState extends State<Status> {
  static const List<String> Statuses = const[
    'Status1',
    'Status2',
    'Status3',
    'Status4'
  ];

  String originalStatus = Statuses[0];

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          height: 50.0,
          child: new Row(
            children: <Widget>[
              new Expanded(child: new Text('Intubated Status'),),
              new DropdownButton(
                value: originalStatus,
                items: Statuses.map((string) {
                  return new DropdownMenuItem(
                    child: new Text(string),
                    value: string,
                  );
                }).toList(),
                onChanged: (string) => setState(() => originalStatus = string),
              )
            ],
          ),
        ),
      ],
    );
  }
}