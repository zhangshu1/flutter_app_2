import 'package:flutter/material.dart';

//void main() =>
//    runApp(new MaterialApp(
//      title: 'Create Care Plan',
//      home: new CreateCarePlan(),
//    ));

class CreateCarePlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Customize Care Plan'),
      ),

      body: new Column(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(15.0),
            child: new Text(
                'Please select the care actions in sequence to create your own customized care plan. You can use the protocols to create your own care plan'),
          ),

          new Container(
            child: new DropTownPart(),
          ),

          new Container(
            child: new CarePlanList(
              carePlanList: [
                new CarePlan(
                    'Begin an Intravenous Infusion of D10W at 80 ml/kg/day',
                    false),
                new CarePlan(
                    'Give 2ml/kg of D10W bolus IV over several minutes', false),
                new CarePlan(
                    'Screen blood glucose 15-30 minutes after bolus', false),
                new CarePlan(
                    'If Glucose Continues below 50mg/dL (2.8mmol/dL)', false),
                new CarePlan('Repeat the Bolus of 2ml/kg of D10W', false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Droptown button part begins
class DropTownPart extends StatefulWidget {
  @override
  DropDownState createState() => new DropDownState();
}

class DropDownState extends State<DropTownPart> {
  static const List<String> risks = const[
    'Hypoglycemia',
    'Option2',
    'Option3',
    'Option4',
  ];

  static const List<String> protocols = const[
    'S.T.A.B.L.E',
    'Option2',
    'Option3',
    'Option4',
  ];

  String originalRiskValue = risks[0];
  String originalProtocalValue = protocols[0];

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          padding: new EdgeInsets.symmetric(horizontal: 20.0),
          child: new Row(
            children: <Widget>[
              new Expanded(child: new Text(
                'Select Risk', style: new TextStyle(color: Colors.green),),),
              new DropdownButton(
                value: originalRiskValue,
                onChanged: (string) =>
                    setState(() => originalRiskValue = string),
                // declare string here
                items: risks.map((string) {
                  return new DropdownMenuItem(
                    child: new Text(string),
                    value: string,
                  );
                },).toList(),
              ),
            ],
          ),
        ),

        new Container(
          padding: new EdgeInsets.symmetric(horizontal: 20.0),
          child: new Row(
            children: <Widget>[
              new Expanded(child: new Text('Select Treatment Protocol',
                style: new TextStyle(color: Colors.green),),),
              new DropdownButton(
                value: originalProtocalValue,
                onChanged: (string) =>
                    setState(() => originalProtocalValue = string),
                // declare string here
                items: protocols.map((string) {
                  return new DropdownMenuItem(
                    child: new Text(string),
                    value: string,
                  );
                },).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//Bottom part for check list
class CarePlan {
  String content;
  bool isCheck;

  CarePlan(this.content, this.isCheck);
}

class CarePlanItem extends StatefulWidget {
  final CarePlan carePlan;

  CarePlanItem(CarePlan carePlan)
      :
        carePlan = carePlan,
        super(key: new ObjectKey(carePlan));

  @override
  CarePlanItemState createState() => new CarePlanItemState(carePlan);
}

class CarePlanItemState extends State<CarePlanItem> {
  final CarePlan carePlan;

  CarePlanItemState(this.carePlan);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      title: new Row(
        children: <Widget>[
          new Checkbox(value: carePlan.isCheck, onChanged: (bool value) {
            setState(() {
              carePlan.isCheck = value;
            });
          }),
          new Expanded(child: new Text(carePlan.content))
        ],
      ),
    );
  }
}

class CarePlanList extends StatefulWidget {
  CarePlanList({Key key, this.carePlanList}) : super(key: key);
  List<CarePlan> carePlanList;

  @override
  CarePlanListState createState() => new CarePlanListState();
}

class CarePlanListState extends State<CarePlanList> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 500.0,
      child: new Column(
        children: <Widget>[
          new Expanded(
              child: new ListView(
                padding: new EdgeInsets.symmetric(vertical: 8.0),
                children: widget.carePlanList.map((CarePlan carePlan) {
                  return new CarePlanItem(carePlan);
                }).toList(),
              )
          )
        ],
      ),
    );
  }
}