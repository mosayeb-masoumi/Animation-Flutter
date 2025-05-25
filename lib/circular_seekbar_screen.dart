import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/material.dart';

class CircularSeekbarScreen extends StatefulWidget {
  const CircularSeekbarScreen({super.key});

  @override
  State<CircularSeekbarScreen> createState() => _CircularSeekbarScreenState();
}

class _CircularSeekbarScreenState extends State<CircularSeekbarScreen> {


  final ValueNotifier<double> _valueNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
        
          child: SingleChildScrollView(
            child: Column(
              children: [
        
                buildSimpleCircularSeekBar(),
                SizedBox(
                  height: 10,
                ),

                buildGradientCircularSeekBar() ,
                SizedBox(
                  height: 10,
                ),
                buildDashedCircularSeekBar(),


                buildCircularSeekBar2(),

                buildCircularSeekBar3(),


                CircularSeekBar(
                  width: double.infinity,
                  height: 250,
                  progress: 100,
                  barWidth: 8,
                  startAngle: 45,
                  sweepAngle: 270,
                  strokeCap: StrokeCap.butt,
                  progressGradientColors: const [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.blue, Colors.indigo, Colors.purple],
                  innerThumbRadius: 5,
                  innerThumbStrokeWidth: 3,
                  innerThumbColor: Colors.white,
                  outerThumbRadius: 5,
                  outerThumbStrokeWidth: 10,
                  outerThumbColor: Colors.blueAccent,
                  dashWidth: 1,
                  dashGap: 2,
                  animation: true,
                  valueNotifier: _valueNotifier,
                  child: Center(
                    child: ValueListenableBuilder(
                        valueListenable: _valueNotifier,
                        builder: (_, double value, __) => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('${value.round()}'),
                            Text('progress',),
                          ],
                        )),
                  ),
                ),

                CircularSeekBar(
                  width: double.infinity,
                  height: 250,
                  progress: 100,
                  barWidth: 8,
                  startAngle: 45,
                  sweepAngle: 270,
                  strokeCap: StrokeCap.butt,
                  progressGradientColors: const [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.blue, Colors.indigo, Colors.purple],
                  innerThumbRadius: 5,
                  innerThumbStrokeWidth: 3,
                  innerThumbColor: Colors.white,
                  outerThumbRadius: 5,
                  outerThumbStrokeWidth: 10,
                  outerThumbColor: Colors.blueAccent,
                  dashWidth: 1,
                  dashGap: 2,
                  animation: true,
                  curves: Curves.bounceOut,
                  valueNotifier: _valueNotifier,
                  child: Center(
                    child: ValueListenableBuilder(
                        valueListenable: _valueNotifier,
                        builder: (_, double value, __) => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('${value.round()}'),
                            Text('progress'),
                          ],
                        )),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }

  CircularSeekBar buildCircularSeekBar3() {
    return CircularSeekBar(
                width: double.infinity,
                height: 150,
                progress: 70,
                barWidth: 8,
                startAngle: 45,
                sweepAngle: 270,
                strokeCap: StrokeCap.butt,
                progressGradientColors: const [Colors.blue, Colors.indigo, Colors.purple],
                dashWidth: 1,
                dashGap: 2,
                animation: true,
              );
  }

  CircularSeekBar buildCircularSeekBar2() {
    return CircularSeekBar(
                width: double.infinity,
                height: 150,
                progress: 100,
                barWidth: 8,
                startAngle: 45,
                sweepAngle: 270,
                strokeCap: StrokeCap.round,
                progressGradientColors: const [Colors.blue, Colors.indigo, Colors.purple],
                dashWidth: 80,
                dashGap: 15,
                animation: true,
              );
  }

  CircularSeekBar buildDashedCircularSeekBar() {
    return CircularSeekBar(
                width: double.infinity,
                height: 150,
                progress: 100,
                barWidth: 8,
                startAngle: 90,
                sweepAngle: 180,
                strokeCap: StrokeCap.round,
                progressGradientColors: const [Colors.blue, Colors.indigo, Colors.purple],
                dashWidth: 50,
                dashGap: 15,
                animation: true,
              );
  }

  CircularSeekBar buildGradientCircularSeekBar() {
    return CircularSeekBar(
                width: double.infinity,
                height: 150,
                progress: 360,
                barWidth: 8,
                startAngle: 45,
                sweepAngle: 270,
                strokeCap: StrokeCap.round,
                progressGradientColors: const [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.blue, Colors.indigo, Colors.purple],
                innerThumbRadius: 5,
                innerThumbStrokeWidth: 3,
                innerThumbColor: Colors.white,
                outerThumbRadius: 5,
                outerThumbStrokeWidth: 10,
                outerThumbColor: Colors.blueAccent,
                animation: true,
              );
  }

  CircularSeekBar buildSimpleCircularSeekBar() {
    return CircularSeekBar(
                width: double.infinity,
                height: 150,
                progress: 100,
                barWidth: 8,
                startAngle: 90,
                sweepAngle: 270,
                strokeCap: StrokeCap.butt,
                progressColor: Colors.blue,
                innerThumbRadius: 5,
                innerThumbStrokeWidth: 3,
                innerThumbColor: Colors.white,
                outerThumbRadius: 5,
                outerThumbStrokeWidth: 10,
                outerThumbColor: Colors.red,
                animation: true,
              );
  }
}
