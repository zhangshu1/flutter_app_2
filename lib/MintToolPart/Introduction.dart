import 'package:flutter/material.dart';
import 'MintTool.dart';

void main() => runApp(new MaterialApp(
  title: 'Introduction',
  home: new Introduction(),
  routes: <String, WidgetBuilder> {
    '/MintTool': (BuildContext context) => new MintTool(),
  },
));

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Introduction'),
        actions: <Widget>[
          new FlatButton(
            onPressed: (){Navigator.of(context).pushNamed('/MintTool');},
            child: new Text('Skip'),
          )
        ],
      ),

      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new RichText(
          text: new TextSpan(
            children: <TextSpan>[
              new TextSpan(
                text: 'The Mortality Index for Neonatal Transportation Score: A New Mortality Prediction Model for Retrieved Neonates\n\n',
                style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.black, wordSpacing: 2.0),
              ),
              new TextSpan(
                text: 'Data collected at the first telephone contact by the referring hospital with a regionalized transport service can identify neonates at the greatest risk of dying. MINT score can be generated so that the babies could be objectively categorized with regard to severity of illness / risk of mortality. MINT tool the best as it was validated with 24 to 43 week gestation infants and uses only objective items that are commonly obtained during stabilization.',
                style: new TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      )
    );
  }
}