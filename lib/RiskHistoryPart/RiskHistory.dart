import 'package:flutter/material.dart';

void main() => runApp(
  new MaterialApp(
    title: 'Risk History Page',
    home: new RiskHistory(),
  )
);

class RiskHistory extends StatefulWidget{
  @override
  //Members or classes that start with an underscore (_) are private
  RiskHistoryState createState() => new RiskHistoryState();
}

class RiskHistoryState extends State<RiskHistory>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.grey,
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          onPressed: null,
        ),
        title: new Text("Risk History", style: new TextStyle(color: Colors.black), textAlign: TextAlign.left),
      ),

      body: new Container(
        child: new Text("d"),

      ),
    );
  }
}