import 'package:flutter/material.dart';

class Plane extends StatelessWidget {
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
						       Icons.airplanemode_active,
						       size: 170,
						       color: Colors.redAccent
					        ),
					        new Text(
                    "Plane",
                    style: new TextStyle(
                      color: Colors.white
                    ),
                    ),
				        ],
			 ),
           ),
         )
       )
			 
		 );
 	}
}