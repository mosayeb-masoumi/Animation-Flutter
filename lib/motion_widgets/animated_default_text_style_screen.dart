import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleScreen extends StatefulWidget {
  const AnimatedDefaultTextStyleScreen({super.key});

  @override
  State<AnimatedDefaultTextStyleScreen> createState() => _AnimatedDefaultTextStyleScreenState();
}

class _AnimatedDefaultTextStyleScreenState extends State<AnimatedDefaultTextStyleScreen> {
  bool _isLargeText = false;

  void _toggleTextStyle() {
    setState(() {
      _isLargeText = !_isLargeText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedDefaultTextStyle Example'),
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          duration: const Duration(seconds: 1),
          style: _isLargeText
              ? TextStyle(fontSize: 40, color: Colors.blue, fontWeight: FontWeight.bold)
              : TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.normal),
          child: const Text('Hello, Flutter!'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleTextStyle,
        tooltip: 'Toggle Text Style',
        child: Icon(Icons.text_fields),
      ),
    );
  }
}