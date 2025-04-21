import 'package:flutter/material.dart';

class ClipperExample3 extends StatefulWidget {
  const ClipperExample3({super.key});

  @override
  State<ClipperExample3> createState() => _ClipperExample3State();
}

class _ClipperExample3State extends State<ClipperExample3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: ClipPath(
          // Define a custom path to clip the child
          clipper: MyClipper(),
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.orange, Colors.white, Colors.green],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: Text(
                'ClipPath',
                style: TextStyle(
                  color: const Color.fromARGB(255, 117, 95, 95),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Define a custom path to create a stylish clipped shape
    var path = Path();
    path.moveTo(0, size.height * 0.5);
    path.lineTo(size.width * 0.2, 0);
    path.lineTo(size.width * 0.8, 0);
    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width * 0.8, size.height);
    path.lineTo(size.width * 0.2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}


