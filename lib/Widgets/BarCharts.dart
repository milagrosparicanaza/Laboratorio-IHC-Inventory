import 'package:flutter/material.dart';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;

class ChartsDemo extends StatefulWidget {
  ChartsDemo(): super();
  final String title = "Report Users";

  @override
  ChartsDemoState createState() => ChartsDemoState();
}

class ChartsDemoState extends State<ChartsDemo>{
  List<charts.Series> seriesList;

  static List<charts.Series<Sales,String>> _createRandomData(){
    final random = Random();
    final desktopSalesData = [
      Sales('2010', random.nextInt(100)),
      Sales('2011', random.nextInt(100)),
      Sales('2012', random.nextInt(100)),
      Sales('2013', random.nextInt(100)),
      Sales('2014', random.nextInt(100)),
      Sales('2015', random.nextInt(100)),
      Sales('2016', random.nextInt(100)),
    ];
    return [charts.Series<Sales,String>(
      id: 'Sales',
      domainFn: (Sales sales, _) => sales.producto,
      measureFn: (Sales sales, _) => sales.cantidad,
      data: desktopSalesData,
      fillColorFn: (Sales sales, _){
        return(sales.producto == 'Cera')
            ? charts.MaterialPalette.red.shadeDefault
            : charts.MaterialPalette.green.shadeDefault;
      },
    )];
  }

  barChart(){
    return charts.BarChart(
      seriesList,
      animate: true,
      vertical: true,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    seriesList = _createRandomData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: barChart(),
        ),
    );
  }
}
class Sales{
  final String producto;
  final int cantidad;

  Sales(this.producto, this.cantidad);

}