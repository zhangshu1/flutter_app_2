import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: 'Activity Monitor Page',
  home: new DefaultTabController(length: choices.length, child: new ActivityMonitor()),
));

class ActivityMonitor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Activity Monitor'),
        bottom: new TabBar(
            tabs: choices.map((Choice choice){
              return new Tab(
                text: choice.title,
              );
            }).toList()
        ),
      ),
      body: new TabBarView(
        children: choices.map((Choice choice) {
          return new Padding(
            padding: const EdgeInsets.all(16.0),
            child: new ChoiceCard(choice : choice,),
          );
        }).toList(),
      ),
    );
  }
}

class Choice {
  final String title;
  final Container container;
  Choice(this.title, this.container);
}

List<Choice> choices = <Choice>[
  // First choice
  new Choice(
    'Previous',
    new Container(
      height: 450.0,
      width: 350.0,
      decoration: const BoxDecoration(
          border: const Border(
            top: const BorderSide(width: 1.0, color: Colors.black),
            left: const BorderSide(width: 1.0, color: Colors.black),
            right: const BorderSide(width: 1.0, color: Colors.black),
            bottom: const BorderSide(width: 1.0, color: Colors.black),
          )
      ),
      child: new Column(
        children: <Widget>[
          new Container(
            height: 50.0,
            width: 350.0,
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
                color: Colors.grey,
                border: const Border(
                  bottom: const BorderSide(width: 1.0, color: Colors.black),
                )
            ),
            child: new Text('12/12/2010', textAlign: TextAlign.center,),
          ),

          new Container(
            decoration: const BoxDecoration(
                border: const Border(
                  bottom: const BorderSide(width: 1.0, color: Colors.grey),
                )
            ),
            child: new FlatButton(
                onPressed: null,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      height: 50.0,
                      width: 200.0,
                      padding: const EdgeInsets.all(8.0),
                      child: new Text('12:45 a.m:   Administer Glucose Level',),
                      alignment: Alignment.centerLeft,
                    ),
                    new Container(
                      width: 100.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(Icons.arrow_forward_ios, color: Colors.black),
                    )
                  ],
                )
            ),
          ),

          new Container(
            decoration: const BoxDecoration(
                border: const Border(
                  bottom: const BorderSide(width: 1.0, color: Colors.grey),
                )
            ),
            child: new FlatButton(
                onPressed: null,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      height: 50.0,
                      width: 200.0,
                      padding: const EdgeInsets.all(8.0),
                      child: new Text('12:30 a.m   IV Treatment Started',),
                      alignment: Alignment.centerLeft,
                    ),
                    new Container(
                      width: 100.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(Icons.arrow_forward_ios, color: Colors.black),
                    )
                  ],
                )
            ),
          ),

          new Container(
            child: new FlatButton(
                onPressed: null,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      height: 50.0,
                      width: 200.0,
                      padding: const EdgeInsets.all(8.0),
                      child: new Text('12:22 a.m   Waiting for Serum Glucose ',),
                      alignment: Alignment.centerLeft,
                    ),
                    new Container(
                      width: 100.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(Icons.arrow_forward_ios, color: Colors.black),
                    )
                  ],
                )
            ),
          ),
        ],
      ),
    ),
  ),

  // Second choice begins
  new Choice(
    'Current',
    new Container(
      height: 450.0,
      width: 350.0,
      decoration: const BoxDecoration(
          border: const Border(
            top: const BorderSide(width: 1.0, color: Colors.black),
            left: const BorderSide(width: 1.0, color: Colors.black),
            right: const BorderSide(width: 1.0, color: Colors.black),
            bottom: const BorderSide(width: 1.0, color: Colors.black),
          )
      ),
      child: new Column(
        children: <Widget>[
          new Container(
            height: 50.0,
            width: 350.0,
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
                color: Colors.grey,
                border: const Border(
                  bottom: const BorderSide(width: 1.0, color: Colors.black),
                )
            ),
            child: new Text('12/12/2010', textAlign: TextAlign.center,),
          ),

          new Container(
            decoration: const BoxDecoration(
                border: const Border(
                  bottom: const BorderSide(width: 1.0, color: Colors.grey),
                )
            ),
            child: new FlatButton(
                onPressed: null,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      height: 50.0,
                      width: 200.0,
                      padding: const EdgeInsets.all(8.0),
                      child: new Text('12:45 a.m:   Administer Glucose Level',),
                      alignment: Alignment.centerLeft,
                    ),
                    new Container(
                      width: 100.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(Icons.arrow_forward_ios, color: Colors.black),
                    )
                  ],
                )
            ),
          ),

          new Container(
            decoration: const BoxDecoration(
                border: const Border(
                  bottom: const BorderSide(width: 1.0, color: Colors.grey),
                )
            ),
            child: new FlatButton(
                onPressed: null,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      height: 50.0,
                      width: 200.0,
                      padding: const EdgeInsets.all(8.0),
                      child: new Text('12:30 a.m   IV Treatment Started',),
                      alignment: Alignment.centerLeft,
                    ),
                    new Container(
                      width: 100.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(Icons.arrow_forward_ios, color: Colors.black),
                    )
                  ],
                )
            ),
          ),

          new Container(
            child: new FlatButton(
                onPressed: null,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      height: 50.0,
                      width: 200.0,
                      padding: const EdgeInsets.all(8.0),
                      child: new Text('12:22 a.m   Waiting for Serum Glucose ',),
                      alignment: Alignment.centerLeft,
                    ),
                    new Container(
                      width: 100.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(Icons.arrow_forward_ios, color: Colors.black),
                    )
                  ],
                )
            ),
          ),
        ],
      ),
    ),
  ),

  // Third choice begins
  new Choice(
    'To do',
    new Container(
      height: 450.0,
      width: 350.0,
      decoration: const BoxDecoration(
          border: const Border(
            top: const BorderSide(width: 1.0, color: Colors.black),
            left: const BorderSide(width: 1.0, color: Colors.black),
            right: const BorderSide(width: 1.0, color: Colors.black),
            bottom: const BorderSide(width: 1.0, color: Colors.black),
          )
      ),
      child: new Column(
        children: <Widget>[
          new Container(
            height: 50.0,
            width: 350.0,
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
                color: Colors.grey,
                border: const Border(
                  bottom: const BorderSide(width: 1.0, color: Colors.black),
                )
            ),
            child: new Text('12/12/2010', textAlign: TextAlign.center,),
          ),

          new Container(
            decoration: const BoxDecoration(
                border: const Border(
                  bottom: const BorderSide(width: 1.0, color: Colors.grey),
                )
            ),
            child: new FlatButton(
                onPressed: null,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      height: 50.0,
                      width: 200.0,
                      padding: const EdgeInsets.all(8.0),
                      child: new Text('12:45 a.m:   Administer Glucose Level',),
                      alignment: Alignment.centerLeft,
                    ),
                    new Container(
                      width: 100.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(Icons.arrow_forward_ios, color: Colors.black),
                    )
                  ],
                )
            ),
          ),

          new Container(
            decoration: const BoxDecoration(
                border: const Border(
                  bottom: const BorderSide(width: 1.0, color: Colors.grey),
                )
            ),
            child: new FlatButton(
                onPressed: null,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      height: 50.0,
                      width: 200.0,
                      padding: const EdgeInsets.all(8.0),
                      child: new Text('12:30 a.m   IV Treatment Started',),
                      alignment: Alignment.centerLeft,
                    ),
                    new Container(
                      width: 100.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(Icons.arrow_forward_ios, color: Colors.black),
                    )
                  ],
                )
            ),
          ),

          new Container(
            child: new FlatButton(
                onPressed: null,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      height: 50.0,
                      width: 200.0,
                      padding: const EdgeInsets.all(8.0),
                      child: new Text('12:22 a.m   Waiting for Serum Glucose ',),
                      alignment: Alignment.centerLeft,
                    ),
                    new Container(
                      width: 100.0,
                      alignment: Alignment.centerRight,
                      child: new Icon(Icons.arrow_forward_ios, color: Colors.black),
                    )
                  ],
                )
            ),
          ),
        ],
      ),
    ),
  ),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(child: choice.container),
    );
  }
}
