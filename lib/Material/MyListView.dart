import 'package:flutter/material.dart';

class Option {
  IconData icon;
  String title;
  Option(this.icon, this.title);
}

class OptionItem extends StatefulWidget {
  final Option option;
  OptionItem(Option option):
        option = option,
        super(key: new ObjectKey(option));

  @override
  OptionItemState createState() => new OptionItemState(option);
}

class OptionItemState extends State<OptionItem> {
  final Option option;
  OptionItemState(this.option);

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: const BoxDecoration(
        border: const Border(
          bottom: const BorderSide(color: Colors.grey),
        ),
      ),
      child: new ListTile(
        leading: new Icon(option.icon),
        title: new Text(option.title),
      ),
    );
  }
}

class MyListView extends StatefulWidget {
  List<Option> options;
  MyListView({Key key, this.options}): super(key: key);

  @override
  MyListViewState createState() => new MyListViewState();
}

class MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Expanded(
            child: new ListView(
              padding: new EdgeInsets.symmetric(vertical: 8.0),
              children: widget.options.map((Option option) {
                return new OptionItem(option);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}