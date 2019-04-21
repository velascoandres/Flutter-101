import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/camera_alt.dart';
import 'package:whatsapp_clone/pages/chat_list.dart';
import 'package:whatsapp_clone/pages/status_screen.dart';
import 'package:whatsapp_clone/pages/calls_screen.dart';
import 'package:whatsapp_clone/pages/contacts.dart';
import 'package:camera/camera.dart';
import 'dart:async';

List<CameraDescription> cameras;

// Asincrono
Future<Null> main() async{
  cameras = await availableCameras();
  runApp(new MaterialApp(
   home: MyApp(),
  ));
}


class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return new MaterialApp(
    title: "WhatsappClone",
    theme: new ThemeData(
      primaryColor: new Color(0xff075E54),
      accentColor: new Color(0xff25D366),
    ),
    debugShowCheckedModeBanner: false,
    home: new WhatsAppClone(cameras: cameras,),
 );
 }
}

class WhatsAppClone extends StatefulWidget {
  final List<CameraDescription> cameras;

  WhatsAppClone({this.cameras});

  @override
  _WhatsAppCloneState createState() => new _WhatsAppCloneState();
 }
class _WhatsAppCloneState extends State<WhatsAppClone> with SingleTickerProviderStateMixin{

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: new AppBar(
       title: new Text("WhatsApp"),
       bottom: new TabBar(
         controller: _controller,
         tabs: 
         <Widget>[
         new Tab(
           icon: new Icon(Icons.camera_alt),
         ),
         new Tab(
           text:  "CHATS",
         ),
         new Tab(
           text: "ESTADOS"
         ),
        new Tab(
          text: "LLAMADAS",
        )
       ],
     ),
     ),
     body: new TabBarView(
       controller: _controller,
       children: <Widget>[
         new Camera(cameras: widget.cameras,),
         new ChatList(),
         new Status(),
         new Calls(),
       ],
     ),
     floatingActionButton: new FloatingActionButton(
       backgroundColor: Theme.of(context).accentColor,
       child: new Icon(
         Icons.message,
         color: Colors.white,
       ),
       onPressed: (){
         var router = new MaterialPageRoute(
           builder: (BuildContext context) => new Contacts());
           Navigator.of(context).push(router);
       },
     ), 
   );
  }
}