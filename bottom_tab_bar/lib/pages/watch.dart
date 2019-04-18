import 'package:flutter/material.dart';

class Watch extends StatelessWidget {
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
						       Icons.watch,
						       size: 170,
						       color: Colors.blueGrey
					        ),
					        new Text("Watch",style: new TextStyle(
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