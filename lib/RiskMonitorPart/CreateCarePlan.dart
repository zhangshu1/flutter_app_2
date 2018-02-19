import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: 'Create Care Plan',
  home: new CreateCarePlan(),
));

class CreateCarePlan extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      endDrawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //DrawerHeader for future use (dashboard, login page etc.)
            new DrawerHeader(
              child: new Text('Log In'),
              padding: new EdgeInsets.only(left: 10.0, right: 50.0, top: 3.0, bottom: 0.0),
            ),

            //current state
            const ListTile(
              title: const Text('Current State'),
//                onTap: ,
            ),

            //risk monitor
            new ExpansionTile(
                title: const Text('Risk Monitor'),
                backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
                children: const <Widget>[
                  const ListTile(
                    title: const Text('Hypotension'),
//                      onTap: ,
                  ),
                  const ListTile(
                    title: const Text('Hypothermia'),
//                      onTap: ,
                  ),
                  const ListTile(
                    title: const Text('Pneumothorax'),
//                      onTap: ,
                  )
                ]
            ),

            //activity monitor
            const ListTile(
              title: const Text('Activity Monitor'),
//                onTap: ,
            ),

            //risk history
            new ExpansionTile(
              title: const Text('Risk Hisotry'),
              backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
              children: <Widget>[
                const ListTile(
                  title: const Text('All'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Hypoglycemia'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Pneumothorax'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Hypothermia'),
//                      onTap: ,
                )
              ],
            ),

            //lab work
            new ExpansionTile(
              title: new Text('Lab Work'),
              backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
              children: <Widget>[
                const ListTile(
                  title: const Text('View Recommended Test'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Order Additional Test'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Enter Patient Report'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('View Patient Report'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Enter Recommended Medication'),
//                      onTap: ,
                )
              ],
            ),

            //PSSAT form
            const ListTile(title: const Text('PSSAT Form')),

            //STABLE
            new ExpansionTile(
              title: new Text('S.T.A.B.L.E'),
              backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
              children: <Widget>[
                const ListTile(
                  title: const Text('Sugar'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Temperature'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Airway'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Blood Pressure'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Lab Work'),
//                      onTap: ,
                ),
                const ListTile(
                  title: const Text('Emotional Support'),
//                      onTap: ,
                )
              ],
            )
          ],
        ),
      ),
      appBar: new AppBar(
        title: new Text('Customize Care Plan'),
      ),

      body: new Column(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(15.0),
            child: new Text('Please select the care actions in sequence to create your own customized care plan. You can use the protocols to create your own care plan'),
          ),

          new Container(
            child: new DropTownPart(),
          ),

          new Container(
            child: new CarePlanList(
              carePlanList: [
                new CarePlan('Begin an Intravenous Infusion of D10W at 80 ml/kg/day', false),
                new CarePlan('Give 2ml/kg of D10W bolus IV over several minutes', false),
                new CarePlan('Screen blood glucose 15-30 minutes after bolus', false),
                new CarePlan('If Glucose Continues below 50mg/dL (2.8mmol/dL)', false),
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
class DropTownPart extends StatefulWidget{
  @override
  DropDownState createState() => new DropDownState();
}

class DropDownState extends State<DropTownPart>{
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
  Widget build(BuildContext context){
    return new Column(
      children: <Widget>[
        new Container(
          padding: new EdgeInsets.symmetric(horizontal: 20.0),
          child: new Row(
            children: <Widget>[
              new Expanded(child: new Text('Select Risk', style: new TextStyle(color: Colors.green),),),
              new DropdownButton(
                value: originalRiskValue,
                onChanged: (string) => setState(() => originalRiskValue = string), // declare string here
                items: risks.map((string){
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
              new Expanded(child: new Text('Select Treatment Protocol', style: new TextStyle(color: Colors.green),),),
              new DropdownButton(
                value: originalProtocalValue,
                onChanged: (string) => setState(() => originalProtocalValue = string), // declare string here
                items: protocols.map((string){
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
class CarePlan{
  String content;
  bool isCheck;

  CarePlan(this.content, this.isCheck);
}

class CarePlanItem extends StatefulWidget{
  final CarePlan carePlan;
  CarePlanItem(CarePlan carePlan):
      carePlan = carePlan,
      super(key: new ObjectKey(carePlan));

  @override
  CarePlanItemState createState() => new CarePlanItemState(carePlan);
}

class CarePlanItemState extends State<CarePlanItem>{
  final CarePlan carePlan;
  CarePlanItemState(this.carePlan);

  @override
  Widget build(BuildContext context){
    return new ListTile(
      title: new Row(
        children: <Widget>[
          new Checkbox(value: carePlan.isCheck, onChanged: (bool value){
            setState((){carePlan.isCheck = value;});
          }),
          new Expanded(child: new Text(carePlan.content))
        ],
      ),
    );
  }
}

class CarePlanList extends StatefulWidget{
  CarePlanList({Key key, this.carePlanList}): super(key: key);
  List<CarePlan> carePlanList;

  @override
  CarePlanListState createState() => new CarePlanListState();
}

class CarePlanListState extends State<CarePlanList>{
  @override
  Widget build(BuildContext context){
    return new Container(
      height: 500.0,
      child: new Column(
        children: <Widget>[
          new Expanded(
              child: new ListView(
                padding: new EdgeInsets.symmetric(vertical: 8.0),
                children: widget.carePlanList.map((CarePlan carePlan){
                  return new CarePlanItem(carePlan);
                }).toList(),
              )
          )
        ],
      ),
    );
  }
}