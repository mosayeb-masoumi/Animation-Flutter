
import 'package:flutter/material.dart';

class AlignmentTransitionScreen extends StatefulWidget {
  const AlignmentTransitionScreen({super.key});

  @override
  State<AlignmentTransitionScreen> createState() => _AlignmentTransitionScreenState();
}

class _AlignmentTransitionScreenState extends State<AlignmentTransitionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlignTransitionDemo() ,
    );
  }
}

class AlignTransitionDemo extends StatefulWidget {
  @override
  _AlignTransitionDemoState createState() => _AlignTransitionDemoState();
}

class _AlignTransitionDemoState extends State<AlignTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _alignment;

  @override
  void initState() {
    super.initState();
    // _controller = AnimationController(
    //   duration: const Duration(seconds: 2),
    //   vsync: this,
    // )..repeat(reverse: true);


    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();


    _alignment = Tween<Alignment>(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlignTransition Example'),
      ),
      body: Center(
        child: AlignTransition(
          alignment: _alignment,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
