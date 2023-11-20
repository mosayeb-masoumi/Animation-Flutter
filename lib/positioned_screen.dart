import 'package:flutter/material.dart';

class PositionedScreen extends StatefulWidget {
  const PositionedScreen({Key? key}) : super(key: key);

  @override
  State<PositionedScreen> createState() => _PositionedScreenState();
}

class _PositionedScreenState extends State<PositionedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Positioned(
                 left: 20,
                  top: 20,
                  child: Image.asset("assets/images/beach.jpeg" ,width: 200, height: 200,)),

              Positioned(
                  left: 60,
                  top: 120,
                  child: Image.asset("assets/images/beach.jpeg" ,width: 200, height: 200,)),

              Positioned(
                  left: 100,
                  top: 220,
                  child: Image.asset("assets/images/beach.jpeg" ,width: 200, height: 200,))
            ],
          ),
        ),
      ),
    );
  }
}
