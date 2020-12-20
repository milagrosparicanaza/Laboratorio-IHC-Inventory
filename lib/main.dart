import 'package:flutter/material.dart';
import 'package:inventory/Widgets/BarCharts.dart';
import 'package:inventory/Widgets/Histograma.dart';
import 'package:inventory/Widgets/LineChart.dart';
import 'package:inventory/Widgets/Login.dart';
import 'package:inventory/Widgets/Recover.dart';
import 'package:inventory/Widgets/Register.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:inventory/generated/l10n.dart';

import 'Widgets/FusionCharts.dart';
import 'Widgets/Perfil.dart';
import 'Widgets/crud.dart';
import 'Widgets/pieChart.dart';

void main() => runApp(InventoryApp());

class InventoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        '/crud': (context) => Crud(),
        '/perfil': (context) => Perfil(),
        '/barChart': (context) => ChartsDemo(),
        '/histograma': (context) => Histograma(),
        '/pieChart': (context) => PieChartPage(),
        '/fusionChart': (context) => FusionChart(),
        '/lineChart': (context) => LinealChart(),
      },
      initialRoute: '/one',
    );
  }
}
