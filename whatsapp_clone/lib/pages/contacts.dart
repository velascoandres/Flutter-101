import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/contact_model.dart';
import 'package:whatsapp_clone/pages/chat_screen.dart';


class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => new _ContactsState();
 }
class _ContactsState extends State<Contacts> {

  

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
    appBar: new AppBar(
      title: new Text("Seleccionar"),
    ),
    body: new ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (_,i) => new Column(
        children: <Widget>[
          new Divider(
           height: 10.0,
         ),
          new ListTile(
            leading: new CircleAvatar(
              backgroundImage: new NetworkImage(contacts[i].imageUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(contacts[i].name, style: new TextStyle(fontWeight: FontWeight.bold),),
                new Text("MOBILE", style: new TextStyle(color: Theme.of(context).accentColor),)
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(contacts[i].message, style: new TextStyle(color: Colors.grey, fontSize: 15.0)),
            ),
            onTap: (){
              var route = new MaterialPageRoute(
                builder: (BuildContext context)=>new ChatScreen(name: contacts[i].name,)
              );
              Navigator.of(context).push(route);
            },
          )
        ],
      ),
    ),
   );
  }
}