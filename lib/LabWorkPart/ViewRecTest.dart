import 'package:flutter/material.dart';

import '../Material/MenuDrawer.dart';
import '../Material/MyCheckbox.dart';

//void main() => runApp(new MaterialApp(
//  title: 'View Recommended Test',
//    home: new ViewRecTest(),
//));

class ViewRecTest extends StatelessWidget {
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
            .copyWith(color: Colors.white), textScaleFactor: 0.6,
        ),
      ),

      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          children: <Widget>[
            new Container(    //TODO: adjust container size
              child: new MyCheckboxList(
                myCheckbox: [
                  new MyCheckbox(false, 'Daily repeated CBC with differential'),  //TODO: add icon to explain terms
                  new MyCheckbox(false, 'CRP (C-Reactive Protein)')
                ],
              ),
            ),

            new Container(
              child: new Column(
                children: <Widget>[
                  new Container(
                    child: new Text('Risk-specific Medical Tests', style: new TextStyle(fontSize: 16.0),),
                    alignment: Alignment.center
                  ),
                  new Container(
                    child: new Text('Owing to, abnormal reflex, the following tests are recommended', style: new TextStyle(color: Colors.orange), textAlign: TextAlign.center,),
                  )
                ],
              ),
            ),

            new Container(
              child: new MyCheckboxList(
                myCheckbox: [
                  new MyCheckbox(false, 'Electrolytes'),
                  new MyCheckbox(false, 'Clotting studies')
                ],
              ),
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
                        }
                      )
                    ],
                  )
                );
              }
            ),

          ],
        )
      ),
    );
  }
}