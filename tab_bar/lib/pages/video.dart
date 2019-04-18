import 'package:flutter/material.dart';

class Video extends StatelessWidget {
	@override
 	Widget build(BuildContext context) {
	 	return new Container(
			 child: new Column(
				 children: <Widget>[
					 new Icon(
						 Icons.switch_video,
						 size: 170,
						 color: Colors.black45
					 ),
					 new Text("Video"),
				 ],
			 ),
		 );
 	}
}