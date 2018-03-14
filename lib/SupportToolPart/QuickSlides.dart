import 'package:flutter/material.dart';
import '../Material/globals.dart' as globals;

class QuickSlides extends StatefulWidget {

  @override
  QuickSlidesState createState() => new QuickSlidesState();
}

class QuickSlidesState extends State<QuickSlides> {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Quick Slides', textScaleFactor: globals.textScaleFactor,),
      ),

//      body: ,
    );
  }
}