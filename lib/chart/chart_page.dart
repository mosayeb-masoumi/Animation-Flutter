import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        SizedBox(
            height: 200,
            // child: SfCartesianChart(
            //     // Initialize category axis
            //     primaryXAxis: CategoryAxis(),
            //     series: <LineSeries<SalesData, String>>[
            //       LineSeries<SalesData, String>(
            //           // Bind data source
            //           dataSource: <SalesData>[
            //             SalesData('Jan', 10),
            //             SalesData('Feb', 12),
            //             SalesData('Mar', 11),
            //             SalesData('Apr', 7),
            //             SalesData('May', 10)
            //           ],
            //           xValueMapper: (SalesData sales, _) => sales.year,
            //           yValueMapper: (SalesData sales, _) => sales.sales)
            //     ])
              ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 200,
          width: 200,
          // child: SfSparkLineChart.custom(
          //   //Enable the trackball
          //   trackball: const SparkChartTrackball(
          //       activationMode: SparkChartActivationMode.tap),
          //   //Enable marker
          //   marker: const SparkChartMarker(
          //       displayMode: SparkChartMarkerDisplayMode.all),
          //   //Enable data label
          //   labelDisplayMode: SparkChartLabelDisplayMode.all,
          //   xValueMapper: (int index) => data[index].year,
          //   yValueMapper: (int index) => data[index].sales,
          //   dataCount: 5,
          // ),
        ),
        const SizedBox(
          height: 20,
        ),

      ],
    ));
  }
}

List<SalesData> data = [
  SalesData('Jan', 35),
  SalesData('Feb', 28),
  SalesData('Mar', 34),
  SalesData('Apr', 32),
  SalesData('May', 40)
];

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
