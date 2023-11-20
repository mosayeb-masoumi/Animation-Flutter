
import 'dart:ui';
import 'package:flutter/material.dart';

class BackDropFilter1 extends StatefulWidget {
  const BackDropFilter1({super.key});

  @override
  State<BackDropFilter1> createState() => _BackDropFilter1State();
}

class _BackDropFilter1State extends State<BackDropFilter1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              height: 400,
              decoration: const BoxDecoration(
                  color: Colors.orange,
                shape: BoxShape.circle
              ),
            ),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(top: 250),
              height: 400,
              decoration: const BoxDecoration(
                  color: Colors.deepPurple,
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: Container(
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
            )
          ],
        ),
      ),
    );
  }
}

