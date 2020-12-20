import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'Bar.dart';

class Histograma extends StatefulWidget {
  @override
  _HistogramaState createState() => _HistogramaState();
}

class _HistogramaState extends State<Histograma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text('Gastos Mensuales'),
        ),
        drawer: Barra(),
        body: Center(
            child: Container(
                child: SfCartesianChart(
                    // Initialize category axis
                    primaryXAxis: CategoryAxis(),
                    series: <BarSeries<SalesData, String>>[
              BarSeries<SalesData, String>(
                  // Bind data source
                  dataSource: <SalesData>[
                    SalesData('En', 20000),
                    SalesData('Feb', 15000),
                    SalesData('Mar', 15800),
                    SalesData('Abr', 18300),
                    SalesData('May', 23600),
                    SalesData('Jun', 22300),
                    SalesData('Jul', 19200),
                    SalesData('Ago', 13800),
                    SalesData('Sep', 18600),
                    SalesData('Oct', 21300),
                    SalesData('Nov', 22800),
                    SalesData('Dic', 15800),
                  ],
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  dataLabelSettings: DataLabelSettings(isVisible: true)),
            ]))));
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
