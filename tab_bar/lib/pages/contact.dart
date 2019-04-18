import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
	@override
 	Widget build(BuildContext context) {
	 	return new Container(
			 child: new Column(
				 children: <Widget>[
					 new Icon(
						 Icons.contact_phone,
						 size: 170,
						 color: Colors.redAccent
					 ),
					 new Text("Video"),
				 ],
			 ),
		 );
 	}
}