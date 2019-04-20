import 'package:flutter/material.dart';
import 'package:list_view/contact.dart';
void main() {
  runApp(new MaterialApp(
   home: new Scaffold(
     appBar: new AppBar(
       title: new Text("Contactos"),
     ),
     body: new Contact(),
   ),
  ));
}
