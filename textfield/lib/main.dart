import 'package:flutter/material.dart';

void main()=>runApp(
	new MaterialApp(
		home: MyTextField(),
	)
);

class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => new _MyTextFieldState();
 }
class _MyTextFieldState extends State<MyTextField> {

	String valor = "";
	final TextEditingController controllerText = new TextEditingController();

	void onSubmitted(String value){
		print(value);
		setState(() {
			valor = valor + "\n"+ value;
			controllerText.text = "";
		});
	}

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
	 appBar: new AppBar(
		 title: new Text("TextField"),
		 backgroundColor: Colors.transparent,
	 ),
	 body: new Container(
		 padding: const EdgeInsets.all(10.0),
		 child: new Center(
			 child: new Column(
				 crossAxisAlignment: CrossAxisAlignment.stretch,
				 children: <Widget>[
					 new TextField(
						 decoration: new InputDecoration(hintText: "Ingrese texto"),
						 onSubmitted: (String value){onSubmitted(value);}, // Pasar el valor que se tome del textField
						 controller: controllerText,
					 ),
					 new Text(valor),
				 ],
			 ),
		 ),
	 ),
   );
  }
}