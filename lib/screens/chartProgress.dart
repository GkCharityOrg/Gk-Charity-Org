// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class ChartReport extends StatefulWidget {
// // ignore: prefer_const_constructors_in_immutables
//   ChartReport({Key? key}) : super(key: key);

//   @override
//   ChartReportState createState() => ChartReportState();
// }

// class ChartReportState extends State<ChartReport> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Yearly Donations'),
//           backgroundColor: Colors.blue,
//         ),
//         body: SfCartesianChart(
//             primaryXAxis: CategoryAxis(),
//             // Chart title
//             title: ChartTitle(text: 'Monthly wise spending Reports'),
//             // Enable legend
//             legend: Legend(isVisible: true),
//             // Enable tooltip
//             tooltipBehavior: TooltipBehavior(enable: true),
//             series: <ChartSeries<_Infections, String>>[
//               LineSeries<_Infections, String>(
//                   dataSource: <_Infections>[
//                     _Infections('Jan', 3500),
//                     _Infections('Feb', 28000),
//                     _Infections('Mar', 34000),
//                     _Infections('Apr', 32000),
//                     _Infections('May', 4000),
//                     _Infections('Jun', 60000),
//                     _Infections('Jul', 3500),
//                     _Infections('Aug', 28000),
//                     _Infections('Sep', 34000),
//                     _Infections('Oct', 32000),
//                     _Infections('Nov', 4000),
//                     _Infections('Dec', 60000)
//                   ],
//                   xValueMapper: (_Infections Donations, _) => Donations.year,
//                   yValueMapper: (_Infections Donations, _) =>
//                       Donations.Donations,
//                   // Enable data label
//                   dataLabelSettings: DataLabelSettings(isVisible: true))
//             ]));
//   }
// }

// class _Infections {
//   _Infections(this.year, this.Donations);

//   final String year;
//   final double Donations;
// }
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class ChartReport extends StatelessWidget {
  final List<charts.Series>? seriesList;
  final bool? animate;

  const ChartReport(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory ChartReport.withSampleData() {
    return ChartReport(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: charts.BarChart(
        seriesList as dynamic,
        animate: animate,
      ),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      OrdinalSales('Jan', 5),
      OrdinalSales('Feb', 25),
      OrdinalSales('Mar', 100),
      OrdinalSales('Apr', 75),
      OrdinalSales('May', 75),
      OrdinalSales('Jun', 5),
      // new OrdinalSales('Jul', 25),
      // new OrdinalSales('Aug', 100),
      // new OrdinalSales('Sep', 75),
      // new OrdinalSales('Oct', 5),
      // new OrdinalSales('Nov', 25),
      // new OrdinalSales('Dec', 100),
    ];

    return [
      charts.Series<OrdinalSales, String>(
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
