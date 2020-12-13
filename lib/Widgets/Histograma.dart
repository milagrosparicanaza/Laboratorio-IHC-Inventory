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
                            SalesData('Jan', 35),
                            SalesData('Feb', 28),
                            SalesData('Mar', 34),
                            SalesData('Apr', 32),
                            SalesData('Jun', 12),
                            SalesData('Jul', 25),
                            SalesData('Aug', 32),
                            SalesData('Sep', 17)
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