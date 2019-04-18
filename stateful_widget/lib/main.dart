import 'package:flutter/material.dart';

void main()=>
		runApp(
			new MaterialApp(
				home:new MyButton(),
			)
		);


// Create State sirve para manejar el estado del widget, es el metodo que notifica que el estado de widget es actualizado
class MyButton extends StatefulWidget{
	@override
	_MyButtonState createState()=> new _MyButtonState();
}



// La logica se maneja en una clase distinta
// State<MyButton> es el stateful widget es el contralor del estado del MyButton
class _MyButtonState extends State<MyButton>{
	String flutterText = "";
	List<String> collections = ["Flutter","es","genial"];
	var index = 0;


	void onPressButton(){
		setState(() { // Actualizar el estado del widget y todo el widget sea renderizado nuevamente
		  flutterText = collections[index];
		  index = index < collections.length-1 ? index + 1 : 0;
		});
  	}

  @override
  Widget build(BuildContext context) { // Es el encargado de describir los widgets que se esta ingresando en el retorno del widget renderizdado
    
    return new Scaffold(
		appBar: new AppBar(
			title: new Text("Stateful widget"),
			backgroundColor: Colors.orangeAccent,
		),
		body: new Container(
			child: new Center(

			child: new Column(
				mainAxisAlignment: MainAxisAlignment.center, // Centrar todo el contenido la columna
				children: <Widget>[
					new Text(flutterText,style: new TextStyle(fontSize: 30.00),),
					new Padding( padding: new EdgeInsets.all(10.00)),
					new RaisedButton(//Dibujar un boton rectangular en pantalla
						child: new Text("Actualizar",style: new TextStyle(color: Colors.white),),
						color: Colors.blueAccent,
						onPressed: onPressButton, // Callback
					)
				],
			),
		),
	)
	);
  }
}
