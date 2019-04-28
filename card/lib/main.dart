import 'package:flutter/material.dart';
import 'package:card/pages/Inicio.dart';
import 'package:card/pages/PublicacionCrear.dart';
import 'package:card/pages/Busqueda.dart';

void main() {
  runApp(new MaterialApp(
      theme: new ThemeData(
        brightness: Brightness.dark,                        // new
      ),
   home:Prototipo(),
  ));
}

class Prototipo extends StatefulWidget {
  

  @override
  _PrototipoState createState() => new _PrototipoState();
 }
class _PrototipoState extends State<Prototipo> with SingleTickerProviderStateMixin{

   Drawer _getDrawer(BuildContext context){

      var header = new DrawerHeader(child: new Text("Opciones"),);
      var info = new AboutListTile(
        child: new Text("Informacion App"),
        applicationIcon: new Icon(Icons.location_searching),
        icon: new Icon(Icons.info),
        applicationVersion: "v0.0.1",
        applicationName: "PimbaSoft",
        );


      ListTile _getItem(Icon icon, String descripcion, String ruta){
        return new ListTile(
          leading: icon,
          title: new Text(descripcion),
          onTap: (){
            setState(() {
              Navigator.of(context).pushNamed(ruta);
          });
        },
      );
    }
    ListView _listView = new ListView(children: <Widget>[
      header,
      info,
      _getItem(new Icon(Icons.person), "Perfil", "/configuracion"),
      _getItem(new Icon(Icons.exit_to_app), "Cerrar Sesion", "/"),

    ],);

    return new Drawer(
      child: _listView,
    );
}

  TabController controladorTap;

  @override
  void initState(){
    super.initState();
    controladorTap = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
   return new Container(
     child: new Scaffold(
       appBar: new AppBar(
         title: new Text("Inmobiliaria"),
       ),
       drawer: new Drawer(
         child: _getDrawer(context),
       ),
       bottomNavigationBar: new Material(
         color: Colors.black12,
         child: new TabBar(
           controller: controladorTap,
           tabs: <Widget>[
             new Tab(
               icon: new Icon(Icons.home),
             ),
             new Tab(
               icon: new Icon(Icons.create),
             ),
             new Tab(
               icon: new Icon(Icons.search),
             ),
           ],

         ),
       ),
       body: new TabBarView(
         controller: controladorTap,
         children: <Widget>[
           new Inicio(),
           new PublicacionCrear(),
           new Busqueda(),
         ],
       ),
     ),
   );
  }
}


