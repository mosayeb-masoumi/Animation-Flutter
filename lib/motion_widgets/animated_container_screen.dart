import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() => _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double _width = 100.0;
  double _height = 100.0;
  Color _color = Colors.blue;

  void _changeProperties() {
    setState(() {
      _width = _width == 100.0 ? 200.0 : 100.0; // Toggle width
      _height = _height == 100.0 ? 200.0 : 100.0; // Toggle height
      _color = _color == Colors.blue ? Colors.red : Colors.blue; // Toggle color
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              color: _color,
              alignment: Alignment.center,
              duration: Duration(seconds: 1), // Duration of the animation
              curve: Curves.easeInOut, // Animation curve
              child: Text(
                'Tap the button!',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20), // Spacer
            ElevatedButton(
              onPressed: _changeProperties,
              child: Text('Change Properties'),
            ),
          ],
        ),
      ),
    );
  }
}