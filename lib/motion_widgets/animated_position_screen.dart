import 'package:flutter/material.dart';

class AnimatedPositionScreen extends StatefulWidget {
  const AnimatedPositionScreen({super.key});

  @override
  State<AnimatedPositionScreen> createState() => _AnimatedPositionScreenState();
}

class _AnimatedPositionScreenState extends State<AnimatedPositionScreen> {
  double _top = 100.0; // Initial vertical position
  double _left = 100.0; // Initial horizontal position

  void _moveBox() {
    setState(() {
      // Toggle position values to move the box
      if (_top == 100.0) {
        _top = 300.0; // Move down
        _left = 200.0; // Move right
      } else {
        _top = 100.0; // Move up
        _left = 100.0; // Move left
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPositioned Example'),
      ),
      body: Stack(
        children: [
          // Use AnimatedPositioned to animate the box's position
          AnimatedPositioned(
            top: _top,
            left: _left,
            duration: Duration(seconds: 1), // Animation duration
            curve: Curves.easeInOut, // Animation curve
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _moveBox,
        tooltip: 'Move Box',
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}