import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:async';

class Camera extends StatefulWidget {
  final List<CameraDescription> cameras;
  Camera({this.cameras});

  @override
  _CameraState createState() => new _CameraState();
 }
class _CameraState extends State<Camera> {
  CameraController controller;
  @override
  void initState(){
    super.initState();
    controller = new CameraController(widget.cameras[0], ResolutionPreset.medium);
    controller.initialize().then((_){
      if(!mounted){
        return;   
      }
      setState(() {
        
      });
    }
      
    );
  }

  @override
  void dispose() {
    controller?.dispose(); //Eliminar objetos
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   if(!controller.value.isInitialized){
    return new Container();
   }
   return new AspectRatio( //Acomodar la camara al widget
     aspectRatio: controller.value.aspectRatio, 
     child: new CameraPreview(controller),
   );
  }
}