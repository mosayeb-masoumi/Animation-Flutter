import 'package:flutter/material.dart';

class ClipperExample1 extends StatefulWidget {
  const ClipperExample1({super.key});

  @override
  State<ClipperExample1> createState() => _ClipperExample1State();
}

class _ClipperExample1State extends State<ClipperExample1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipPath(
              clipper: Clip1Clipper(),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.orange,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ClipPath(
              clipper: Clip2Clipper(),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.orange,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ClipPath(
              clipper: Clip3Clipper(),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Clip1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

class Clip2Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(size.width, 0, 0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

class Clip3Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(0, size.height, 0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
