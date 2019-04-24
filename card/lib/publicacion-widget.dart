import 'package:flutter/material.dart';
import 'package:card/inmueble-model.dart';


class PublicacionItem extends StatelessWidget {
  final Publicacion publicacionModel;
  PublicacionItem({this.publicacionModel});

 @override
 Widget build(BuildContext context) {
  return new Container(
    margin: const EdgeInsets.only(
      left: 12,
      right: 12,
      top: 12,
      bottom: 0
    ),
    child: new Column(
      children: <Widget>[
      
        new Container(
          padding: const EdgeInsets.all(150.0),
          decoration: new BoxDecoration(
            image: new DecorationImage(
            image: new NetworkImage(publicacionModel.portadaUrl),
            fit: BoxFit.cover,
          ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight:Radius.circular(5),
            )
          ),
        ),
        
        new Container(
          padding: const EdgeInsets.only(
            right: 25
          ),
          decoration: new BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight:Radius.circular(5),
            )
          ),
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new ListTile(
                  title: new Text(publicacionModel.nombre, style: new TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  subtitle: new Text('\$'+publicacionModel.precio.toString(), style: new TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                ),
              ),
              new RaisedButton(
                child: new Text("Informacion",style: new TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                onPressed: (){},
                color: Colors.redAccent,
              )
            ],
          )

        )
        
        
      ],
    ),
 );
 }
}