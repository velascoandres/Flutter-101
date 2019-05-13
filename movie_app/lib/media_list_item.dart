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
        new Container(
          child: new Stack(
            children: <Widget>[
                 new FadeInImage.assetNetwork(
                  placeholder: "assets/placeholder.png",
                  image: media.getbackdropPath(),
                  fit: BoxFit.cover,
                  fadeInDuration: new Duration(milliseconds: 40),
                  height: 200.0,
                  width: double.infinity,
                ),
                new Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  right: 0.0,
                  child: new Container(
                    decoration: new BoxDecoration(
                      color: Colors.grey[900].withOpacity(0.5)  // opacidad
                    ),
                    constraints: new BoxConstraints.expand(
                         height: 55.0 // Restriccion a este elemento   
                    ),
                  ),
                ),
                new Positioned(
                  left: 10.0,
                  bottom: 20.0,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        child: new Text(
                          media.title,
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                      new Container(
                        width: 250, //Limite para el elipsis
                        padding: const EdgeInsets.only(top: 4.0),
                        child: new Text(
                          media.getGenres(),
                          style: new TextStyle(color: Colors.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis, // Overflow de puntos suspensivos
                        ),
                      )
                    ],
                  ),
                ),
                new Positioned(
                  right: 5.0,
                  bottom: 10.0,
                  child: new Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new Text(
                          media.vote_average.toString()
                        ),
                        new Container(width: 4.0,),
                        new Icon(Icons.star,color: Colors.white,size: 16,),
                        ],
                      ),
                      new Container(height: 4.0,),
                      new Row(
                        children: <Widget>[
                          new Text(media.getReleaseYear().toString()),
                          new Container(width: 4.0,),
                          new Icon(Icons.date_range,color: Colors.white,size: 16,)
                        ],
                      )
                    ],
                  ),
                )
            ],
          )
       

        ),
      ],
    ),
  );
 }
}