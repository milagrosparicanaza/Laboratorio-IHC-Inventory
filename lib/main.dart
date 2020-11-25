import 'package:flutter/material.dart';
import 'package:inventory/Widgets/Login.dart';
import 'package:inventory/Widgets/Recover.dart';
import 'package:inventory/Widgets/Register.dart';

import 'Widgets/Register1.dart';
import 'Widgets/crud.dart';

void main() => runApp(InventoryApp());

class InventoryApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      routes: {
        '/one': (context) => Login(),
        '/two': (context) => Registro(),
        '/tree': (context) => Recover(),
        '/four': (context) => Crud(),
      },
      initialRoute: '/one',
    );
  }
}