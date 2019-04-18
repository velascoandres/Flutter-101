import 'package:flutter/material.dart';

//runApp correr la primera funcion que se ejecuta
// todo lo que se crea en flutter es un widget

// Es posible anidar widgets 
/*
void main()=> 
	runApp(
		new Center(
			child:new Directionality(
						textDirection:TextDirection.ltr,
						child: new Text("Hello World")
					)
		)
	);
*/	
// Material, permite envolver widget para usar los widgets de material desing
// Scaffold, permite crear un esquema dentro de una aplicacion de flutter

void main() =>
	runApp(
		new MaterialApp(
			title: "Mi primera aplicacion",
			home: new Scaffold(
				appBar: new AppBar(
					title: new Text("Mi primera app"),
				),
				body: new Container(
					child: new Center(
						child: new Text("Hello world"),
					),
				),
			),
			
		)
	);