import 'package:flutter/material.dart';

import '../Material/MenuDrawer.dart';
import '../Material/MyCheckbox.dart';

//void main() => runApp(new MaterialApp(
//  title: 'Order Additional Tests',
//  home: new OrderAdditionalTests(),
//));

class OrderAdditionalTests extends StatelessWidget {
  var cb1 = new MyCheckbox(false, 'Daily repeated CBC with differential');
  var cb2 = new MyCheckbox(false, 'CRP (C-Reactive Protein)');
  var cb3 = new MyCheckbox(false, 'Blood gas');
  var cb4 = new MyCheckbox(false, 'Electrolytes');
  var cb5 = new MyCheckbox(false, 'Clotting studies');

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),
      appBar: new AppBar(
        title: new Text(
          'Order Additional Tests',
          style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white), textScaleFactor: 0.6,
        ),
      ),

      body: new Container(
          alignment: Alignment.center,
          child: new Column(
            children: <Widget>[
              new Container(
                  child: new MyCheckboxList(
                    myCheckbox: [
                      cb1, //TODO: add icon to explain terms
                      cb2,
                      cb3,
                      cb4,
                      cb5,
                    ],
                  )
              ),

              new RaisedButton(   //TODO: check if any box is checked
                  child: new Text('Submit'),
                  onPressed: () {
                    if (!cb1.isChecked && !cb2.isChecked && !cb3.isChecked &&
                        !cb4.isChecked && !cb5.isChecked) {
                      showDialog(
                          context: context,
                          child: new AlertDialog(
                            content: const Text(
                                'Please select at least one test to continue'),
                            actions: <Widget>[
                              new RaisedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('OK'),
                              )
                            ],
                          )
                      );
                    }
                    else {
                      showDialog(
                          context: context,
                          child: new AlertDialog(
                            content: new Text(
                                'Are you sure to order this test?'),
                            actions: <Widget>[
                              new RaisedButton(
                                  child: new Text('Cancel'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  }
                              ),

                              new RaisedButton(
                                  child: new Text('Submit'),
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        child: new AlertDialog(
                                          content: new Text(
                                              'New test added successfully!'),
                                          actions: <Widget>[
                                            //TODO: used 2 pop functions
                                            new RaisedButton(
                                                child: new Text("OK"),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                  Navigator.of(context).pop();
                                                })
                                          ],
                                        )
                                    );
                                  }
                              )
                            ],
                          )
                      );
                    }
                  }
              )

            ],
          )
      ),
    );
  }
}