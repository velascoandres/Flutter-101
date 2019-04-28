import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';


class PublicacionCrear extends StatefulWidget {

  

  @override
  _PublicacionCrearState createState() => new _PublicacionCrearState();
 }
class _PublicacionCrearState extends State<PublicacionCrear> {

    Map<String, String> _rutasImagenesFachada;
    String _nombreArchivo;

    int _pasoActual = 0;

    void _abrirExporadorArchivos() async{
        _rutasImagenesFachada = null;
        _rutasImagenesFachada = await FilePicker.getMultiFilePath(type: FileType.IMAGE );
        if (!mounted) return;
        setState(() {
          _nombreArchivo = _rutasImagenesFachada != null ? _rutasImagenesFachada.keys.toString() : '...';
          print(_nombreArchivo);
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
         child: new Stepper(
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
                    content: new RaisedButton(
                              onPressed:() =>  _abrirExporadorArchivos() ,
                              child: Text("Subir imagenes"),
                          )
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
       ),
     ),
  
   );
  }
}


