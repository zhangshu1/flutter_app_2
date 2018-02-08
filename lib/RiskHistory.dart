import 'package:flutter/material.dart';

void main() => runApp(
  new MaterialApp(
    title: 'Risk History Page',
    home: new RiskHistory(),
  )
);

class RiskHistory extends StatelessWidget{
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
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Container(
                margin: new EdgeInsets.only(bottom: 1.0),
                height: 50.0,
                child: new RaisedButton(
                  child: new Text("All", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
                  onPressed: (){Navigator.of(context).pushNamed("/All");}
                )
              ),
              new Container(
                  margin: new EdgeInsets.only(bottom: 1.0),
                  height: 50.0,
                  child: new RaisedButton(
                      child: new Text("Hypoglycemia", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
                      onPressed: (){Navigator.of(context).pushNamed("/Hypoglycemia");}
                  )
              ),
              new Container(
                  margin: new EdgeInsets.only(bottom: 1.0),
                  height: 50.0,
                  child: new RaisedButton(
                      child: new Text("Pneumothorax", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
                      onPressed: (){Navigator.of(context).pushNamed("/Pneumothorax");}
                  )
              ),
              new Container(
                  margin: new EdgeInsets.only(bottom: 1.0),
                  height: 50.0,
                  child: new RaisedButton(
                      child: new Text("Hypothermia", style: new TextStyle(color: Colors.black, fontSize: 20.0)),
                      onPressed: (){Navigator.of(context).pushNamed("/Hypothermia");}
                  )
              ),

            ],
          ),
        )

      ),
    );
  }
}