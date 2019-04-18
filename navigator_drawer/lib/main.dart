import 'package:flutter/material.dart';
import 'package:navigator_drawer/pages/home.dart';
import 'package:navigator_drawer/pages/battery.dart';
import 'package:navigator_drawer/pages/settings.dart';


void main() {
  runApp(new MaterialApp(
   home: Home(),
   routes: <String,WidgetBuilder>{
     Battery.routeName: (BuildContext context) => new Battery(),
     Settings.routeName: (BuildContext context) => new Settings(),
   },
  ));
}



