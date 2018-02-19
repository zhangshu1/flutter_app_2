import 'package:flutter/material.dart';

import '../Material/MenuDrawer.dart';
import '../Material/MyCheckbox.dart';

void main() => runApp(new MaterialApp(
  title: 'Customize Care Plan',
  home: new OrderAdditionalTests(),
));
class OrderAdditionalTests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),
      appBar: new AppBar(
//        leading: new IconButton(
//          icon: new Icon(Icons.arrow_drop_down_circle, size: 42.0, color: Colors.white,),
//          onPressed: null),
        title: new Text(
          'Order Additional Tests',
          style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white), textScaleFactor: 0.6,
        ),
      ),

      body: new Column(
        children: <Widget>[
          new Container(
            alignment: Alignment.center,
            child: new Column(
              children: <Widget>[
                new Container(
                  child: new MyCheckboxList(
                    myCheckbox: [
                      new MyCheckbox(false, 'Daily repeated CBC with differential'),  //TODO: add icon to explain terms
                      new MyCheckbox(false, 'CRP (C-Reactive Protein)'),
                      new MyCheckbox(false, 'Blood gas'),
                      new MyCheckbox(false, 'Electrolytes'),
                      new MyCheckbox(false, 'Clotting studies'),
                    ],
                  )
                ),

                new RaisedButton(   //TODO: check if any box is checked
                  child: new Text('Submit'),
                  onPressed: () {
                    showDialog(
                      context: context,
                      child: new AlertDialog(
                        content: new Text('Are you sure to order this test?'),
                        actions: <Widget>[
                          new RaisedButton(
                            child: new Text('Cancel'),
                            onPressed: () {Navigator.of(context).pop();}
                          ),
                          new RaisedButton(
                            child: new Text('Submit'),
                            onPressed: (){
                              showDialog(
                                context: context,
                                child: new AlertDialog(
                                  content: new Text('New test added successfully!'),
                                  actions: <Widget>[
                                    //TODO: used 2 pop functions
                                    new RaisedButton(child: new Text("OK"), onPressed: (){Navigator.of(context).pop();Navigator.of(context).pop();})
                                  ],
                                )
                              );
                            })
                        ],
                      )
                    );
                  }
                )
              ],
            )
          )
        ],
      ),
    );
  }
}