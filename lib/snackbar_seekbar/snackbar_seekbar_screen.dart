
import 'dart:async';

import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation/snackbar_seekbar/snackbar_mixin.dart';

class SnackbarSeekbarScreen extends StatefulWidget {
  const SnackbarSeekbarScreen({super.key});

  @override
  State<SnackbarSeekbarScreen> createState() => _SnackbarSeekbarScreenState();
}

class _SnackbarSeekbarScreenState extends State<SnackbarSeekbarScreen> with SnackbarSliderMixin<SnackbarSeekbarScreen>{

  double _sliderValue = 100;
  Timer? _timer;

  void startSliderDecrease() {
    // Reset the slider value
    setState(() {
      _sliderValue = 100;
    });

    // Number of intervals (30 ms) over 3 seconds
    int totalIntervals = (3 * 1000 / 30).round();
    double decrementValue = 100 / totalIntervals;

    // Start the timer to decrease the value
    _timer = Timer.periodic(Duration(milliseconds: 30), (timer) {
      setState(() {
        if (_sliderValue > 0) {
          _sliderValue -= decrementValue; // Decrease by calculated value
          // Ensure the value does not go below 0
          if (_sliderValue < 0) {
            _sliderValue = 0;
          }
        } else {
          // Stop the timer when the value reaches 0
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when disposing
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey,
              child: Column(
                children: [
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Colors.grey ,// Hide the thumb
                      activeTrackColor: Colors.green, // Color of the active part of the track
                      inactiveTrackColor: Colors.transparent, // Color of the inactive part of the track
                      trackHeight: 4,
                      thumbSelector: null,
                      secondaryActiveTrackColor: Colors.transparent,
                      overlappingShapeStrokeColor: Colors.transparent,
                      overlayColor: Colors.transparent,
                      inactiveTickMarkColor: Colors.transparent,
                      disabledInactiveTrackColor: Colors.transparent,
                      valueIndicatorStrokeColor: Colors.transparent,
                      valueIndicatorColor: Colors.transparent,

                      disabledThumbColor:Colors.transparent // Height of the track
                    ),
                    child: Slider(
                      value: _sliderValue,
                      min: 0,
                      max: 100,
                      // thumbColor: null,
                      //
                      // activeColor: Colors.green,
                      onChanged: (value) {
                        // Optionally allow the user to change the slider value
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                    ),
                  ),
                  Text('${_sliderValue.toInt()}'), // Display the current value
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: startSliderDecrease,
              child: Text('Start Decrease from 100 to 0'),
              // child: CircularSeekBar(width: 20, height: 10),
            ),
          ],
        ),
      ),
    );
  }
}
