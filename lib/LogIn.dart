import 'package:flutter/material.dart';

import 'MenuPage.dart';

class User {
  String userName = '';
  String password = '';
}

class LogIn extends StatefulWidget {
  const LogIn({ Key key }) : super(key: key);

  @override
  LogInInfoState createState() => new LogInInfoState();
}

class LogInInfoState extends State<LogIn> {
  User user = new User();
//  static final String adminName = 'test';
//  static final String adminPassword = '1';

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  bool _autoValidate = false;

  String validateUserName (String val){
    if(val.isEmpty)
      return 'Please enter user name';

    return null;
  }

  String validatePassword (String val){
    if(val.isEmpty)
      return 'Please enter password';

    return null;
  }

  @override
  Widget build(BuildContext context){
    return new WillPopScope(
        onWillPop: () async => false,
        child: new Scaffold(
            appBar: new AppBar(
            title: new Text('Log In', textAlign: TextAlign.left, style: new TextStyle(color: Colors.white)),
            automaticallyImplyLeading: false,   //works same as WillPopScope, which stops user from going back to previous routes
          ),

          body: new SafeArea(
            child: new Form(
              key: _formKey,
              autovalidate: _autoValidate,

              child: new ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),

                  children: <Widget>[
                    new TextFormField(
                      initialValue: user.userName,
                      decoration: new InputDecoration(labelText: 'User Name'),
                      keyboardType: TextInputType.text,
                      validator: validateUserName,
                      onSaved: (String value) {user.userName = value;},
                    ),

                    new TextFormField(
                      initialValue: '',
                      obscureText: true,
                      decoration: const InputDecoration(labelText: 'Password',),
                      keyboardType: TextInputType.text,
                      validator: validatePassword,
                      onSaved: (String value) {user.password = value;},
                    ),

                    new Container(
                      child: new RaisedButton(
                          child: new Text('Log In'),
                          onPressed: _handleSubmit,
                      ),
                    )
                  ]
              ),
            ),
          )
      ),
    );
  }

  void _handleSubmit() {
    final FormState form = _formKey.currentState;

    if(!form.validate()) {
      _autoValidate = true;
      final redSnackbar = new SnackBar(content: const Text('Please re-enter field that marked in red', style: const TextStyle(fontSize: 18.0, color: Colors.black),));
      _scaffoldKey.currentState.showSnackBar(redSnackbar);
    } else {
      form.save();
      if ((user.userName == 'Test' || user.userName == 'test') && user.password == '1'){
        showDialog(
            context: context,
            child: new AlertDialog(
              title: const Text('Login sucessfully', style: const TextStyle(fontSize: 18.0, color: Colors.black),),
              content: new Text('Welcome back ${user.userName}!', style: const TextStyle(fontSize: 18.0, color: Colors.black),),
              actions: <Widget>[
                new RaisedButton(
                    child: new Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop(true);
                      Navigator.push(context, new MaterialPageRoute(builder: (_) => new MenuPage()));
                    })
              ],
            )
        );
      } else {
        showDialog(
            context: context,
            child: new AlertDialog(
              title: const Text('Login failed', style: const TextStyle(fontSize: 18.0, color: Colors.black),),
              content: new Text("There's no match information matched in our system ${user.userName}", style: const TextStyle(fontSize: 18.0, color: Colors.black),),
              actions: <Widget>[
                new RaisedButton(
                  child: new Text('OK'),
                  onPressed: (){Navigator.pop(context);},
                )
              ],
            )
        );
      }
    }
  }
}