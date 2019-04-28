import 'package:card/publicacion-widget.dart';
import 'package:flutter/material.dart';
import 'package:card/inmueble-model.dart';

class Inicio extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return new Scaffold(
   appBar: new AppBar(
     title: new Text("Prueba"),
   ), 
   body: 
   new Container(

     margin: const EdgeInsets.all(10),
     child: new ListView.builder(
       itemBuilder: (_,i)=>new PublicacionItem(publicacionModel: publicaciones[i],),
       itemCount: publicaciones.length,
     ),
   ),
 );
 }
}