import 'package:flutter/material.dart';

void main(){
  runApp(
      new MaterialApp(
        home: MyApp(),
      )
  );
}

// build mostrar en pantalla todo lo que se hace en el widget

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final double iconSize = 40.0;
    final TextStyle textStyle = new TextStyle(color: Colors.indigo,fontSize: 30.0,fontStyle: FontStyle.normal);
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Stateless"),
        ),
        body: new Container(
          child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyCard( title: new Text("I love flutter",style: textStyle,),icon: new Icon(Icons.favorite,size: iconSize,color: Colors.redAccent,)),
              new MyCard( title: new Text("I like this video",style: textStyle),icon: new Icon(Icons.touch_app,size: iconSize,color: Colors.blueAccent)),
              new MyCard( title: new Text("Dart is cool",style: textStyle),icon: new Icon(Icons.switch_camera,size: iconSize,color: Colors.blueGrey))
            ],
          ),
          ),
        ),
    );
  }
}

class MyCard extends StatelessWidget{
  final Widget title;
  final Widget icon;
  
  MyCard({this.title,this.icon});

  @override
  Widget build(BuildContext context){
    return new Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: new Card(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
        child:  Column(
          children: <Widget>[
            this.title,this.icon
          ],
        ),
      ),
    )
    );
  }
}