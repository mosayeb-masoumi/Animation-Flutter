
import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() => _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen>
    with TickerProviderStateMixin{
  late AnimationController _controllerA;
  late Animation<double> _animationA;

  late AnimationController _controllerB;
  late Animation<double> _animationB;

  @override
  void initState() {
    super.initState();

    // Create an AnimationController with a duration of 1 second
    _controllerA = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _controllerB = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    // Define a Tween to animate the width from 0 to 100
    _animationA = Tween<double>(begin: 0, end: 150).animate(_controllerA);
    _animationB = Tween<double>(begin: 0, end: 250).animate(_controllerB);

    // Start the animation
    _controllerA.forward();
    _controllerB.forward();
  }

  @override
  void dispose() {
    _controllerA.dispose(); // Clean up the controller
    _controllerB.dispose(); // Clean up the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                AnimatedBuilder(
                  animation: _animationA,
                  builder: (context, child) {
                    return Container(
                      height: 20,
                      width: _animationA.value, // Use the animated width
                      color: Colors.blue,
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                AnimatedBuilder(
                  animation: _animationB,
                  builder: (context, child) {
                    return Container(
                      height: 20,
                      width: _animationB.value, // Use the animated width
                      color: Colors.red,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
