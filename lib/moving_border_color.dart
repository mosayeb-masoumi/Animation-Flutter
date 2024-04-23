import 'package:flutter/material.dart';
import 'package:animated_loading_border/animated_loading_border.dart';

class MovingColorPage extends StatefulWidget {
  @override
  _MovingColorPageState createState() => _MovingColorPageState();
}

class _MovingColorPageState extends State<MovingColorPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedLoadingBorder(
                borderColor: Colors.red,
                cornerRadius: 10,
                borderWidth: 3,
                duration: Duration(seconds: 2),
                child: Container(
                  width: 100,
                  height: 50,
                ),
                controller: (animationController) {
                  // Here we get animationController
                },
              ),
              TweenAnimationBuilder(
                duration: const Duration(seconds: 5),
                tween: Tween(begin: 100.0, end: 50.0),
                builder: (context, value, child) => Center(
                    child: Text('here you are',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.red, fontSize: value))),
              ),
            ],
          )),
    );
  }
}
