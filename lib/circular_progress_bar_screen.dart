import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';

class CircularProgressBarScreen extends StatefulWidget {
  const CircularProgressBarScreen({super.key});

  @override
  State<CircularProgressBarScreen> createState() =>
      _CircularProgressBarScreenState();
}

class _CircularProgressBarScreenState extends State<CircularProgressBarScreen> {
  final ValueNotifier<double> _valueNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildSimpleCircular(),
              SizedBox(
                height: 10,
              ),
              buildSemiCircular(),
              SizedBox(
                height: 10,
              ),
              buildAccuracy(),
              SizedBox(
                height: 10,
              ),
              buildDashed(),
              SizedBox(
                height: 10,
              ),

            ],
          ),
        ),
      ),
    );
  }

  SizedBox buildDashed() {
    return SizedBox(
              width: 150,
              height: 150,
              child: DashedCircularProgressBar.square(
                dimensions: 350,
                progress: 180,
                maxProgress: 360,
                startAngle: -27.5,
                foregroundColor: Colors.redAccent,
                backgroundColor: const Color(0xffeeeeee),
                foregroundStrokeWidth: 7,
                backgroundStrokeWidth: 7,
                foregroundGapSize: 5,
                foregroundDashSize: 55,
                backgroundGapSize: 5,
                backgroundDashSize: 55,
                animation: true,
                child: const Icon(Icons.favorite,
                    color: Colors.redAccent, size: 75),
              ),
            );
  }

  SizedBox buildAccuracy() {
    return SizedBox(
      width: 150,
      height: 150,
      child: DashedCircularProgressBar.aspectRatio(
        aspectRatio: 1,
        // width ÷ height
        valueNotifier: _valueNotifier,
        progress: 37,
        startAngle: 225,
        sweepAngle: 270,
        foregroundColor: Colors.green,
        backgroundColor: const Color(0xffeeeeee),
        foregroundStrokeWidth: 15,
        backgroundStrokeWidth: 15,
        animation: true,
        seekSize: 6,
        seekColor: const Color(0xffeeeeee),
        child: Center(
          child: ValueListenableBuilder(
              valueListenable: _valueNotifier,
              builder: (_, double value, __) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${value.toInt()}%',
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 20),
                      ),
                      Text(
                        'Accuracy',
                        style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      ),
                    ],
                  )),
        ),
      ),
    );
  }

  SizedBox buildSemiCircular() {
    return SizedBox(
      width: 150,
      height: 150,
      child: DashedCircularProgressBar.aspectRatio(
        aspectRatio: 2,
        // width ÷ height
        progress: 70,
        startAngle: 270,
        sweepAngle: 180,
        circleCenterAlignment: Alignment.bottomCenter,
        foregroundColor: Colors.black,
        backgroundColor: const Color(0xffeeeeee),
        foregroundStrokeWidth: 3,
        backgroundStrokeWidth: 2,
        backgroundGapSize: 2,
        backgroundDashSize: 1,
        seekColor: Colors.yellow,
        seekSize: 22,
        animation: true,
      ),
    );
  }

  SizedBox buildSimpleCircular() {
    return SizedBox(
      width: 150,
      height: 150,
      child: DashedCircularProgressBar.aspectRatio(
        aspectRatio: 1,
        // width ÷ height
        valueNotifier: _valueNotifier,
        progress: 478,
        maxProgress: 670,
        corners: StrokeCap.butt,
        foregroundColor: Colors.blue,
        backgroundColor: const Color(0xffeeeeee),
        foregroundStrokeWidth: 18,
        backgroundStrokeWidth: 30,
        animation: true,
        child: Center(
          child: ValueListenableBuilder(
            valueListenable: _valueNotifier,
            builder: (_, double value, __) => Text(
              '${value.toInt()}%',
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
