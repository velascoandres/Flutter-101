import 'package:flutter/material.dart';

class Alarm extends StatelessWidget {
	@override
 	Widget build(BuildContext context) {
	 	return new Container(
       child: new Scaffold(
         backgroundColor: Colors.black87,
         body: new Container(
           child: new Center(
             child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
				        children: <Widget>[
					        new Icon(
						       Icons.alarm,
						       size: 170,
						       color: Colors.redAccent
					        ),
					        new Text("Alarma",
                  style: new TextStyle(
                      color: Colors.white
                    ),),
				        ],
			 ),
           ),
         )
       )
			 
		 );
 	}
}