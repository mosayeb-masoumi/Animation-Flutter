import 'package:flutter/material.dart';

class ClipperExample2 extends StatefulWidget {
  const ClipperExample2({super.key});

  @override
  State<ClipperExample2> createState() => _ClipperExample2State();
}

class _ClipperExample2State extends State<ClipperExample2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: ClipPath(
          clipper: CustomShape(),
          child: Container(
            color: Colors.blue, // This is the widget that will be clipped
          ),
        ),
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height/2;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height - 150);
    path.quadraticBezierTo(width / 2, height, width, height - 150);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
