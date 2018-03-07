import 'package:flutter/material.dart';
import '../Material/MyDropDownButton.dart';

void main() => runApp(
  new MaterialApp(
    title: 'Hourly Fluid Rate',
    home: new HourlyFluidRate(),
  ),
);

class HourlyFluidRate extends StatefulWidget {

  @override
  HourlyFluidRateState createState() => new HourlyFluidRateState();
}

var _value = 50.0; // For slider use

class HourlyFluidRateState extends State<HourlyFluidRate> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Hourly Fluid Rate'),
      ),

      body: new Container(
        padding: new EdgeInsets.all(30.0),
        child: new Column(
          children: <Widget>[
            new Form(
              child: new Column(
                children: <Widget>[
                  new MyDropDownItem(new MyDropDownButton('Dextrose Conc.',  ['Option1', 'Option2', 'Option3'])),
                  new MyDropDownItem(new MyDropDownButton('Infusion Rate', ['Option1', 'Option2', 'Option3'])), // Failed assertion

                  new Container(
                    margin: new EdgeInsets.only(top: 20.0, bottom: 20.0),
                    padding: new EdgeInsets.symmetric(horizontal: 95.0),
                    child: new Row(
                      children: <Widget>[
                        new RaisedButton(
                          onPressed: null,
                          child: new Text('Calculate'),
                        ),
                        new Container(width: 20.0,),
                        new Icon(Icons.help, color: Colors.blue,),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            new Container(
              margin: new EdgeInsets.only(top: 20.0, bottom: 40.0),
              child: new RichText(
                text: new TextSpan(
                  children: <TextSpan>[
                    new TextSpan(text: 'The hourly Fluid Rate is  ', style: new TextStyle(color: Colors.black)),
                    new TextSpan(text: '6 ml/hr\n', style: new TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                    new TextSpan(text: 'And 5.5 mg/kl delivered per minute', style: new TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ),
            
            new Container(
              margin: new EdgeInsets.symmetric(vertical: 10.0),
              child: new InkWell(
                child: new Text('Want to adjust the GIR ?', style: new TextStyle(color: Colors.blue, decoration: TextDecoration.underline),),
                onTap: (){}, //Here is a hyperlink, to be implemented
              ),
            ),

            new Container(
              child: new Slider(
//                thumbOpenAtMin: true,
                max: 100.0,
                min: 0.0,
                divisions: 10,
                label: '$_value',
                value:_value,
                onChanged: (double newValue){
                  setState((){
                    _value = newValue;
                  });
                },
              ),
            ),

            new Container(
              margin: new EdgeInsets.symmetric(vertical: 5.0),
              child: new Text('Updated hourly Fluid Rate is 7 ml/hr'),
            ),
          ],
        ),
      ),
    );
  }
}