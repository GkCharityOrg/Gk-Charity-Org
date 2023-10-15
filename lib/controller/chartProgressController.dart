import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

import '../model/chartProgress.dart';

class BarChart extends StatelessWidget {
  final List<DeveloperSeries> data = [
    DeveloperSeries(
      month: "Jan",
      developers: 40000,
      barColor:
          charts.ColorUtil.fromDartColor(Color.fromARGB(255, 15, 94, 158)),
    ),
    DeveloperSeries(
      month: "Feb",
      developers: 5000,
      barColor:
          charts.ColorUtil.fromDartColor(Color.fromARGB(255, 15, 94, 158)),
    ),
    DeveloperSeries(
      month: "Mar",
      developers: 40000,
      barColor:
          charts.ColorUtil.fromDartColor(Color.fromARGB(255, 15, 94, 158)),
    ),
    DeveloperSeries(
      month: "Apr",
      developers: 35000,
      barColor:
          charts.ColorUtil.fromDartColor(Color.fromARGB(255, 15, 94, 158)),
    ),
    DeveloperSeries(
      month: "Jun",
      developers: 45000,
      barColor:
          charts.ColorUtil.fromDartColor(Color.fromARGB(255, 15, 94, 158)),
    ),
    DeveloperSeries(
      month: "Jul",
      developers: 40000,
      barColor:
          charts.ColorUtil.fromDartColor(Color.fromARGB(255, 15, 94, 158)),
    ),
    // DeveloperSeries(
    //   month: "Aug",
    //   developers: 5000,
    //   barColor: charts.ColorUtil.fromDartColor(Colors.green),
    // ),
    // DeveloperSeries(
    //   month: "Sep",
    //   developers: 40000,
    //   barColor: charts.ColorUtil.fromDartColor(Colors.green),
    // ),
    // DeveloperSeries(
    //   month: "Oct",
    //   developers: 35000,
    //   barColor: charts.ColorUtil.fromDartColor(Colors.green),
    // ),
    // DeveloperSeries(
    //   month: "Nov",
    //   developers: 45000,
    //   barColor: charts.ColorUtil.fromDartColor(Colors.green),
    // ),
    // DeveloperSeries(
    //   month: "Dec",
    //   developers: 30000,
    //   barColor: charts.ColorUtil.fromDartColor(Colors.green),
    // ),
  ];

  BarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: DeveloperChart(
            data: data,
          ),
        ),
      ),
    );
  }
}

class DeveloperChart extends StatelessWidget {
  final List<DeveloperSeries>? data;

  const DeveloperChart({super.key, this.data});
  @override
  Widget build(BuildContext context) {
    List<charts.Series<DeveloperSeries, String>> series = [
      charts.Series(
          id: "developers",
          data: data!,
          domainFn: (DeveloperSeries series, _) => series.month.toString(),
          measureFn: (DeveloperSeries series, _) => series.developers,
          colorFn: (DeveloperSeries series, _) => series.barColor)
    ];

    return charts.BarChart(series, animate: true);
  }
}
