import 'package:flutter/material.dart';
import 'package:card/inmueble-model.dart';
import 'package:card/widgets/widgets_img_lib.dart';

class PublicacionItem extends StatelessWidget {
  final Publicacion publicacionModel;
  PublicacionItem({this.publicacionModel});

 @override
 Widget build(BuildContext context) {
  return  new Column(
      children: <Widget>[
        //new Carusel(urls: publicacionModel.portadaUrl,),
        new Divider(
          height: 20,
        ),
        new ImageCarousel(urls: publicacionModel.portadaUrl),
         new Container(
           padding: const EdgeInsets.all(5),
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
                  title: new Text('\$'+publicacionModel.precio.toString(), style: new TextStyle(color: Colors.white,fontSize: 20),),
                  subtitle: new Text(publicacionModel.nombre, style: new TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                ),
              ),
              new RaisedButton(
                child: new Text("Información",style: new TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                onPressed: (){},
                color: Colors.redAccent,
              )
            ],
            ) 
         ), 
          ], 
 );
 }
}


//1-1-12-2