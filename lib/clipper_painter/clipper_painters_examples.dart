import 'package:flutter/material.dart';
import 'package:flutter_animation/clipper_painter/clipper_example1.dart';
import 'package:flutter_animation/clipper_painter/clipper_example2.dart';
import 'package:flutter_animation/clipper_painter/clipper_example3.dart';

class ClipPaintersExamples extends StatelessWidget {
  const ClipPaintersExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ClipperExample1()),
            );
          }, child: Text("Clipper example 1")),

          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ClipperExample2()),
            );
          }, child: Text("Clipper example 2")),

          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ClipperExample3()),
            );
          }, child: Text("Clipper example 3"))
        ],
      ),
    );
  }
}

