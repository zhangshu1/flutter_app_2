import 'package:flutter/material.dart';

import '../Material/all.dart';
import '../Material/globals.dart' as globals;

//void main() => runApp(new MaterialApp(
//  title: 'View Recommended Test',
//    home: new ViewRecTest(),
//));

class ViewRecTest extends StatelessWidget {
  var cb1 = new MyCheckbox(false, 'Daily repeated CBC with differential');
  var cb2 = new MyCheckbox(false, 'CRP (C-Reactive Protein)');
  var cb3 = new MyCheckbox(false, 'Electrolytes');
  var cb4 = new MyCheckbox(false, 'Clotting studies');

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
          'View Recommended Test',
          style: Theme
              .of(context)
              .textTheme
              .display1
              .copyWith(color: Colors.white), textScaleFactor: globals.textScaleFactor,
        ),
      ),

      body: new Container(
          alignment: Alignment.center,
          child: new Column(
            children: <Widget>[
              new Container( //TODO: adjust container size
                child: new MyCheckboxList(
                  myCheckbox: [
                    cb1,
                    cb2,
                  ],
                ),
              ),

              new Container(
                child: new Column(
                  children: <Widget>[
                    new Container(
                        child: new Text('Risk-specific Medical Tests', textScaleFactor: globals.textScaleFactor,
                          style: new TextStyle(fontSize: 16.0),),
                        alignment: Alignment.center
                    ),
                    new Container(
                      child: new Text(
                        'Owing to, abnormal reflex, the following tests are recommended', textScaleFactor: globals.textScaleFactor,
                        style: new TextStyle(color: Colors.orange),
                        textAlign: TextAlign.center,),
                    )
                  ],
                ),
              ),

              new Container(
                child: new MyCheckboxList(
                  myCheckbox: [
                    cb3,
                    cb4,
                  ],
                ),
              ),

              new RaisedButton(
                  child: new Text('Submit', textScaleFactor: globals.textScaleFactor),

                  onPressed: () {
                    if (!cb1.isChecked && !cb2.isChecked && !cb3.isChecked &&
                        !cb4.isChecked) {
                      showDialog(
                          context: context,
                          child: new AlertDialog(
                            content: new Text(
                                'Please select at least one test to continue', textScaleFactor: globals.textScaleFactor),
                            actions: <Widget>[
                              new RaisedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: new Text('OK', textScaleFactor: globals.textScaleFactor),
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
                                'Are you sure to order this test?', textScaleFactor: globals.textScaleFactor),
                            actions: <Widget>[
                              new RaisedButton(
                                  child: new Text('Cancel', textScaleFactor: globals.textScaleFactor),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  }
                              ),

                              new RaisedButton(
                                  child: new Text('Submit', textScaleFactor: globals.textScaleFactor),
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        child: new AlertDialog(
                                          content: new Text(
                                              'New test added successfully!', textScaleFactor: globals.textScaleFactor),
                                          actions: <Widget>[
                                            new RaisedButton(
                                                child: new Text("OK", textScaleFactor: globals.textScaleFactor),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                  Navigator.of(context).pop();
                                                }
                                            )
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
              ),

            ],
          )
      ),
    );
  }
}



