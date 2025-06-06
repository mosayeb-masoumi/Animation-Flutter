import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 28,
            ),
            Container(
                width: 200,
                height: 200,
                color: Colors.transparent,
                child: Stack(
                  children: [
                    PieChart(

                      PieChartData(

                        sections: showingSections(),
                        borderData: FlBorderData(show: true),
                        centerSpaceRadius: 60,
                        sectionsSpace: 2,
                        titleSunbeamLayout: false,
                        startDegreeOffset: 0
                      ),
                      duration: const Duration(seconds: 2000), // Optional
                      curve: Curves.easeOutExpo,
                      // Optional
                    ),
                    
                    Center(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("hjjhjhjh"),
                        Text("hjjhjhjh"),
                      ],
                    ))
                  ],
                ))
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return [
      PieChartSectionData(
        gradient: LinearGradient(colors: [Colors.blue , Colors.blue.shade100]),
        // color: Colors.blue,
        value: 70,
        title: '',
        radius: 35,
        titleStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      PieChartSectionData(
        titlePositionPercentageOffset: 0.4,
        showTitle: true,
        gradient: LinearGradient(colors: [Colors.red , Colors.red.shade100]),
        badgeWidget: Container(width: 20,height: 20, color: Colors.green,),
        borderSide: BorderSide(color: Colors.green , width: 2),
        color: Colors.red,
        value: 25,
        title: '',
        radius: 25,
        titleStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ];
  }

// int touchedIndex = -1;
//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: AspectRatio(
//       aspectRatio: 1.3,
//       child: Row(
//         children: <Widget>[
//           const SizedBox(
//             height: 18,
//           ),
//           Expanded(
//             child: AspectRatio(
//               aspectRatio: 1,
//               child: PieChart(
//                 PieChartData(
//                   pieTouchData: PieTouchData(
//                     touchCallback: (FlTouchEvent event, pieTouchResponse) {
//                       setState(() {
//                         if (!event.isInterestedForInteractions ||
//                             pieTouchResponse == null ||
//                             pieTouchResponse.touchedSection == null) {
//                           touchedIndex = -1;
//                           return;
//                         }
//                         touchedIndex = pieTouchResponse
//                             .touchedSection!.touchedSectionIndex;
//                       });
//                     },
//                   ),
//                   borderData: FlBorderData(
//                     show: false,
//                   ),
//                   sectionsSpace: 0,
//                   centerSpaceRadius: 40,
//                   sections: showingSections(),
//                 ),
//               ),
//             ),
//           ),
//           const Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Indicator(
//                 color: Colors.blue,
//                 text: 'First',
//                 isSquare: true,
//               ),
//               SizedBox(
//                 height: 4,
//               ),
//               Indicator(
//                 color: Colors.yellow,
//                 text: 'Second',
//                 isSquare: true,
//               ),
//               SizedBox(
//                 height: 4,
//               ),
//               Indicator(
//                 color: Colors.purple,
//                 text: 'Third',
//                 isSquare: true,
//               ),
//               SizedBox(
//                 height: 4,
//               ),
//               Indicator(
//                 color: Colors.green,
//                 text: 'Fourth',
//                 isSquare: true,
//               ),
//               SizedBox(
//                 height: 18,
//               ),
//             ],
//           ),
//           const SizedBox(
//             width: 28,
//           ),
//         ],
//       ),
//     ),
//   );
// }
//
// List<PieChartSectionData> showingSections() {
//   return List.generate(4, (i) {
//     final isTouched = i == touchedIndex;
//     final fontSize = isTouched ? 25.0 : 16.0;
//     final radius = isTouched ? 60.0 : 50.0;
//     const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
//     switch (i) {
//       case 0:
//         return PieChartSectionData(
//           color: Colors.blue,
//           value: 40,
//           title: '40%',
//           radius: radius,
//           titleStyle: TextStyle(
//             fontSize: fontSize,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//             shadows: shadows,
//           ),
//         );
//       case 1:
//         return PieChartSectionData(
//           color: Colors.yellow,
//           value: 30,
//           title: '30%',
//           radius: radius,
//           titleStyle: TextStyle(
//             fontSize: fontSize,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//             shadows: shadows,
//           ),
//         );
//       case 2:
//         return PieChartSectionData(
//           color: Colors.purple,
//           value: 15,
//           title: '15%',
//           radius: radius,
//           titleStyle: TextStyle(
//             fontSize: fontSize,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//             shadows: shadows,
//           ),
//         );
//       case 3:
//         return PieChartSectionData(
//           color: Colors.green,
//           value: 15,
//           title: '15%',
//           radius: radius,
//           titleStyle: TextStyle(
//             fontSize: fontSize,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//             shadows: shadows,
//           ),
//         );
//       default:
//         throw Error();
//     }
//   });
// }
}
