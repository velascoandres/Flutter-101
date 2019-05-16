import 'dart:io';
import 'package:card/servicios/publicacion.service.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:card/widgets/widgets_img_lib.dart';


class PublicacionCrear extends StatefulWidget {

  

  @override
  _PublicacionCrearState createState() => new _PublicacionCrearState();
 }
class _PublicacionCrearState extends State<PublicacionCrear> {

    // Diccionarios de rutas
    Map<String, String> _rutasImagenesFachada,_rutasImagenesParqueadero,_rutasImagenesInteriores; 
    // Lista de rutas 
    List<String> imagenesFachada,imagenesPargqueadero,imagenesInterioes;


    int _pasoActual = 0;
    
    void _abrirExporadorArchivosFachada() async{
        _rutasImagenesFachada = null;
        _rutasImagenesFachada = await FilePicker.getMultiFilePath(type: FileType.IMAGE );
        if (!mounted) return;
        setState(() {
          //_nombreArchivo= _rutasImagenesFachada.values.toList().toString();
            imagenesFachada = _rutasImagenesFachada.values.toList();
        });
    }
    void _abrirExporadorArchivosInteriores() async{
        _rutasImagenesInteriores = null;
        _rutasImagenesInteriores = await FilePicker.getMultiFilePath(type: FileType.IMAGE );
        if (!mounted) return;
        setState(() {
            imagenesInterioes = _rutasImagenesInteriores.values.toList();
        });
    }
    void _abrirExporadorArchivosParqueadero() async{
        _rutasImagenesParqueadero = null;
        _rutasImagenesParqueadero = await FilePicker.getMultiFilePath(type: FileType.IMAGE );
        if (!mounted) return;
        setState(() {
            imagenesPargqueadero = _rutasImagenesParqueadero.values.toList();
        });
    }

    void _publicar(){
      
      subir_imagenes(imagenesFachada);
      //subir(imagenesFachada);
      setState(() {
        _rutasImagenesFachada = null;
      });
    }
  
  
  @override
  Widget build(BuildContext context) {
   return new Container(
     child: new Scaffold(
       appBar: new AppBar(
         title: new Text("Publicar"),
       ),
       body: new Container(
         child: new ListView(
           children: <Widget>[
             new Stepper(physics:  ClampingScrollPhysics(),
           currentStep: this._pasoActual,
           steps: <Step>[
                  new Step(
                    title: new Text("Titulo de la publicacion"),
                    content: new TextField()
                  ),
                  new Step(
                    title: new Text("Descripcion de la propiedad"),
                    content: new TextField()
                  ),
                  new Step(
                    title: new Text("Fotos de la Fachada"),
                    content:  new Column(
                                children: <Widget>[
                                  new RaisedButton(
                                    onPressed: () =>  _abrirExporadorArchivosFachada(),
                                    child: Text("Subir imagenes"),
                                  ),
                                   imagenesFachada!=null?new VisorImagenes(urls: imagenesFachada,localStorage: true,):new Text("No hay imagenes"),
                                ],
                              ),
                          
                  ),
                  new Step(
                    title: new Text("Fotos del Parqueadero"),
                    content:  new Column(
                                children: <Widget>[
                                  new RaisedButton(
                                    onPressed: () =>  _abrirExporadorArchivosParqueadero(),
                                    child: Text("Subir imagenes"),
                                  ),
                                   imagenesPargqueadero!=null?new VisorImagenes(urls: imagenesPargqueadero,localStorage: true,):new Text("No hay imagenes"),
                                ],
                              ),
                          
                  ),
                  new Step(
                    title: new Text("Fotos de los interiores"),
                    content:  new Column(
                                children: <Widget>[
                                  new RaisedButton(
                                    onPressed: () =>  _abrirExporadorArchivosInteriores(),
                                    child: Text("Subir imagenes"),
                                  ),
                                   imagenesInterioes!=null?new VisorImagenes(urls: imagenesInterioes,localStorage: true,):new Text("No hay imagenes"),
                                ],
                              ),
                          
                  ),
                  
           ],
           type: StepperType.vertical,
           onStepContinue: (){
             setState(() {
                _pasoActual < 2? _pasoActual++: _pasoActual = 0;
             });
           },
           onStepCancel: (){
             setState(() {
                _pasoActual > 0? _pasoActual--: _pasoActual = 0;
             });
           },
           onStepTapped: (step){
             setState(() {
                _pasoActual = step;
             });
           },
             ),
             new RaisedButton(
               child: new Text("Publicar"),
               onPressed: (){_publicar();},
              )   
           ],
         
         ),
         ),
       ),
  
   );
  }
}


