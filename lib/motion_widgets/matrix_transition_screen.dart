
import 'dart:math';

import 'package:flutter/material.dart';

class MatrixTransitionExample extends StatefulWidget {
  const MatrixTransitionExample({super.key});

  @override
  State<MatrixTransitionExample> createState() => _MatrixTransitionExampleState();
}

class _MatrixTransitionExampleState extends State<MatrixTransitionExample>  with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    // Initialize the AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    // Create an animation that goes from 0.0 to 1.0
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose(); // Clean up the controller
    super.dispose();
  }

  void _toggleAnimation() {
    // Toggle the animation between forward and reverse
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MatrixTransition Example'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            // Create a matrix transformation
            final scale = 1 + (_animation.value * 0.5); // Scale from 1.0 to 1.5
            final rotation = _animation.value * 2 * pi; // Rotate from 0 to π radians

            // Create the transformation matrix
            final matrix = Matrix4.identity()
              ..translate(0.0, 0.0) // No translation
              ..rotateZ(rotation) // Apply rotation
              ..scale(scale); // Apply scaling

            return Transform(
              transform: matrix,
              alignment: Alignment.center,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text(
                  'Transform Me!',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleAnimation,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}