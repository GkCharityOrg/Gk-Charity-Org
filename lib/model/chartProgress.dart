import 'package:charts_flutter/flutter.dart' as charts;

class DeveloperSeries {
  final String month;
  final int developers;
  final charts.Color barColor;

  DeveloperSeries(
      {required this.month, required this.developers, required this.barColor});
}
