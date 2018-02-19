import 'package:flutter/material.dart';

class MyCheckbox {
  bool isChecked;
  String str;

  MyCheckbox(this.isChecked, this.str);
}

class MyCheckboxItem extends StatefulWidget {
  final MyCheckbox myCheckbox;
  MyCheckboxItem(MyCheckbox myCheckbox):
    myCheckbox = myCheckbox,
    super(key: new ObjectKey(myCheckbox));

  @override
  MyCheckboxItemState createState() => new MyCheckboxItemState(myCheckbox);
} 

class MyCheckboxItemState extends State<MyCheckboxItem> {
  final MyCheckbox myCheckbox;
  MyCheckboxItemState(this.myCheckbox);

  @override
  Widget build(BuildContext context){
    return new ListTile(
      title: new Row(
        children: <Widget>[
          new Checkbox(value: myCheckbox.isChecked, onChanged: (bool value){
            setState((){myCheckbox.isChecked = value;});
          }),
          new Expanded(child: new Text(myCheckbox.str))
        ],
      ),
    );
  }
}

class MyCheckboxList extends StatefulWidget {
  MyCheckboxList({Key key, this.myCheckbox}): super(key: key);
  List<MyCheckbox> myCheckbox;

  @override
  MyCheckboxListState createState() => new MyCheckboxListState();
}

class MyCheckboxListState extends State<MyCheckboxList> {
  @override
  Widget build(BuildContext context){
    return new Container(
      padding: new EdgeInsets.symmetric(vertical: 20.0),
      height: 350.0,
      child: new Column(
        children: <Widget>[
          new Expanded(
            child: new ListView(
            children: widget.myCheckbox.map((MyCheckbox myCheckbox){
              return new MyCheckboxItem(myCheckbox);
            }).toList(),
          ))
        ],
      ),
    );
  }
}