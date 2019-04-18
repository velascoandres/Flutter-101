import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
   home: new MyDialog(),
  ));
}

class MyDialog extends StatefulWidget {
  

  @override
  _MyDialogState createState() => new _MyDialogState();
 }

// Enumerador
enum DialogAction{
    yes,
    no
}

class _MyDialogState extends State<MyDialog> {

  String _inputValue = "";
  
  // Guion bajo, alcanze privado
  void _showAlert(String value){
    AlertDialog dialog = new AlertDialog(
      content: new Text(value),
      actions: <Widget>[
        new FlatButton(onPressed: (){_alertResult(DialogAction.yes,context);}, child: new Text("Si"),),
        new FlatButton(onPressed: (){_alertResult(DialogAction.no,context);}, child: new Text("No"),),
      ],
    );
    showDialog(context: context, child: dialog);
  }

  void _alertResult(DialogAction action, BuildContext context){
    print("Tu seleccion es $action");
    Navigator.pop(context);
  }

  void _onChanged(value){
    setState(() {
     _inputValue = value; 
    });
  }

  @override
  Widget build(BuildContext context) {
   return new Container(
     child: new Scaffold(
       appBar: new AppBar(
         title: new Text("Dialog Demo"),
       ),
       body: new Container(
         child: new Center(
           child: new Column(
             children: <Widget>[
               new TextField(
                 decoration: new InputDecoration(
                   hintText: "Ingresa texto"
                 ),
                 onChanged: (String value){_onChanged(value)},
               ),
              new RaisedButton(
                child: new Text("Mostrar"),
                onPressed: (){_showAlert(_inputValue);},
              )
             ],
           ),
         ),
       ),
     ),
   );
  }
}