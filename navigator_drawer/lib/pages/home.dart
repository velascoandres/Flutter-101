import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
 }


class _HomeState extends State<Home> {
  Drawer _getDrawer(BuildContext context){
      var header = new DrawerHeader(child: new Text("Ajustes"),);
      var info = new AboutListTile(
        child: new Text("Informacion App"),
        applicationIcon: new Icon(Icons.favorite),
        icon: new Icon(Icons.info),
        applicationVersion: "v1.0.0",
        applicationName: "Demo drawer",
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
      _getItem(new Icon(Icons.settings), "Configuracion", "/configuracion"),
      _getItem(new Icon(Icons.home), "Pagina Principal", "/"),
      _getItem(new Icon(Icons.battery_charging_full), "Bateria", "/bateria"),

    ],);

    return new Drawer(
      child: _listView,
    );
  }
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: new AppBar(
       title: new Text("Demo Menu"),
     ),
     drawer: new Drawer(
       child: _getDrawer(context),
     ),
   );
  }
}