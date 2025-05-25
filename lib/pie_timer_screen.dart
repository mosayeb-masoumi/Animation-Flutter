
import 'package:flutter/material.dart';
import 'package:pie_timer/pie_timer.dart';

class PieTimerScreen extends StatefulWidget {
  const PieTimerScreen({super.key});

  @override
  State<PieTimerScreen> createState() => _PieTimerScreenState();
}

class _PieTimerScreenState extends State<PieTimerScreen> with SingleTickerProviderStateMixin {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            PieTimer(
              duration: const Duration(seconds: 10),
              countdownPassed: const Duration(seconds: 0),
              radius: 150,
              fillColor: Colors.red,
              pieColor: Colors.black,
              borderColor: Colors.yellow,
              borderWidth: 15,
              shadowColor: Colors.black,
              shadowElevation: 10.0,
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              isReverse: false,
              onCompleted: () => {},
              onDismissed: () => {},
              enableTouchControls: true, // Enable to control the timer with touches
              pauseIcon: Icons.pause,
              pauseIconColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

