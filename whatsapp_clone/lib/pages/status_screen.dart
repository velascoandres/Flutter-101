import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/status_model.dart';


class Status extends StatefulWidget {
  @override
  _StatusState createState() => new _StatusState();
 }
class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     body: new ListView(
       children: <Widget>[
         new ListTile(
           leading: new CircleAvatar(
             backgroundImage: new NetworkImage(status[2].imgUrl),
             foregroundColor: Theme.of(context).accentColor,
             backgroundColor: Colors.grey,
           ),
           title: new Text(
             status[0].name,
             style: new TextStyle(fontWeight: FontWeight.bold),
           ),
           subtitle: new Text("Añadir a mi estado"),
         ),
         new Text(
           "Recientes",
           style: new TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
         ),
         new Divider(),
         new ListTile(
           leading: new CircleAvatar(
             backgroundImage: new NetworkImage(status[3].imgUrl),
             foregroundColor: Theme.of(context).accentColor,
             backgroundColor: Colors.grey,
           ),
           title: new Text(
             status[2].name,
             style: new TextStyle(fontWeight: FontWeight.bold),
           ),
           subtitle: new Text("Añadir a mi estado"),
         ),
         new ListTile(
           leading: new CircleAvatar(
             backgroundImage: new NetworkImage(status[0].imgUrl),
             foregroundColor: Theme.of(context).accentColor,
             backgroundColor: Colors.grey,
           ),
           title: new Text(
             status[0].name,
             style: new TextStyle(fontWeight: FontWeight.bold),
           ),
           subtitle: new Text("Añadir a mi estado"),
         ),
       ],
     ),
   );
  }
}