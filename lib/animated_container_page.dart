import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool isSmall = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSmall = !isSmall;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
            width: isSmall ? 50 : 200,
            height: 50,
            child: isSmall ? buildShrinked() : buildStretched(),
          ),
        ),
      )),
    );
  }

  Widget buildStretched() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(24)),
      child: Center(
        child: FittedBox(
          child: Text(
            "Follow",
            style: TextStyle(
                color: Colors.red,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  Widget buildShrinked() {
    return Container(
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(25)),
        child: Icon(
          Icons.people,
          color: Colors.white,
        ));
  }
}
