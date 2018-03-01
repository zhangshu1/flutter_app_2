import 'package:flutter/material.dart';

void main() =>
    runApp(new MaterialApp(
      title: 'Results Dashboard',
      home: new Result(),
    ));

var assetImage = new AssetImage('images/result.png');
var resultImage = new Image(image: assetImage);

class Result extends StatefulWidget {
  @override
  ResultState createState() => new ResultState();
}

class ResultState extends State<Result> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: choices.length);
  }

//  void _nextPage(int delta) {
//    final int newIndex = _tabController.index + delta;
//    if (newIndex < 0 || newIndex >= _tabController.length)
//      return;
//    _tabController.animateTo(newIndex);
//  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //Maybe need a navigation bar here
      body:
//          new PreferredSize(
//            preferredSize: const Size.fromHeight(48.0),
//            child: new Theme(
//              data: Theme.of(context).copyWith(accentColor: Colors.white),
//              child: new Container(
//                height: 48.0,
//                alignment: Alignment.center,
//                child: new TabPageSelector(controller: _tabController),
//              ),
//            ),
//          ),

      new TabBarView(
        controller: _tabController,
        children: choices.map((Choice choice) {
          return new Padding(
            padding: const EdgeInsets.all(20.0),
            child: new ChoiceCard(choice: choice),
          );
        }).toList(),
      ),
    );
  }
}

class Choice {
  String title;
  Widget container;

  Choice(this.title, this.container);
}

// Implement Choice
List<Choice> choices = <Choice>[
  new Choice('Results', new Container1()),
  new Choice('Calculations', new Container2()),
];

class Container1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Container(
            child: new Row(
              children: <Widget>[
                new Container(
                  padding: new EdgeInsets.only(left: 5.0),
                  child: new Icon(
                    Icons.warning, color: Colors.red, size: 60.0,),
                ),
                new Container(
                  padding: new EdgeInsets.all(15.0),
                  child: new RichText(
                    text: new TextSpan(
                      children: <TextSpan>[
                        new TextSpan(text: 'The MINT Score is ',
                            style: new TextStyle(color: Colors.black)),
                        new TextSpan(text: '7\n',
                            style: new TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        new TextSpan(text: 'And the probability of\ndeath is ',
                            style: new TextStyle(color: Colors.black)),
                        new TextSpan(text: '0.30',
                            style: new TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Container(
            margin: new EdgeInsets.symmetric(vertical: 20.0),
            child: resultImage,
          ),
          new Container(
            padding: new EdgeInsets.symmetric(horizontal: 20.0),
            child: new Text(
                'The higher the Mint score, the probability of death of the Infant is more. '),
          ),
        ],
      ),
    );
  }
}

class Container2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        border: new TableBorder.all(color: Colors.black),
        children: <TableRow>[
          new TableRow(
            children: <TableCell>[
              new TableCell(child: new Text(
                'Factor', style: new TextStyle(height: 2.5,),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                'Value', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                'Points', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
            ],
            decoration: new BoxDecoration(color: Colors.grey),
          ),
          new TableRow(
            children: <TableCell>[
              new TableCell(child: new Text(
                'pH', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                '7.1', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                '4', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
            ],
          ),
          new TableRow(
            children: <TableCell>[
              new TableCell(child: new Text(
                'Age', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                '2', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                '0', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
            ],
            decoration: new BoxDecoration(color: Colors.grey),
          ),
          new TableRow(
            children: <TableCell>[
              new TableCell(child: new Text(
                'Apgar (1min)', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                '7', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                '0', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
            ],
          ),
          new TableRow(
            children: <TableCell>[
              new TableCell(child: new Text(
                'Birth Weight', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                '1400', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                '1', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
            ],
            decoration: new BoxDecoration(color: Colors.grey),
          ),
          new TableRow(
            children: <TableCell>[
              new TableCell(child: new Text(
                'PaO2', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                '3', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                '2', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
            ],
          ),
          new TableRow(
            children: <TableCell>[
              new TableCell(child: new Text(
                'Congenital abnormality', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                'No', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                '0', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
            ],
            decoration: new BoxDecoration(color: Colors.grey),
          ),
          new TableRow(
            children: <TableCell>[
              new TableCell(child: new Text(
                'Intubated Status', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                'No', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                '0', style: new TextStyle(height: 2.5),
                textAlign: TextAlign.center,)),
            ],
          ),
          new TableRow(
            children: <TableCell>[
              new TableCell(child: new Text(
                'Total', style: new TextStyle(color: Colors.red, height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                '-', style: new TextStyle(color: Colors.red, height: 2.5),
                textAlign: TextAlign.center,)),
              new TableCell(child: new Text(
                '7', style: new TextStyle(color: Colors.red, height: 2.5),
                textAlign: TextAlign.center,)),
            ],
            decoration: new BoxDecoration(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class ChoiceCard extends StatelessWidget {
  final Choice choice;

  const ChoiceCard({Key key, this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: choice.container,
    );
  }
}