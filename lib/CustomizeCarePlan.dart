import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
    title: 'Customize Care Plan',
    home: new CustomizeCarePlan(),
));

class CustomizeCarePlan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //DrawerHeader for future use (dashboard, login page etc.)
            new DrawerHeader(
              child: new Text('Menu Options'),
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
            child: new Text('Please select the care actions in sequence to create your own customized care plan.'),
          ),

          new Container(
            padding: new EdgeInsets.only(left: 15.0),
            alignment: Alignment.centerLeft,
            child: new Text(
                'Suggested Care Plan',
                style: new TextStyle(color: Colors.green, fontSize: 20.0),),
          ),

          new Container(
            child: new CarePlanList(
              carePlan: [
                new CarePlan('Establish IV access', false),
                new CarePlan('infuse D10W at 80 mL/kg/day ', false),
                new CarePlan('Calculate rate', false),
                new CarePlan('Screen the blood sugar', false),
                new CarePlan('Treat hypoglycemia', false),
                new CarePlan('Calculate D10W bolus (2 mL/kg)', false),
                new CarePlan('Treat hypotension', false),
                new CarePlan('Calculate saline bolus (10 mL/kg)', false),
                new CarePlan('Treat anemia', false),
                new CarePlan('Calculate packed red blood cell transfusion volume (10 mL/kg)', false),
              ],
            ),
          ),

          new Container(
            padding: new EdgeInsets.symmetric(horizontal: 15.0),
            alignment: Alignment.centerRight,
            child: new RaisedButton(
              onPressed: (){showDialog(
                  context: context,
                  child: new AlertDialog(
                    content: new Text('Are you sure you want to keep this care plan?'),
                    actions: <Widget>[
                      new RaisedButton(onPressed: null, child: new Text('Cancel'),),
                      new RaisedButton(onPressed: null, child: new Text('Yes'),),
                    ],
                  ),
              );},
              child: new Text('Save'),
            ),
          ),
        ],
      ),
    );
  }
}

// Implement ListView
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
  CarePlanList({Key key, this.carePlan}): super(key: key);
  List<CarePlan> carePlan;

  @override
  CarePlanListState createState() => new CarePlanListState();
}

class CarePlanListState extends State<CarePlanList>{
  @override
  Widget build(BuildContext context){
    return new Container(
      height: 500.0,
      child: new Column(
//        mainAxisSize: MainAxisSize.max,
//        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          new Expanded(
              child: new ListView(
                padding: new EdgeInsets.symmetric(vertical: 8.0),
                children: widget.carePlan.map((CarePlan carePlan){
                      return new CarePlanItem(carePlan);
                    }).toList(),
              )
          )
        ],
      ),
    );
  }
}