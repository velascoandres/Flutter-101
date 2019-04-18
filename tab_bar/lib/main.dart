import 'package:flutter/material.dart';
import 'package:tab_bar/pages/home.dart';
import 'package:tab_bar/pages/video.dart';
import 'package:tab_bar/pages/contact.dart';

void main() {
  runApp(new MaterialApp(
   home: TabBarra(),
  ));
}

class TabBarra extends StatefulWidget {
   @override
    _TabBarraState createState() => new _TabBarraState();
  }


class _TabBarraState extends State<TabBarra> with SingleTickerProviderStateMixin{ // Sirve para la animacion en el tabcontroller
	TabController controller;

	@override
	void initState(){ // Metodo que se llama cuando el widget es creado
		super.initState();
		controller = new TabController(length: 3, vsync: this);
	}

    @override
    Widget build(BuildContext context) {
    return new Container(
		child: new Scaffold(
			appBar: new AppBar(
				title: new Text("Video Tabs"),
				backgroundColor: Colors.redAccent,
				bottom: new TabBar(
					controller: controller,
					tabs: <Widget>[
						new Tab(
							icon: new Icon(Icons.home),
						),
						new Tab(
							icon: new Icon(Icons.ondemand_video),
						),
						new Tab(
							icon: new Icon(Icons.contacts),
						)
					]
				),
			),
			body: new TabBarView(
				children: <Widget>[
					new Home(), new Video(), new Contact(),
				],
				controller: controller,
			),
		),
    );
  }
}