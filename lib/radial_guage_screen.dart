import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialGaugeScreen extends StatefulWidget {
  const RadialGaugeScreen({super.key});

  @override
  State<RadialGaugeScreen> createState() => _RadialGaugeScreenState();
}

class _RadialGaugeScreenState extends State<RadialGaugeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    // width: 250,
                    //   height: 250,
                    child: SfRadialGauge(
                  enableLoadingAnimation: true,
                  animationDuration: 4500,
                  title: GaugeTitle(
                      text: "Speedometer",
                      textStyle: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                  axes: <RadialAxis>[
                    RadialAxis(
                      // backgroundImage: AssetImage("assets/images/apple2.png"),
                      interval: 10,
                      showLastLabel: true,
                      useRangeColorForAxis: false,
                      showTicks: true,
                      minimum: 0,
                      maximum: 160,
                      pointers: const <GaugePointer>[
                        MarkerPointer(
                          color: Colors.blue,
                          value: 90,
                          enableAnimation: true,
                          markerHeight: 20,

                        ),
                        NeedlePointer(
                          value: 90,
                          enableAnimation: true,
                          needleColor: Colors.red,
                          knobStyle: KnobStyle(
                            color: Colors.green,
                            knobRadius: 0.1,
                            borderWidth: 0.02,
                            borderColor: Colors.grey,
                          ),
                          gradient: LinearGradient(colors: [
                            Color(0xFF231557),
                            Color(0xFFFFFFFF),
                          ]),
                        )
                      ],

                      // axisLineStyle: AxisLineStyle(
                      //     gradient: SweepGradient(colors: <Color>[
                      //       Color(0xFFE7627D),
                      //       Color(0xFF231557),
                      //       Color(0xFF44107A),
                      //       Color(0xFFFF1361),
                      //       Color(0xFFFFF800),
                      //     ], stops: <double>[
                      //       0,
                      //       0.25,
                      //       0.5,
                      //       0.75,
                      //       1
                      //     ])),

                      ranges: <GaugeRange>[
                        GaugeRange(
                          startValue: 0,
                          endValue: 50,
                          color: Colors.green,
                        ),
                        GaugeRange(
                          startValue: 50,
                          endValue: 100,
                          color: Colors.yellow,
                        ),
                        GaugeRange(
                          startValue: 100,
                          endValue: 160,
                          color: Colors.red,
                        ),
                      ],
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                          widget: Text(
                            "90 MPH",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          positionFactor: 0.5,
                          angle: 90,
                        )
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
