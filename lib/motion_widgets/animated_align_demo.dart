
import 'package:flutter/material.dart';

class AnimatedAlignDemo extends StatefulWidget {
  const AnimatedAlignDemo({super.key});

  @override
  State<AnimatedAlignDemo> createState() => _AnimatedAlignDemoState();
}

class _AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
  Alignment _alignment = Alignment.topLeft; // Initial alignment

  void _toggleAlignment() {
    setState(() {
      // Toggle between top-left and bottom-right
      if (_alignment == Alignment.topLeft) {
        _alignment = Alignment.bottomRight;
      } else {
        _alignment = Alignment.topLeft;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedAlign Example'),
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: _alignment,
            duration: Duration(seconds: 1), // Duration of the animation
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: ElevatedButton(
              onPressed: _toggleAlignment,
              child: Text('Toggle Position'),
            ),
          ),
        ],
      ),
    );
  }
}