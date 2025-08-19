
import 'dart:async';

import 'package:flutter/material.dart';

mixin SnackbarSliderMixin<T extends StatefulWidget> on State<T> {

  double _sliderValue = 100;
  Timer? _timer;
  final int durationInSeconds = 3; // Duration in seconds

  void showSnackbarWithSlider() {
    // Reset the slider value
    // setState(() {
    //   _sliderValue = 100;
    // });

    // int totalTicks = durationInSeconds * 1000 ~/ 30; // 1000 ms / 30 ms per tick
    int totalTicks = (3 * 1000 / 300).round();

    // Calculate decrement value per tick
    double decrementValue = 100 / totalTicks;
    var a = decrementValue;


    // Start the timer to decrease the value
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        if (_sliderValue > 0) {
          // _sliderValue -= (100 / 100); // Decrease by 1 every 30 milliseconds
          _sliderValue -= decrementValue ; // Decrease to 0 over 3 seconds

          print("=======decrementValue>$decrementValue");
          print("======= _sliderValue >$_sliderValue");
        } else {
          // Stop the timer when the value reaches 0
          _sliderValue = 0; // Ensure the value is exactly 0
          timer.cancel();
        }
      });
    });

    // Show the Snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              onChanged: (value) {
                // Optionally, you can allow the user to change the slider value
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Text('${_sliderValue.toInt()}'), // Display the current value
          ],
        ),
        duration: Duration(seconds: 3), // Duration of the Snackbar
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(top: 50.0, left: 10.0, right: 10.0 , bottom: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // Dismiss the Snackbar after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      _timer?.cancel(); // Cancel the timer
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when disposing
    super.dispose();
  }

}