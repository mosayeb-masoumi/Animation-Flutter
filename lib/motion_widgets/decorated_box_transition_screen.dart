
import 'package:flutter/material.dart';

class DecoratedBoxTransitionScreen extends StatefulWidget {
  const DecoratedBoxTransitionScreen({super.key});

  @override
  State<DecoratedBoxTransitionScreen> createState() => _DecoratedBoxTransitionScreenState();
}

class _DecoratedBoxTransitionScreenState extends State<DecoratedBoxTransitionScreen> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleAnimation() {
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DecoratedBoxTransition(
          decoration: DecorationTween(
            begin: BoxDecoration(color: Colors.blue),
            end: BoxDecoration(color: Colors.red),
          ).animate(_controller),
          child: Container(
            width: 200,
            height: 200,
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _toggleAnimation,
          child: Text('Toggle Color'),
        ),
      ],
    );
  }
}