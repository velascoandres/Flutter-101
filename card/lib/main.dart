import 'package:card/publicacion-widget.dart';
import 'package:flutter/material.dart';
import 'package:card/inmueble-model.dart';


void main() {
  runApp(new MaterialApp(
   home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return new Scaffold(
   appBar: new AppBar(
     title: new Text("Prueba"),
   ), 
   body: new Container(
     child: new ListView.builder(
       itemBuilder: (_,i)=>new PublicacionItem(publicacionModel: publicaciones[i],),
       itemCount: publicaciones.length,
     ),
   ),
 );
 }
}