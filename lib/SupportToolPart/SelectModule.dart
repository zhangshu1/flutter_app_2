import 'package:flutter/material.dart';
import 'Sugar.dart';

var assetImageSugar = new AssetImage('images/pic.jpg');
var imageSugar = new Image(image: assetImageSugar);

var assetImageTemperature = new AssetImage('images/pic.jpg');
var imageTemperature = new Image(image: assetImageTemperature);

var assetImageAirway = new AssetImage('images/pic.jpg');
var imageAirway = new Image(image: assetImageAirway);

var assetImageBlood = new AssetImage('images/pic.jpg');
var imageBlood = new Image(image: assetImageBlood);

var assetImageLab = new AssetImage('images/pic.jpg');
var imageLab = new Image(image: assetImageLab);

var assetImageEmotional = new AssetImage('images/pic.jpg');
var imageEmotional = new Image(image: assetImageEmotional);

class SelectModule extends StatefulWidget {
  @override
  SelectModuleState createState() => new SelectModuleState();
}

class SelectModuleState extends State<SelectModule> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Select Module'),
      ),

      body: new Container(
        child: new ModuleListView(
          modules: [
            // Some problems with images, cannot be shown
            new Module(new ImageIcon(assetImageAirway), 'Sugar', new MaterialPageRoute(builder: (_) => new Sugar(),)),
            new Module(new ImageIcon(assetImageAirway), 'Temperature', null),
            new Module(new ImageIcon(assetImageAirway), 'Airway', null),
            new Module(new ImageIcon(assetImageAirway), 'Blood Pressure', null),
            new Module(new ImageIcon(assetImageAirway), 'Lab Work', null),
            new Module(new ImageIcon(assetImageAirway), 'Emotional Support', null), // TO BE IMPLEMENTED
          ],
        ),
      ),
    );
  }
}

class Module {
  ImageIcon icon;
  String title;
  Route route;
  Module(this.icon, this.title, this.route);
}

class ModuleItem extends StatefulWidget {
  final Module module;
  ModuleItem(Module module):
        module = module,
        super(key: new ObjectKey(module));

  @override
  ModuleItemState createState() => new ModuleItemState(module);
}

class ModuleItemState extends State<ModuleItem> {
  final Module module;
  ModuleItemState(this.module);

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: const BoxDecoration(
        border: const Border(
          bottom: const BorderSide(color: Colors.grey),
        ),
      ),
      child: new ListTile(
        leading: module.icon,
        title: new Text(module.title, style: new TextStyle(fontSize: 18.0, color: Colors.black),),
        onTap: (){
          Navigator.push(
            context,
            module.route,
          );
        },
      ),
    );
  }
}

class ModuleListView extends StatefulWidget {
  List<Module> modules;
  ModuleListView({Key key, this.modules}): super(key: key);

  @override
  ModuleListViewState createState() => new ModuleListViewState();
}

class ModuleListViewState extends State<ModuleListView> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Expanded(
            child: new ListView(
              padding: new EdgeInsets.symmetric(vertical: 8.0),
              children: widget.modules.map((Module module) {
                return new ModuleItem(module);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}