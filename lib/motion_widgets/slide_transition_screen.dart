
import 'package:flutter/material.dart';

class SlideTransitionScreen extends StatefulWidget {
  const SlideTransitionScreen({super.key});

  @override
  State<SlideTransitionScreen> createState() => _SlideTransitionScreenState();
}

class _SlideTransitionScreenState extends State<SlideTransitionScreen> with SingleTickerProviderStateMixin  {

  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    // Initialize the AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    // Create an animation that slides in from the left
    _animation = Tween<Offset>(
      begin: Offset(-1.0, 0.0), // Start off-screen to the left
      end: Offset.zero, // End at the original position
    ).animate(CurvedAnimation(
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
      _controller.reverse(); // Slide out
    } else {
      _controller.forward(); // Slide in
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SlideTransition Example'),
      ),
      body: Center(
        child: SlideTransition(
          position: _animation,
          child: Container(
            width: 200,
            height: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(
              'Slide Me!',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleAnimation,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}