import 'package:circle_list/circle_list.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CircleListMenuPage extends StatefulWidget {
  const CircleListMenuPage({super.key});

  @override
  State<CircleListMenuPage> createState() => _CircleListMenuPageState();
}

class _CircleListMenuPageState extends State<CircleListMenuPage> {
  List<String> items = [
    'assets/images/apple2.png',
    'assets/images/beach.jpeg',
    'assets/images/card_bg.jpg',
    'assets/images/city.jpeg',
    'assets/images/image1.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
    'assets/images/photo_eraser.png',
  ];

  int currentIndex = 0;

  final double radius = 200.0; // Radius of the circle

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Center(
          child: CircleList(
            rotateMode: RotateMode.allRotate,
            origin: Offset(0, 0),
            showInitialAnimation: false,
            outerCircleColor: Colors.red,
            innerCircleColor: Colors.greenAccent,

            // onDragUpdate: (updateCoord) {
            //    var a = 5;
            // },

            children: items.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;

              return GestureDetector(
                onTap: () {},
                child: Container(
                    width: 70,
                    height: 70,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          child: Container(
                            color: Colors.blueGrey,
                          ),
                          // child: Image.asset(item , fit: BoxFit.fill,)
                        ),
                        Center(child: Text("Item"))
                      ],
                    )),
              );
            }).toList(),
            centerWidget: GestureDetector(
              onTap: () {},
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(70)),
                  child: Image.asset(
                    "assets/images/apple2.png",
                    scale: 1.30,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
