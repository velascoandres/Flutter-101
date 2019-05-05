import 'package:flutter/material.dart';
import 'package:movie_app/model/media.dart';



class MediaListItem extends StatelessWidget {
  final Media media;
  MediaListItem(this.media);

 @override
 Widget build(BuildContext context) {
  return new Card(
    child: new Column(
      children: <Widget>[
        new FadeInImage.assetNetwork(
          placeholder: "assets/placeholder.png",
          image: media.getbackdropPath(),
          fit: BoxFit.cover,
          fadeInDuration: new Duration(milliseconds: 40),
          height: 200.0,
          width: double.infinity,
        )
      ],
    ),
  );
 }
}