import 'package:flutter/material.dart';
import 'CreateCarePlan.dart';

void main() => runApp(new MaterialApp(
    title: 'Customize Care Plan',
    home: new CustomizeCarePlan(),
    routes: <String, WidgetBuilder> {
      '/CreateCarePlan': (BuildContext context) => new CreateCarePlan(),
    },
));

class CustomizeCarePlan extends StatelessWidget{    //TODO: cant go back after customized
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
                      new RaisedButton(onPressed: (){Navigator.pop(context);}, child: new Text('Cancel'),),
                      new RaisedButton(onPressed: (){Navigator.of(context).pushNamed('/CreateCarePlan');}, child: new Text('Yes'),),
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