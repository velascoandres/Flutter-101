import 'dart:io';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


// Visor de imagenes para una galeria en especifico
class VisorImagenes extends StatefulWidget {
    final List<String> urls;
    final bool localStorage;


  VisorImagenes({this.urls,this.localStorage});

  @override
  _VisorImagenesState createState() => new _VisorImagenesState();
   
 }
 

class _VisorImagenesState extends State<VisorImagenes> {
  @override
  Widget build(BuildContext context) {
   return new Container(
     height: 200,
       child: new ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: widget.urls.length,
              itemBuilder: (BuildContext context, int index) => new Container(
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: widget.localStorage?FileImage(new File(widget.urls[index]),scale: 0.3): new NetworkImage(widget.urls[index]),
                    fit: BoxFit.cover
                  )
                ),
                margin: const EdgeInsets.all(10),
              )
       
            ),
            );
  }
}




// Carusel de imagenes 
class ImageCarousel extends StatefulWidget {
  final List<String> urls;
  ImageCarousel({this.urls});
  _ImageCarouselState createState() => new _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  Animation<double> animation;
  AnimationController controller;

  // Armar una lista de NetWorkImages en base a la lista de URLS
  List<NetworkImage> _getNetImages(List<String> urls){
    
    List <NetworkImage> arregloNetImage = [];
    
    for( String url in urls){
        arregloNetImage.add(new NetworkImage(url));
    }
    return arregloNetImage;
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    Widget carousel = new Carousel(
      boxFit: BoxFit.cover,
      images: _getNetImages(widget.urls),
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds: 1),
      autoplay: false,
      dotSize: 4,
      dotSpacing: 7,
    );

    return new Container(
          height: screenHeight / 2,
          child: carousel,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight:Radius.circular(5),
            )
          )
      );
  }

}


