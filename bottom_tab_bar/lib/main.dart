import 'package:flutter/material.dart';
import 'package:bottom_tab_bar/pages/plane.dart';
import 'package:bottom_tab_bar/pages/watch.dart';
import 'package:bottom_tab_bar/pages/alarm.dart';

void main() {
  runApp(new MaterialApp(
   home: new MyBottonTabBar(),
  ));
}

class MyBottonTabBar extends StatefulWidget {
  @override
  _MyBottonTabBarState createState() => new _MyBottonTabBarState();
 }
class _MyBottonTabBarState extends State<MyBottonTabBar> with SingleTickerProviderStateMixin{
	TabController controladorTab;
	@override
	void initState() {
		super.initState();
		controladorTab = new TabController(length: 3,vsync: this);
  	}

  @override
  Widget build(BuildContext context) {
   return new Container(
	   child: new Scaffold(
		   appBar: new AppBar(
				title: new Text("Barra de navegacion"),

		   ),

		   bottomNavigationBar: new Material(
			   color: Colors.blueAccent, // Se debe poner color o sino no se muestra nada
			   child: new TabBar(
				   indicatorColor: Colors.red,
				   labelColor: Colors.black,
				   unselectedLabelColor: Colors.black12,
				   controller: controladorTab,
				   tabs: <Widget>[
					   new Tab(
						   icon: new Icon(Icons.watch_later),
					   ),
					   new Tab(
						   icon: new Icon(Icons.alarm),
					   ),
					   new Tab(
						   icon: new Icon(Icons.airplanemode_active),
					   ),
				   ],
			   ),
		   ),
		   body: new TabBarView(
			   controller: controladorTab,
			   children: <Widget>[
				   	new Watch(),   
					new Alarm(),
					new Plane()
			   ],
		   ),
	   ),
   );
  }
}