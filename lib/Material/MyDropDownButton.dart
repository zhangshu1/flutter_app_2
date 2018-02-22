import 'package:flutter/material.dart';

class MyDropDownButton{
  String title;
  List<String> items;
  MyDropDownButton(this.title, this.items);
}

class MyDropDownItem extends StatefulWidget {
  final MyDropDownButton myDropDownButton;
  MyDropDownItem(MyDropDownButton myDropDownButton):
      myDropDownButton = myDropDownButton,
      super(key: new ObjectKey(myDropDownButton));

  @override
  MyDropDownItemState createState() => new MyDropDownItemState(myDropDownButton);
}

class MyDropDownItemState extends State<MyDropDownItem> {
  final MyDropDownButton myDropDownButton;
  MyDropDownItemState(this.myDropDownButton);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          child: new Row(
            children: <Widget>[
              new Expanded(child: new Text(myDropDownButton.title)),
              new DropdownButton(
                value: myDropDownButton.items[0],
                items: myDropDownButton.items.map((string) {
                  return new DropdownMenuItem(
                    child: new Text(string),
                    value: string,
                  );
                }).toList(),
                onChanged: (string) => setState(() => myDropDownButton.items[0] = string),
              ),
            ],
          ),
        ),
      ],
    );
  }
}