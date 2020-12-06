import 'package:flutter/material.dart';
import 'package:inventory/Widgets/Login.dart';
import 'package:inventory/Widgets/Recover.dart';
import 'package:inventory/Widgets/Register.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:inventory/generated/l10n.dart';


import 'Widgets/crud.dart';

void main() => runApp(InventoryApp());

class InventoryApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
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