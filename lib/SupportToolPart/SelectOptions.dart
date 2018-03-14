import 'package:flutter/material.dart';
import '../Material/MyListView.dart';
import 'SelectModule.dart';
import 'BlankPage.dart';

//void main() => runApp(
//  new MaterialApp(
//    title: 'Select Options',
//    home: new SelectOptions(),
//  ),
//);

class SelectOptions extends StatefulWidget {
  @override
  SelectOptionState createState() => new SelectOptionState();
}

class SelectOptionState extends State<SelectOptions> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Select Options'),
      ),

      body: new Container(
        child: new MyListView(
          options: [
            new Option(new Icon(Icons.account_circle), 'Manage Patients',context, new MaterialPageRoute(builder: (_) => new Blank())),
            new Option(new Icon(Icons.tag_faces), 'STABLE', context, new MaterialPageRoute(builder: (_) => new SelectModule())),
            new Option(new Icon(Icons.add_alert), 'Manage Alerts', context, new MaterialPageRoute(builder: (_) => new Blank())),
            new Option(new Icon(Icons.note), 'Manage Notes', context, new MaterialPageRoute(builder: (_) => new Blank())),
            new Option(new Icon(Icons.help), 'FAQ', context, new MaterialPageRoute(builder: (_) => new Blank())), // TO BE IMPLEMENTED
          ],
        ),
      ),
    );
  }
}

// Move this part to Material/MyListView
//class Option {
//  IconData icon;
//  String title;
//  Option(this.icon, this.title);
//}
//
//class OptionItem extends StatefulWidget {
//  final Option option;
//  OptionItem(Option option):
//      option = option,
//      super(key: new ObjectKey(option));
//
//  @override
//  OptionItemState createState() => new OptionItemState(option);
//}
//
//class OptionItemState extends State<OptionItem> {
//  final Option option;
//  OptionItemState(this.option);
//
//  @override
//  Widget build(BuildContext context) {
//    return new Container(
//      decoration: const BoxDecoration(
//        border: const Border(
//          bottom: const BorderSide(color: Colors.grey),
//        ),
//      ),
//      child: new ListTile(
//        leading: new Icon(option.icon),
//        title: new Text(option.title),
//      ),
//    );
//  }
//}
//
//class OptionList extends StatefulWidget {
//  List<Option> options;
//  OptionList({Key key, this.options}): super(key: key);
//
//  @override
//  OptionListState createState() => new OptionListState();
//}
//
//class OptionListState extends State<OptionList> {
//  @override
//  Widget build(BuildContext context) {
//    return new Container(
//      child: new Column(
//        children: <Widget>[
//          new Expanded(
//            child: new ListView(
//              padding: new EdgeInsets.symmetric(vertical: 8.0),
//              children: widget.options.map((Option option) {
//                return new OptionItem(option);
//              }).toList(),
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}