
import 'dart:math';

import 'package:drawing_animation/drawing_animation.dart';
import 'package:flutter/material.dart';

class DrawingAnimationPage extends StatefulWidget {
  const DrawingAnimationPage({Key? key}) : super(key: key);

  @override
  State<DrawingAnimationPage> createState() => _DrawingAnimationPageState();
}

class _DrawingAnimationPageState extends State<DrawingAnimationPage> {
  bool run = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: AnimatedDrawing.svg(
        "images/G.svg",
        run: this.run,
        duration: new Duration(seconds: 3),
        onFinish: () => setState(() {
          this.run  = false;
        }),
      ));

  }
}