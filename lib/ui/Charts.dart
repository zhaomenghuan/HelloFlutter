import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:hello_flutter/BasePage.dart';

// https://google.github.io/charts/flutter/gallery.html
class ChartsPage extends StatelessWidget {
  List<charts.Series> seriesList;
  bool animate = false;

  @override
  Widget build(BuildContext context) {
    this.seriesList = _createSampleData();
    return BasePage(
        title: '图表',
        body: Container(
          child: new charts.BarChart(
            seriesList,
            animate: animate,
          )
        ));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      new OrdinalSales('2014', 5),
      new OrdinalSales('2015', 25),
      new OrdinalSales('2016', 100),
      new OrdinalSales('2017', 75),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}