import 'package:flutter/material.dart';

class Blank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('A Blank Page'),
      ),
      
      body: new Text('To be continued'),
    );
  }
}