
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:loading_animations/loading_animations.dart';

class LoadingAnimationExample extends StatefulWidget {
  const LoadingAnimationExample({super.key});

  @override
  State<LoadingAnimationExample> createState() => _LoadingAnimationExampleState();
}

class _LoadingAnimationExampleState extends State<LoadingAnimationExample> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                LoadingBumpingLine.circle(size: 30, backgroundColor: Colors.red,),
                LoadingBumpingLine.square(size: 30, backgroundColor: Colors.blue,),
                LoadingFadingLine.circle(size: 30, backgroundColor: Colors.red,),
                LoadingFadingLine.square(size: 30, backgroundColor: Colors.blue,),
                LoadingFadingLine.square(size: 30, backgroundColor: Colors.red,),
                LoadingBouncingLine.circle(size: 30, backgroundColor: Colors.blue,),
                LoadingBouncingLine.square(size: 30, backgroundColor: Colors.blue,),
                LoadingJumpingLine.circle(size: 30, backgroundColor: Colors.red,),
                LoadingJumpingLine.square(size: 30, backgroundColor: Colors.red,),
                LoadingFlipping.circle(size: 30, borderColor: Colors.blue,),
                LoadingFlipping.square(size: 30, borderColor: Colors.blue,),
                LoadingRotating.square(size: 30, borderColor: Colors.red,),
                LoadingFilling.square(size: 30, borderColor: Colors.red, fillingColor: Colors.blue,),
                LoadingDoubleFlipping.circle(size: 30, backgroundColor: Colors.red,),
                LoadingDoubleFlipping.square(size: 30, backgroundColor: Colors.blue,),
                LoadingBouncingGrid.circle(size: 30, backgroundColor: Colors.red,),
                LoadingBouncingGrid.square(size: 30, backgroundColor: Colors.blue,),

                LoadingAnimationWidget.beat(color: Colors.red, size: 50),
                LoadingAnimationWidget.bouncingBall(color: Colors.blue, size: 50),
                LoadingAnimationWidget.discreteCircle(color: Colors.green, size: 50),
                LoadingAnimationWidget.dotsTriangle(color: Colors.red, size: 50),
                LoadingAnimationWidget.fallingDot(color: Colors.blue, size: 50),
                LoadingAnimationWidget.flickr(leftDotColor: Colors.yellow, rightDotColor: Colors.red, size: 50),
                LoadingAnimationWidget.fourRotatingDots(color: Colors.red, size: 50),
                LoadingAnimationWidget.halfTriangleDot(color: Colors.blue, size: 50),
                LoadingAnimationWidget.hexagonDots(color: Colors.red, size: 50),
                LoadingAnimationWidget.horizontalRotatingDots(color: Colors.blue, size: 50),
                LoadingAnimationWidget.inkDrop(color: Colors.red, size: 50),
                LoadingAnimationWidget.newtonCradle(color: Colors.blue, size: 50),
                LoadingAnimationWidget.prograssiveDots(color: Colors.red, size: 50),
                LoadingAnimationWidget.staggeredDotsWave(color: Colors.blue, size: 50),
                LoadingAnimationWidget.stretchedDots(color: Colors.red, size: 50),
                LoadingAnimationWidget.threeArchedCircle(color: Colors.blue, size: 50),
                LoadingAnimationWidget.threeRotatingDots(color: Colors.red, size: 50),
                LoadingAnimationWidget.twistingDots(leftDotColor: Colors.red, rightDotColor: Colors.blue, size: 50),
                LoadingAnimationWidget.twoRotatingArc(color: Colors.red, size: 50),
                LoadingAnimationWidget.waveDots(color: Colors.blue, size: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
