import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
   home: new Primero(),
  ));
}

class Primero extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return new Scaffold(
    appBar: new AppBar(
      title: new Text("Primera Pantalla"),
    ),
    body: new Center(
      child: new RaisedButton(
        child: new Text("Mostrar Pantalla"),
        onPressed: (){
          Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context)=> new Segunda()
            )
          );
        },
      ),
    ),
  );
 }
}


class Segunda extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return new Scaffold(
  appBar: new AppBar(
    title: new Text("Segunda Pantalla"),
  ),
  body: new Center(
    child: new RaisedButton(
      child: Text("Mostrar Pantalla"),
      onPressed: (){
        Navigator.pop(context);
      },
    ),
  ),
 );
 }
}